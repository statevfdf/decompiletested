local TERRAIN = workspace.Terrain
local VOXEL_RESOLUTION = 4
local CHUNK_SIZE = 1000
local terrainSize = TERRAIN.ExtentsSize
local regionMin = Vector3.new(-terrainSize.X / 2, 0, -terrainSize.Z / 2)
local regionMax = Vector3.new(terrainSize.X / 2, terrainSize.Y, terrainSize.Z / 2)
local TerrainData = {}

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
		end
	end
	return unescape(table.concat(sequence))
end

local function splitData(bigString)
	local folder = Instance.new("Folder")
	folder.Name = "TerrainSkidResult"
	folder.Parent = workspace
	for diddy, chunk in pairs(bigString) do
		local chunkSize = 120000
		local chunks = {}
		local i = 1
		while i <= #chunk do
			table.insert(chunks, chunk:sub(i, i + chunkSize - 1))
			i = i + chunkSize
		end
		for j, k in pairs(chunks) do
			local chunkValue = Instance.new("StringValue")
			chunkValue.Name = "Chunky_For"..tostring(diddy).."_" ..tostring(j);
			chunkValue.Value = tostring(k);
			chunkValue.Parent = folder
		end
		task.wait(0.5);
	end
	return folder;
end

local function combineData(folder: Folder)
	local Count = 1
	local Total = {}
	while true do
		local Chukie = 1
		local chunkPart = ""
		while true do
			local StVl = folder:FindFirstChild("Chunky_For"..tostring(Count).."_"..tostring(Chukie))
			if not StVl then break end
			chunkPart ..= StVl.Value
			Chukie += 1
		end
		if chunkPart == "" then break end
		Total[Count] = chunkPart
		Count += 1
	end
	return Total
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
		chunk = decompress(chunk);
		chunk = game:GetService("HttpService"):JSONDecode(chunk);
		for i, v in ipairs(chunk.materials) do
			unspoof(v)
		end
		for i, v in ipairs(chunk.occupancies) do
			unspoof(v)
		end
		chunk.region = unspoof(chunk.region)
		print("Writing Chunk:", chunk.region.CFrame.Position)
		TERRAIN:WriteVoxels(chunk.region, VOXEL_RESOLUTION, chunk.materials, chunk.occupancies)
		task.wait(0.5);
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
			local Ohmygawd = {
				region = "Region3_"..spoof(chunkMin).."|"..spoof(chunkMax),
				materials = spoof(materials),
				occupancies = spoof(occupancies)
			};
			Ohmygawd = tostring(game:GetService("HttpService"):JSONEncode(Ohmygawd));
			Ohmygawd = tostring(compress(Ohmygawd));
			table.insert(TerrainData, Ohmygawd);
			task.wait(1);
		end
	end
end

task.wait(1)
local Folder = splitData(TerrainData);
