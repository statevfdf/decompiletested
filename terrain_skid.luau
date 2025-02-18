local TERRAIN = workspace.Terrain
local VOXEL_RESOLUTION = 4
local CHUNK_SIZE = 1000
local terrainSize = TERRAIN.ExtentsSize
local regionMin = Vector3.new(-terrainSize.X / 2, 0, -terrainSize.Z / 2)
local regionMax = Vector3.new(terrainSize.X / 2, terrainSize.Y, terrainSize.Z / 2)
local TerrainData = {}
local TableCoder = {}

local function serialize(value)
	local valueType = typeof(value)
	if valueType == "number" or valueType == "boolean" then
		return tostring(value)
	elseif valueType == "string" then
		return string.format("%q", value)
	elseif valueType == "Vector3" then
		return string.format("Vector3.new(%.10f, %.10f, %.10f)", value.X, value.Y, value.Z)
	elseif valueType == "CFrame" then
		local x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22 = value:GetComponents()
		return string.format(
			"CFrame.new(%.10f, %.10f, %.10f, %.10f, %.10f, %.10f, %.10f, %.10f, %.10f, %.10f, %.10f, %.10f)",
			x, y, z, r00, r01, r02, r10, r11, r12, r20, r21, r22
		)
	elseif valueType == "Color3" then
		return string.format("Color3.new(%.10f, %.10f, %.10f)", value.r, value.g, value.b)
	elseif valueType == "Region3" then
		return string.format("Region3.new(%s, %s)", serialize(value.Min), serialize(value.Max))
	elseif valueType == "table" then
		local result = "{"
		for k, v in pairs(value) do
			game:GetService("RunService").RenderStepped:Wait();
			result = result .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ","
		end
		return result .. "}"
	else
		error("Unsupported type in serialization: " .. tostring(valueType))
	end
end
function TableCoder.Encode(tbl)
	return serialize(tbl)
end
local Parser = {}
Parser.__index = Parser
function Parser.new(str)
	local self = setmetatable({}, Parser)
	self.str = str
	self.pos = 1
	self.len = #str
	return self
end
function Parser:skipWhitespace()
	while self.pos <= self.len do
		local c = self.str:sub(self.pos, self.pos)
		if not c:match("[%s]") then break end
		self.pos = self.pos + 1
	end
end
function Parser:peek()
	return self.str:sub(self.pos, self.pos)
end
function Parser:match(pattern)
	local s, e, cap = self.str:find("^(" .. pattern .. ")", self.pos)
	if s then
		self.pos = e + 1
		return cap or self.str:sub(s, e)
	end
	return nil
end
function Parser:expect(char)
	self:skipWhitespace()
	local current = self:peek()
	if current ~= char then
		error("Expected '"..char.."' but found '"..current.."' at position " .. self.pos)
	end
	self.pos = self.pos + 1
end
function Parser:parseValue()
	self:skipWhitespace()
	local char = self:peek()

	if char == "{" then
		return self:parseTable()
	elseif char == "\"" or char == "\'" then
		return self:parseString()
	elseif char:match("[%-0-9]") then
		return self:parseNumber()
	elseif char:match("[A-Za-z]") then
		return self:parseIdentifierOrFunctionCall()
	else
		error("Unexpected character '"..char.."' at position " .. self.pos)
	end
end
function Parser:parseNumber()
	self:skipWhitespace()
	local pattern = "[%-]?%d+%.?%d*[eE]?[%-+]?%d*"
	local s, e = self.str:find("^(" .. pattern .. ")", self.pos)
	if not s then
		error("Expected number at position " .. self.pos)
	end
	local numStr = self.str:sub(s, e)
	self.pos = e + 1
	local num = tonumber(numStr)
	if not num then error("Invalid number: " .. numStr) end
	return num
end
function Parser:parseString()
	self:skipWhitespace()
	local quote = self:peek()
	if quote ~= "\"" and quote ~= "\'" then
		error("Expected string at position " .. self.pos)
	end
	self.pos = self.pos + 1  -- Skip the opening quote
	local result = ""
	while self.pos <= self.len do
		local char = self.str:sub(self.pos, self.pos)
		if char == "\\" then
			self.pos = self.pos + 1
			if self.pos > self.len then
				error("Unexpected end of string in escape sequence")
			end
			local escape = self.str:sub(self.pos, self.pos)
			if escape == "n" then result = result .. "\n"
			elseif escape == "r" then result = result .. "\r"
			elseif escape == "t" then result = result .. "\t"
			elseif escape == "\\" then result = result .. "\\"
			elseif escape == "\"" then result = result .. "\""
			elseif escape == "\'" then result = result .. "\'" 
			else result = result .. escape end
			self.pos = self.pos + 1
		elseif char == quote then
			self.pos = self.pos + 1  -- Skip the closing quote
			return result
		else
			result = result .. char
			self.pos = self.pos + 1
		end
	end
	error("Unterminated string starting at position " .. self.pos)
end
function Parser:parseIdentifierOrFunctionCall()
	self:skipWhitespace()
	local id = self:match("%a[%w_]*")
	if not id then
		error("Expected identifier at position " .. self.pos)
	end
	-- Check for booleans.
	if id == "true" then return true end
	if id == "false" then return false end

	self:skipWhitespace()
	local nextChar = self:peek()
	if nextChar == "." then
		return self:parseFunctionCall(id)
	else
		error("Unexpected identifier '"..id.."' at position " .. self.pos)
	end
end
function Parser:parseFunctionCall(prefix)
	self:expect(".")
	local method = self:match("%a[%w_]*")
	if method ~= "new" then
		error("Expected 'new' after '.', got '"..tostring(method).."' at position " .. self.pos)
	end
	self:skipWhitespace()
	self:expect("(")
	local args = {}
	self:skipWhitespace()
	if self:peek() ~= ")" then
		while true do
			local arg = self:parseValue()
			table.insert(args, arg)
			self:skipWhitespace()
			local ch = self:peek()
			if ch == "," then
				self.pos = self.pos + 1
			elseif ch == ")" then
				break
			else
				error("Expected ',' or ')' in argument list at position " .. self.pos)
			end
			self:skipWhitespace()
		end
	end
	self:expect(")")
	if prefix == "Vector3" then
		if #args ~= 3 then error("Vector3.new expects 3 arguments") end
		return Vector3.new(args[1], args[2], args[3])
	elseif prefix == "CFrame" then
		if #args ~= 12 then error("CFrame.new expects 12 arguments") end
		return CFrame.new(
			args[1], args[2], args[3],
			args[4], args[5], args[6],
			args[7], args[8], args[9],
			args[10], args[11], args[12]
		)
	elseif prefix == "Color3" then
		if #args ~= 3 then error("Color3.new expects 3 arguments") end
		return Color3.new(args[1], args[2], args[3])
	elseif prefix == "Region3" then
		if #args ~= 2 then error("Region3.new expects 2 arguments") end
		return Region3.new(args[1], args[2])
	else
		error("Unsupported constructor: " .. prefix)
	end
end
function Parser:parseTable()
	self:skipWhitespace()
	self:expect("{")
	local tbl = {}
	self:skipWhitespace()
	while self.pos <= self.len and self:peek() ~= "}" do
		self:skipWhitespace()
		-- Table entries are always in the format: [ key ] = value
		self:expect("[")
		local key = self:parseValue()
		self:skipWhitespace()
		self:expect("]")
		self:skipWhitespace()
		self:expect("=")
		local value = self:parseValue()
		tbl[key] = value
		self:skipWhitespace()
		if self:peek() == "," then
			self.pos = self.pos + 1
		end
		self:skipWhitespace()
	end
	self:expect("}")
	return tbl
end
function TableCoder.Decode(str)
	local parser = Parser.new(str)
	local result = parser:parseValue()
	parser:skipWhitespace()
	if parser.pos <= parser.len then
		error("Extra unexpected characters at position " .. parser.pos)
	end
	return result
end

local dictionary, length = {}, 0
for i = 32, 127 do
	if i ~= 34 and i ~= 92 then
		local c = string.char(i)
		dictionary[c], dictionary[length] = length, c
		length = length + 1
	end
end

local escapemap = {}
for i = 1, 34 do
	i = ({34, 92, 127})[i-31] or i
	local c, e = string.char(i), string.char(i + 31)
	escapemap[c], escapemap[e] = e, c
end
local function escape(s)
	return (s:gsub("[%c\"\\]", function(c)
		return "\127"..escapemap[c]
	end))
end

local function unescape(s)
	return (s:gsub("\127(.)", function(c)
		return escapemap[c]
	end))
end

local function copy(t)
	local new = {}
	for k, v in pairs(t) do
		new[k] = v
	end
	return new
end

local function tobase93(n)
	local value = ""
	repeat
		local remainder = n%93
		value = dictionary[remainder]..value
		n = (n - remainder)/93
	until n == 0
	return value
end

local function tobase10(value)
	local n = 0
	for i = 1, #value do
		n = n + 93^(i-1)*dictionary[value:sub(-i, -i)]
	end
	return n
end

local function compress(text)
	local dictionary = copy(dictionary)
	local key, sequence, size = "", {}, #dictionary
	local width, spans, span = 1, {}, 0
	local function listkey(key)
		local value = tobase93(dictionary[key])
		if #value > width then
			width, span, spans[width] = #value, 0, span
		end
		sequence[#sequence+1] = (" "):rep(width - #value)..value
		span = span + 1
	end
	text = escape(text)
	for i = 1, #text do
		local c = text:sub(i, i)
		local new = key..c
		if dictionary[new] then
			key = new
		else
			listkey(key)
			key, size = c, size+1
			dictionary[new], dictionary[size] = size, new
		end
		game:GetService("RunService").RenderStepped:Wait();
	end
	listkey(key)
	spans[width] = span
	return table.concat(spans, ",").."|"..table.concat(sequence)
end

local function decompress(text)
	local dictionary = copy(dictionary)
	local sequence, spans, content = {}, text:match("(.-)|(.*)")
	local groups, start = {}, 1
	for span in spans:gmatch("%d+") do
		local width = #groups+1
		groups[width] = content:sub(start, start + span*width - 1)
		start = start + span*width
	end
	local previous;
	for width = 1, #groups do
		for value in groups[width]:gmatch(('.'):rep(width)) do
			local entry = dictionary[tobase10(value)]
			if previous then
				if entry then
					sequence[#sequence+1] = entry
					dictionary[#dictionary+1] = previous..entry:sub(1, 1)
				else
					entry = previous..previous:sub(1, 1)
					sequence[#sequence+1] = entry
					dictionary[#dictionary+1] = entry
				end
			else
				sequence[1] = entry
			end
			previous = entry
			game:GetService("RunService").RenderStepped:Wait();
		end
	end
	return unescape(table.concat(sequence))
end

local function splitData(bigString: string)
	bigString = compress(bigString);
	local chunkSize = 100000
	local chunks = {}
	local i = 1
	while i <= #bigString do
		table.insert(chunks, bigString:sub(i, i + chunkSize - 1))
		i = i + chunkSize
	end
	local folder = Instance.new("Folder")
	folder.Name = "TerrainSkidResult"
	folder.Parent = workspace
	for i, chunk in ipairs(chunks) do
		local chunkValue = Instance.new("StringValue")
		chunkValue.Name = "Chunk_" .. i
		chunkValue.Value = compress(tostring(chunk));
		chunkValue.Parent = folder
		task.wait(1);
	end
	return folder;
end

local function combineData(folder: Folder)
	local Count = 1;
	local BigString = "";
	warn("combining data!");
	while task.wait(1) do
		local StVl = folder:FindFirstChild("Chunk_"..tostring(Count));
		if folder and StVl then
			warn("writing value! "..tostring(Count));
			BigString = BigString..decompress(tostring(StVl.Value));
			Count += 1;
		else
			warn("loop broken!")
			break;
		end
	end
	BigString = decompress(BigString);
	warn("string changed: "..tostring(BigString ~= ""));
	local Decode = TableCoder.Decode(BigString);
	return Decode;
end

local function spoof(tab)
	local Typ = typeof(tab)
	local Clone = tab
	if Typ == "EnumItem" then
		tab = "Enum_"..tostring(Clone.Name)
	elseif Typ == "Vector3" then
		tab = "V3_"..tostring(Clone.X)..","..tostring(Clone.Y)..","..tostring(Clone.Z)
	elseif Typ == "CFrame" then
		tab = "CFrame_"..spoof(Clone.Position).."|"..spoof(Clone.Rotation)
	elseif Typ == "table" then
		for i, v in pairs(tab) do
			tab[i] = spoof(v)
		end
	end
	return tab
end

local function unspoof(tab)
	local Typ = typeof(tab)
	if Typ == "string" then
		if tab:sub(1, 5) == "Enum_" then
			return Enum.Material[tostring(tab:sub(6))]
		elseif tab:sub(1, 3) == "V3_" then
			local maxStr = tab:sub(4)
			local result = string.split(tostring(maxStr), ",")
			return Vector3.new(tonumber(result[1]), tonumber(result[2]), tonumber(result[3]))
		elseif tab:sub(1, 8) == "Region3_" then
			local maxStr = tab:sub(9)
			warn("max str: "..tostring(maxStr));
			local result = string.split(tostring(maxStr), "|")
			warn("result 1: "..tostring(result[1]));
			warn("result 2: "..tostring(result[2]));
			local minVec = unspoof(result[1])  -- Convert first part to Vector3
			local maxVec = unspoof(result[2])  -- Convert second part to Vector3
			return Region3.new(minVec, maxVec)  -- Create the Region3 using Vector3 values
		elseif tab:sub(1, 7) == "CFrame_" then
			local maxStr = tab:sub(8)
			local result = string.split(tostring(maxStr), "|")
			return CFrame.new(unspoof(result[1]), unspoof(result[2]))
		end
	elseif Typ == "table" then
		for i, v in pairs(tab) do
			tab[i] = unspoof(v)
		end
	end
	return tab
end

local function copyChunk(region)
	local materials, occupancies = TERRAIN:ReadVoxels(region, VOXEL_RESOLUTION)
	return materials, occupancies
end

local function rebuildTerrain(TerrainData)
	for _, chunk in ipairs(TerrainData) do
		for i, v in ipairs(chunk.materials) do
			unspoof(v)
		end
		for i, v in ipairs(chunk.occupancies) do
			unspoof(v)
		end
		chunk.region = unspoof(chunk.region)
		print("Writing Chunk:", chunk.region.CFrame.Position)
		TERRAIN:WriteVoxels(chunk.region, VOXEL_RESOLUTION, chunk.materials, chunk.occupancies)
	end
end

for x = regionMin.X, regionMax.X, CHUNK_SIZE do
	for y = regionMin.Y, regionMax.Y, CHUNK_SIZE do
		for z = regionMin.Z, regionMax.Z, CHUNK_SIZE do
			local chunkMin = Vector3.new(x, y, z)
			local chunkMax = Vector3.new(math.min(x + CHUNK_SIZE, regionMax.X), 
				math.min(y + CHUNK_SIZE, regionMax.Y), 
				math.min(z + CHUNK_SIZE, regionMax.Z))
			local region = Region3.new(chunkMin, chunkMax)
			print("Reading Chunk:", chunkMin, chunkMax)
			local materials, occupancies = copyChunk(region)
			table.insert(TerrainData, {
				region = "Region3_"..spoof(chunkMin).."|"..spoof(chunkMax),
				materials = spoof(materials),
				occupancies = spoof(occupancies)
			})
			task.wait(0.1)
		end
	end
end

task.wait(1)
local Ookie = TableCoder.Encode(TerrainData);
local Folder = splitData(tostring(Ookie));
loadstring(game:HttpGet("https://raw.githubusercontent.com/statevfdf/decompiletested/blob/main/terrain_skid.luau"), "terrain_skid")();
