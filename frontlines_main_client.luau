-- Saved by UniversalSynSaveInstance (Join to Copy Games) https://discord.gg/wx4ThpAsmw

game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.All, false);
game.ReplicatedStorage:WaitForChild("framework_shared");
game.ReplicatedStorage:WaitForChild("frontlines_assets");
local l_frontlines_gui_0 = game.ReplicatedFirst:WaitForChild("frontlines_gui");
local l_terminal_gui_0 = game.ReplicatedFirst:WaitForChild("terminal_gui");
local l_frontlines_screen_effects_0 = game.ReplicatedFirst:WaitForChild("frontlines_screen_effects");
local l_capture_point_3d_0 = game.ReplicatedFirst:WaitForChild("capture_point_3d");
local l_frontlines_intro_0 = game.ReplicatedFirst:WaitForChild("frontlines_intro");
local l_frontlines_loading_screen_0 = game.ReplicatedFirst:WaitForChild("frontlines_loading_screen");
local l_capture_point_tracker_0 = game.ReplicatedFirst:WaitForChild("capture_point_tracker");
game.Players.LocalPlayer:WaitForChild("PlayerGui");
l_frontlines_gui_0.Parent = game.Players.LocalPlayer.PlayerGui;
l_frontlines_screen_effects_0.Parent = game.Players.LocalPlayer.PlayerGui;
l_capture_point_3d_0.Parent = game.Players.LocalPlayer.PlayerGui;
l_terminal_gui_0.Parent = game.Players.LocalPlayer.PlayerGui;
l_capture_point_tracker_0.Parent = game.Players.LocalPlayer.PlayerGui;
l_frontlines_loading_screen_0.Parent = game.Players.LocalPlayer.PlayerGui;
wait(8);
_G.platform_id = "pc";
if game:GetService("UserInputService").TouchEnabled then
    _G.platform_id = "mobile";
elseif game:GetService("GuiService"):IsTenFootInterface() then
    _G.platform_id = "console";
end;
_G.utils = table.create(0);
_G.globals = table.create(0);
_G.consts = table.create(0);
_G.enums = table.create(0);
l_frontlines_gui_0 = function(v7) --[[ Line: 46 ]] --[[ Name: shared_libs ]]
    local l_FirstChild_0 = game.ReplicatedStorage.framework_shared:FindFirstChild(v7, true);
    assert(l_FirstChild_0 ~= nil, v7);
    return require(l_FirstChild_0);
end;
l_terminal_gui_0 = function(v9) --[[ Line: 53 ]] --[[ Name: local_libs ]]
    local l_FirstChild_1 = script.Parent:FindFirstChild(v9, true);
    assert(l_FirstChild_1 ~= nil, v9);
    return require(l_FirstChild_1);
end;
l_frontlines_screen_effects_0 = function(v11) --[[ Line: 60 ]] --[[ Name: init_system ]]
    local l_FirstChild_2 = script.Parent:FindFirstChild(v11, true);
    assert(l_FirstChild_2 ~= nil, v11);
    assert(require(l_FirstChild_2) == nil, v11);
end;
_G.utils.lib_util = {
    shared = l_frontlines_gui_0, 
    client = l_terminal_gui_0
};
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("math_utils", true);
assert(l_frontlines_loading_screen_0 ~= nil, "math_utils");
l_capture_point_3d_0.math_util = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("parametric_move_util", true);
assert(l_frontlines_loading_screen_0 ~= nil, "parametric_move_util");
l_capture_point_3d_0.parametric_move_util = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("voxel_util", true);
assert(l_frontlines_loading_screen_0 ~= nil, "voxel_util");
l_capture_point_3d_0.voxel_util = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("compress_util", true);
assert(l_frontlines_loading_screen_0 ~= nil, "compress_util");
l_capture_point_3d_0.compress_util = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = script.Parent:FindFirstChild("keyframe_animation", true);
assert(l_frontlines_loading_screen_0 ~= nil, "keyframe_animation");
l_capture_point_3d_0.keyframe_anim_util = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = script.Parent:FindFirstChild("dynamo", true);
assert(l_frontlines_loading_screen_0 ~= nil, "dynamo");
l_capture_point_3d_0.dynamo = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = script.Parent:FindFirstChild("camshake", true);
assert(l_frontlines_loading_screen_0 ~= nil, "camshake");
l_capture_point_3d_0.intro_cam_shake = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = script.Parent:FindFirstChild("spring", true);
assert(l_frontlines_loading_screen_0 ~= nil, "spring");
l_capture_point_3d_0.spring_c = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.utils;
l_frontlines_loading_screen_0 = script.Parent:FindFirstChild("viewport_sizing", true);
assert(l_frontlines_loading_screen_0 ~= nil, "viewport_sizing");
l_capture_point_3d_0.viewport_sizing = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.consts;
l_frontlines_loading_screen_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("general_consts", true);
assert(l_frontlines_loading_screen_0 ~= nil, "general_consts");
l_capture_point_3d_0.general = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.consts;
l_frontlines_loading_screen_0 = script.Parent:FindFirstChild("c_task_priorities", true);
assert(l_frontlines_loading_screen_0 ~= nil, "c_task_priorities");
l_capture_point_3d_0.c_prio = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.enums;
l_frontlines_loading_screen_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("sol_operator_enum", true);
assert(l_frontlines_loading_screen_0 ~= nil, "sol_operator_enum");
l_capture_point_3d_0.sol_operator = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = _G.enums;
l_frontlines_loading_screen_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("r15_part_enum", true);
assert(l_frontlines_loading_screen_0 ~= nil, "r15_part_enum");
l_capture_point_3d_0.r15_part = require(l_frontlines_loading_screen_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("enum", true);
assert(l_capture_point_3d_0 ~= nil, "enum");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = script.Parent:FindFirstChild("client_execution_tree", true);
assert(l_capture_point_3d_0 ~= nil, "client_execution_tree");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("execution_tree", true);
assert(l_capture_point_3d_0 ~= nil, "execution_tree");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("vector_bit", true);
assert(l_capture_point_3d_0 ~= nil, "vector_bit");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("replay_pkg", true);
assert(l_capture_point_3d_0 ~= nil, "replay_pkg");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("game_loop_header", true);
assert(l_capture_point_3d_0 ~= nil, "game_loop_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("combat_loop_pkg", true);
assert(l_capture_point_3d_0 ~= nil, "combat_loop_pkg");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("cli_state_header", true);
assert(l_capture_point_3d_0 ~= nil, "cli_state_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("capture_point_pkg", true);
assert(l_capture_point_3d_0 ~= nil, "capture_point_pkg");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("lighting_header", true);
assert(l_capture_point_3d_0 ~= nil, "lighting_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("map_header", true);
assert(l_capture_point_3d_0 ~= nil, "map_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("match_score_header", true);
assert(l_capture_point_3d_0 ~= nil, "match_score_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("match_vote_header", true);
assert(l_capture_point_3d_0 ~= nil, "match_vote_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = script.Parent:FindFirstChild("match_lead_pkg", true);
assert(l_capture_point_3d_0 ~= nil, "match_lead_pkg");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = script.Parent:FindFirstChild("main_menu_header", true);
assert(l_capture_point_3d_0 ~= nil, "main_menu_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = script.Parent:FindFirstChild("heli_scene_header", true);
assert(l_capture_point_3d_0 ~= nil, "heli_scene_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = script.Parent:FindFirstChild("customization_header", true);
assert(l_capture_point_3d_0 ~= nil, "customization_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("sol_state_header", true);
assert(l_capture_point_3d_0 ~= nil, "sol_state_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("sol_state_graph", true);
assert(l_capture_point_3d_0 ~= nil, "sol_state_graph");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("sol_equipment_specs", true);
assert(l_capture_point_3d_0 ~= nil, "sol_equipment_specs");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("arsenal", true);
assert(l_capture_point_3d_0 ~= nil, "arsenal");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("arsenal_data", true);
assert(l_capture_point_3d_0 ~= nil, "arsenal_data");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = script.Parent:FindFirstChild("tpv_sol_death_sequence", true);
assert(l_capture_point_3d_0 ~= nil, "tpv_sol_death_sequence");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = script.Parent:FindFirstChild("user_interface", true);
assert(l_capture_point_3d_0 ~= nil, "user_interface");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("environment_zone_header", true);
assert(l_capture_point_3d_0 ~= nil, "environment_zone_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("equipment_slot_header", true);
assert(l_capture_point_3d_0 ~= nil, "equipment_slot_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("sol_loadout_header", true);
assert(l_capture_point_3d_0 ~= nil, "sol_loadout_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("soldier_loadout_header", true);
assert(l_capture_point_3d_0 ~= nil, "soldier_loadout_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("user_progression_header", true);
assert(l_capture_point_3d_0 ~= nil, "user_progression_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("user_inventory_header", true);
assert(l_capture_point_3d_0 ~= nil, "user_inventory_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("user_mission_header", true);
assert(l_capture_point_3d_0 ~= nil, "user_mission_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("arsenal_inventory_header", true);
assert(l_capture_point_3d_0 ~= nil, "arsenal_inventory_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("store_header", true);
assert(l_capture_point_3d_0 ~= nil, "store_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("global_leaderboard_header", true);
assert(l_capture_point_3d_0 ~= nil, "global_leaderboard_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("guild_header", true);
assert(l_capture_point_3d_0 ~= nil, "guild_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("calling_card_header", true);
assert(l_capture_point_3d_0 ~= nil, "calling_card_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("user_settings_header", true);
assert(l_capture_point_3d_0 ~= nil, "user_settings_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("skills_header", true);
assert(l_capture_point_3d_0 ~= nil, "skills_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("soldier_voicelines_header", true);
assert(l_capture_point_3d_0 ~= nil, "soldier_voicelines_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("match_outcome_header", true);
assert(l_capture_point_3d_0 ~= nil, "match_outcome_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("rush_header", true);
assert(l_capture_point_3d_0 ~= nil, "rush_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("social_media_header", true);
assert(l_capture_point_3d_0 ~= nil, "social_media_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("inverse_kinematics", true);
assert(l_capture_point_3d_0 ~= nil, "inverse_kinematics");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("arsenal_model_header", true);
assert(l_capture_point_3d_0 ~= nil, "arsenal_model_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = script.Parent:FindFirstChild("fpv_frontlines_animation", true);
assert(l_capture_point_3d_0 ~= nil, "fpv_frontlines_animation");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("tpv_frontlines_animation", true);
assert(l_capture_point_3d_0 ~= nil, "tpv_frontlines_animation");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("sol_equipment_specs", true);
assert(l_capture_point_3d_0 ~= nil, "sol_equipment_specs");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("sol_movement_dir", true);
assert(l_capture_point_3d_0 ~= nil, "sol_movement_dir");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("trailer_team_header", true);
assert(l_capture_point_3d_0 ~= nil, "trailer_team_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);
l_capture_point_3d_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("squads_header", true);
assert(l_capture_point_3d_0 ~= nil, "squads_header");
l_frontlines_intro_0 = require(l_capture_point_3d_0);

l_frontlines_intro_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("network", true);
assert(l_frontlines_intro_0 ~= nil, "network");
l_capture_point_3d_0 = require(l_frontlines_intro_0);

l_frontlines_intro_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("network_buffer", true);
assert(l_frontlines_intro_0 ~= nil, "network_buffer");
l_frontlines_loading_screen_0 = require(l_frontlines_intro_0);
l_frontlines_intro_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("network_pull", true);
assert(l_frontlines_intro_0 ~= nil, "network_pull");
l_frontlines_loading_screen_0 = require(l_frontlines_intro_0);
l_frontlines_intro_0 = game.ReplicatedStorage.framework_shared:FindFirstChild("network_messages", true);
assert(l_frontlines_intro_0 ~= nil, "network_messages");
l_frontlines_loading_screen_0 = require(l_frontlines_intro_0);
_G.utils.net_msg_util = l_capture_point_3d_0.net_msg_util;
_G.globals.null_net_msg_state = _G.utils.net_msg_util.net_msg_state();
_G.globals.combat_net_msg_state = _G.utils.net_msg_util.net_msg_state();
_G.consts.net_fmts = l_capture_point_3d_0.net_fmts;
_G.consts.net_fmt_len = l_capture_point_3d_0.net_fmt_len;
_G.consts.s_net_msg_fmts = l_capture_point_3d_0.s_net_msg_fmts;
_G.consts.s_net_msg_lens = l_capture_point_3d_0.s_net_msg_lens;
_G.consts.c_net_msg_fmts = l_capture_point_3d_0.c_net_msg_fmts;
_G.consts.c_net_msg_lens = l_capture_point_3d_0.c_net_msg_lens;
_G.enums.net_str = l_capture_point_3d_0.net_str_enum;
_G.enums.s_net_msg = l_capture_point_3d_0.s_net_msg_enum;
_G.enums.c_net_msg = l_capture_point_3d_0.c_net_msg_enum;
_G.globals.optics_catalog = {
    holographic = {
        "507k_sight", 
        "m21_sight", 
        "sro_sight", 
        "lco_sight", 
        "romeo3xl_sight", 
        "mrs_sight", 
        "exps_sight", 
        "mars_sight", 
        "rds_sight"
    }, 
    culled = {
        "mrx1x25_sight", 
        "axis_4x32_sight"
    }, 
    sniper = {
        "sniper_sight"
    }
};
_G.globals.aim_assist_state = {
    on = false
};
_G.globals.user_inventory = table.create(0);
_G.globals.user_settings = table.clone(_G.default_user_settings);
_G.globals.user_statistics = table.create(0);
_G.globals.user_skills = table.create(0);
_G.globals.client_skills = table.create(_G.PLAYER_COUNT);
_G.globals.loadout_skills = table.create(_G.MAX_SOLDIER_LOADOUTS);
for v13 = 1, _G.MAX_SOLDIER_LOADOUTS do
    _G.globals.loadout_skills[v13] = table.clone(_G.default_skills);
end;
for v14 = 1, _G.PLAYER_COUNT do
    _G.globals.client_skills[v14] = table.create(0);
end;
_G.globals.client_squads = table.create(_G.PLAYER_COUNT, 0);
_G.globals.store_item_buttons = table.create(0);
_G.globals.spare_magazine_joints = table.create(255);
_G.globals.game_loop_state = {
    state = 0, 
    state_tick = 0
};
_G.globals.match_tuple = {
    gamemode = 1, 
    map = 1, 
    map_condition = 1
};
_G.globals.match_outcome = {
    outcome = 0
};
_G.globals.match_mutual_kills = table.create(_G.PLAYER_COUNT, 0);
_G.globals.match_mutual_deaths = table.create(_G.PLAYER_COUNT, 0);
_G.globals.client_calling_cards = table.create(_G.PLAYER_COUNT + 1, 0);
_G.globals.capture_points_personally_occupied = table.create(_G.enum_size(_G.capture_point), false);
_G.globals.soldier_hitbox_hash = table.create(0);
_G.globals.soldier_hitbox_id_hash = table.create(0);
_G.globals.soldier_hitbox_welds = table.create(_G.PLAYER_COUNT);
for v15 = 1, _G.PLAYER_COUNT do
    _G.globals.soldier_hitbox_welds[v15] = table.create(_G.enum_size(_G.tpv_sol_joint_t));
end;
_G.globals.clients_initialized = table.create(_G.PLAYER_COUNT, false);
_G.globals.cli_names = table.create(_G.PLAYER_COUNT, "");
_G.globals.cli_teams = table.create(_G.PLAYER_COUNT, 0);
_G.globals.sol_teams = table.create(_G.PLAYER_COUNT, 0);
_G.globals.cli_state = {
    state = 0, 
    id = 0, 
    fpv_sol_id = 0
};
_G.globals.cli_kills = table.create(_G.PLAYER_COUNT, 0);
_G.globals.cli_deaths = table.create(_G.PLAYER_COUNT, 0);
_G.globals.cli_id_alloc = {
    x = 0, 
    m = _G.PLAYER_COUNT + 1, 
    b = 0
};
_G.utils.cli_id_alloc = {
    alloc_cli_id = function(v16) --[[ Line: 337 ]] --[[ Name: alloc_cli_id ]]
        local v17 = v16.m * v16.x + v16.b;
        v16.x = v16.x + 1;
        return v17;
    end
};
_G.globals.match_scores = table.create(2, 0);
_G.globals.cli_match_scores = table.create(_G.PLAYER_COUNT, 0);
_G.globals.cli_match_kills = table.create(_G.PLAYER_COUNT, 0);
_G.globals.cli_match_deaths = table.create(_G.PLAYER_COUNT, 0);
_G.globals.clock_state = {
    client_tick = 0, 
    server_tick = 0
};
_G.consts.cam_dfts = {
    SOL_SENSITIVITY = 0.2, 
    SPECTATE_SENSITIVITY = 0.1, 
    SCENE_FOV = 70, 
    SOL_FOV = 75, 
    SPECTATE_FOV = 75
};
_G.globals.projectile_hash = table.create(0);
_G.globals.customization_subgraphs = table.create(0);
_G.globals.customization_models = table.create(0);
_G.globals.customization_vertex_models = table.create(0);
_G.globals.customization_vertex_cframes = table.create(0);
_G.globals.loadout_viewports = table.create(0);
_G.globals.vertex_gui_objects = table.create(0);
_G.globals.vertex_buttons = table.create(0);
_G.globals.vertex_type_buttons = table.create(_G.arsenal_vertex_type_count);
_G.globals.loadout_state = {
    loadout_id = 1
};
_G.globals.customization_selector_fx = Instance.new("Highlight");
_G.globals.customization_selector_fx.FillColor = Color3.fromRGB(255, 255, 255);
_G.globals.customization_selector_fx.FillTransparency = 1;
_G.globals.customization_model_selected = false;
_G.globals.ctrl_states = {
    mv_fw = false, 
    mv_bw = false, 
    mv_rt = false, 
    mv_lt = false, 
    mv_up = false, 
    mv_dn = false, 
    hold_accel = false, 
    hold_deccel = false, 
    hold_crouch = false, 
    hold_jump = false, 
    trigger = false, 
    gamepad_trigger = false, 
    fire = false, 
    hold_reload = false, 
    hold_melee_attack = false, 
    hold_melee_throw = false, 
    hold_lethal = false, 
    hold_tac = false, 
    hold_ads = false, 
    hold_ads_aux = false, 
    hold_interact = false
};
_G.globals.ctrl_ts = {
    press_accel = 0, 
    press_accel_prev = 0, 
    press_crouch = 0, 
    press_jump = 0, 
    press_primary = 0, 
    press_secondary = 0, 
    press_melee = 0, 
    trigger = 0, 
    press_reload = 0, 
    press_melee_attack = 0, 
    melee_attack = 0, 
    melee_throw = 0, 
    press_lethal = 0, 
    press_tac = 0, 
    press_ads = 0, 
    press_interact = 0, 
    mv_fw = 0, 
    mv_bw = 0, 
    mv_rt = 0, 
    mv_lt = 0
};
_G.globals.broad_environment_cfs = {};
_G.globals.broad_environment_sizes = {};
_G.globals.broad_environment_zones = {};
_G.globals.narrow_environment_cfs = {};
_G.globals.narrow_environment_sizes = {};
_G.globals.soldiers_alive = table.create(_G.PLAYER_COUNT, false);
_G.globals.soldiers_spawned = table.create(_G.PLAYER_COUNT, false);
_G.globals.soldiers_ragdolling = table.create(_G.PLAYER_COUNT, false);
_G.globals.sol_anim_cull_indices = table.create(_G.PLAYER_COUNT, 0);
_G.globals.soldiers_unculled = table.create(_G.PLAYER_COUNT, true);
_G.globals.soldier_joints = table.create(_G.PLAYER_COUNT);
_G.globals.ragdoll_joint_cframes = table.create(_G.PLAYER_COUNT);
for v18 = 1, _G.PLAYER_COUNT do
    _G.globals.soldier_joints[v18] = table.create(_G.enum_size(_G.tpv_sol_joint_t));
    _G.globals.ragdoll_joint_cframes[v18] = table.create(_G.enum_size(_G.tpv_sol_joint_t), CFrame.new());
end;
l_capture_point_3d_0 = table.create(_G.PLAYER_COUNT, 0);
l_frontlines_intro_0 = table.create(_G.PLAYER_COUNT, 0);
l_frontlines_loading_screen_0 = table.create(_G.PLAYER_COUNT);
l_capture_point_tracker_0 = table.create(_G.PLAYER_COUNT);
local v19 = table.create(_G.PLAYER_COUNT);
_G.globals.sol_zones = table.create(_G.PLAYER_COUNT, _G.environment_zone.OUTDOORS);
_G.globals.sol_zone_classes = table.create(_G.PLAYER_COUNT, _G.environment_zone_class.OUTDOOR_SPACE);
_G.globals.gbl_sol_healths = table.create(_G.PLAYER_COUNT, 0);
_G.globals.gbl_sol_death_dirs = l_capture_point_3d_0;
_G.globals.gbl_sol_state = {
    tpv_dirs = l_frontlines_intro_0
};
_G.globals.fpv_sol_state = _G.alloc_sol_state();
_G.globals.fpv_sol_state_clocks = _G.alloc_sol_state();
_G.globals.sol_states = table.create(_G.PLAYER_COUNT);
_G.globals.sol_net_states = table.create(_G.PLAYER_COUNT);
_G.globals.sol_death_states = table.create(_G.PLAYER_COUNT);
_G.globals.sol_state_clocks = table.create(_G.PLAYER_COUNT);
for v20 = 1, _G.PLAYER_COUNT do
    _G.globals.sol_states[v20] = _G.alloc_sol_state();
    _G.globals.sol_net_states[v20] = _G.alloc_sol_state();
    _G.globals.sol_death_states[v20] = _G.alloc_sol_state();
    _G.globals.sol_state_clocks[v20] = _G.alloc_sol_state();
end;
_G.globals.fpv_sol_walk_animation = {
    t = 0
};
l_capture_point_3d_0 = game.ReplicatedStorage.frontlines_assets.soldier_model:Clone();
_G.globals.soldier_models = table.create(_G.PLAYER_COUNT);
_G.globals.sol_root_parts = table.create(_G.PLAYER_COUNT);
for v21 = 1, _G.PLAYER_COUNT do
    v19 = l_capture_point_3d_0:Clone();
    _G.globals.soldier_models[v21] = v19;
    _G.globals.sol_root_parts[v21] = v19.PrimaryPart;
end;
_G.globals.sol_floor_instances = table.create(_G.PLAYER_COUNT);
_G.globals.sol_floor_normals = table.create(_G.PLAYER_COUNT, (Vector3.new(0, 1, 0, 0)));
_G.globals.sol_floor_materials = table.create(_G.PLAYER_COUNT, Enum.Material.Plastic);
_G.globals.sol_positions = table.create(_G.PLAYER_COUNT, (Vector3.new()));
_G.globals.sol_linear_velocities = table.create(_G.PLAYER_COUNT, (Vector3.new()));
_G.globals.sol_attitudes = table.create(_G.PLAYER_COUNT, (Vector3.new()));
_G.globals.sol_angular_velocities = table.create(_G.PLAYER_COUNT, (Vector3.new()));
_G.globals.gbl_sol_equipments = table.create(_G.PLAYER_COUNT);
_G.globals.gbl_sol_coequipments = table.create(_G.PLAYER_COUNT);
_G.globals.equipments = table.create(255);
_G.globals.equipment_slots = table.create(255, (Vector3.new()));
_G.globals.slot_equipments = _G.alloc_slot_equipments(_G.PLAYER_COUNT);
_G.globals.equipment_drop_ids = table.create(_G.PLAYER_COUNT, 0);
_G.globals.fpv_equipment_idle_cframes = table.create(255);
_G.globals.tpv_equipment_idle_cframes = table.create(255);
_G.globals.fpv_equipment_motor6ds = table.create(255);
_G.globals.tpv_equipment_motor6ds = table.create(255);
_G.globals.equipment_joint_c1s = table.create(255, CFrame.new());
_G.globals.fpv_bool_equipment_anims = table.create(255);
_G.globals.fpv_interp_equipment_anims = table.create(255);
_G.globals.fpv_sol_ammo = {
    ammo = 0, 
    capacity = 0, 
    reserve = 0, 
    ammos = table.create(5, 0)
};
_G.globals.fpv_sol_inventory = table.create(5);
_G.globals.fpv_sol_multipliers = {
    movement = 1, 
    ads = 1, 
    switch = 1, 
    reload = 1
};
_G.globals.fpv_sol_ads = {
    p = 0, 
    fov = 70
};
_G.globals.fpv_sol_spread = {
    spread = 0
};
_G.globals.fpv_sol_firearm = {
    discharge_time = time(), 
    cycle_index = 0
};
l_capture_point_3d_0 = game.ReplicatedStorage.FrontlinesConfigurations.SoldierMovement.jump;
_G.globals.fpv_sol_instances = table.create(0);
_G.globals.fpv_sol_physics = {
    ctrl_moving = false, 
    speed = 0, 
    velocity = Vector3.new(0, 0, 0, 0)
};
_G.globals.fpv_sol_movement = {
    att_x = 0, 
    att_y = 0, 
    momentum = Vector3.new(), 
    momentum_dir = Vector3.new(), 
    momentum_norm = 0, 
    jump_enter_y = 0, 
    curr_obs = nil, 
    curr_obs_dist = 0, 
    curr_obs_vault_height = 0, 
    curr_obs_vaultable = false, 
    curr_obs_high_vaultable = false, 
    vault_complete = false, 
    jump_ammo = l_capture_point_3d_0.max_count.Value
};
_G.globals.fpv_sol_recoil = {
    attitude_delta = Vector3.new()
};
_G.globals.fpv_sol_equipment = {
    curr_equipment = nil, 
    curr_slot = 1
};
_G.globals.fpv_sol_pickup = {
    id = 0
};
_G.globals.fpv_sol_dir = {
    dir = _G.sol_movement_dir_t.IDLE, 
    x = 0, 
    z = 0
};
_G.globals.fpv_sol_health = {
    health = 0, 
    max_health = 100
};
_G.consts.fpv_sol_movement = {
    BASE_SPEED = 16, 
    MAX_SPEED_DECREASE_ANGLE = 1.5707963267948966, 
    MAX_SPEED_DECREASE_BY_ANGLE = 0.2, 
    MAX_SPEED_DECREASE_BY_ADS = 0.2, 
    MAX_SPEED_CHANGE_BY_INCLINE = 0.5, 
    CROUCH_SPEED_MUL = 0.6, 
    SPRINT_SPEED_MUL = 1.6875, 
    TAC_SPRINT_SPEED_MUL = 2.025, 
    MAX_ATT_X = 1.3089969389957472, 
    CROUCH_DEPTH = 1.5, 
    JUMP_COOLOFF = 0.15, 
    JUMP_HEIGHT = 4, 
    CONTROLLABLE_JUMP_MOMENTUM = 5, 
    MIN_OBS_DIST_FOR_SPRINT = 5, 
    TAC_SPRINT_DURATION = 2.5, 
    TAC_SPRINT_INPUT_DELAY = 0.25, 
    SPRINT_SLIDE_MOMENTUM_0 = 37, 
    TAC_SPRINT_SLIDE_MOMENTUM_0 = 42, 
    JUMP_SLIDE_MOMENTUM_0 = 37, 
    MIN_SLIDE_DURATION = 0.1, 
    SLIDE_DEPTH = 1.75, 
    MIN_SLIDE_ENTER_MOMENTUM = 24, 
    SLIDE_EXIT_MOMENTUM = 12, 
    MIN_JUMP_SLIDE_TRANSITION_COS = -0.3420201433256687, 
    CONTROLLABLE_SLIDE_MOMENTUM = 10, 
    BASE_SLIDE_DECCEL = 0.7, 
    MAX_SLIDE_DECCEL_CHANGE_BY_INCLINE = 2, 
    MAX_SLIDE_DECCEL_INCREASE_BY_ANGLE = 1, 
    MIN_OBS_DIST_FOR_VAULT = 3, 
    MAX_OBS_DIST_FOR_VAULT = 6, 
    MIN_OBS_HEIGHT_FOR_VAULT = 3, 
    MAX_OBS_HEIGHT_FOR_VAULT = 4.8, 
    MAX_OBS_HEIGHT_FOR_HIGH_VAULT = 7.1, 
    MAX_VAULT_OVER_DIST = 5, 
    OBS_RAYCAST_DIST = 10, 
    OBS_RAYCAST_HEIGHT = 1
};
_G.globals.fpv_sol_joint_trs = table.create(_G.enum_size(_G.fpv_sol_joint_t));
for v22 = 1, _G.enum_size(_G.fpv_sol_joint_t) do
    _G.globals.fpv_sol_joint_trs[v22] = {
        Vector3.new(), 
        1, 
        0, 
        0, 
        0
    };
end;
l_capture_point_3d_0 = script.Parent.soldier_actor;
_G.soldier_actors = table.create(_G.PLAYER_COUNT);
for v23 = 1, _G.PLAYER_COUNT do
    v19 = l_capture_point_3d_0:Clone();
    _G.soldier_actors[v23] = v19;
end;
l_capture_point_3d_0:Destroy();
_G.sol_state_values = table.create(_G.PLAYER_COUNT);
for v24 = 1, _G.PLAYER_COUNT do
    _G.sol_state_values[v24] = table.create(_G.enum_size(_G.sol_state_class));
    for v25, v26 in pairs(_G.sol_state_class) do
        local l_IntValue_0 = Instance.new("IntValue");
        l_IntValue_0.Name = v25;
        l_IntValue_0.Parent = _G.soldier_actors[v24].main.states;
        _G.sol_state_values[v24][v26] = l_IntValue_0;
    end;
end;
_G.sol_direction_values = table.create(_G.PLAYER_COUNT);
for v28 = 1, _G.PLAYER_COUNT do
    _G.sol_direction_values[v28] = _G.soldier_actors[v28].main.direction;
end;
_G.sol_animation_values = table.create(_G.PLAYER_COUNT);
for v29 = 1, _G.PLAYER_COUNT do
    _G.sol_animation_values[v29] = table.create(_G.enum_size(_G.tpv_sol_kfs_t));
    for v30, v31 in pairs(_G.tpv_sol_kfs_t) do
        local l_ObjectValue_0 = Instance.new("ObjectValue");
        l_ObjectValue_0.Name = v30;
        l_ObjectValue_0.Parent = _G.soldier_actors[v29].main.animations;
        _G.sol_animation_values[v29][v31] = l_ObjectValue_0;
    end;
end;
_G.sol_joint_position_values = table.create(_G.PLAYER_COUNT);
_G.sol_joint_qw_values = table.create(_G.PLAYER_COUNT);
_G.sol_joint_qv_values = table.create(_G.PLAYER_COUNT);
for v33 = 1, _G.PLAYER_COUNT do
    _G.sol_joint_position_values[v33] = table.create(_G.enum_size(_G.tpv_sol_joint_t));
    _G.sol_joint_qw_values[v33] = table.create(_G.enum_size(_G.tpv_sol_joint_t));
    _G.sol_joint_qv_values[v33] = table.create(_G.enum_size(_G.tpv_sol_joint_t));
    for v34, v35 in pairs(_G.tpv_sol_joint_t) do
        local l_Vector3Value_0 = Instance.new("Vector3Value");
        local l_NumberValue_0 = Instance.new("NumberValue");
        local l_Vector3Value_1 = Instance.new("Vector3Value");
        l_Vector3Value_0.Name = v34;
        l_Vector3Value_0.Parent = _G.soldier_actors[v33].main.joint_positions;
        l_NumberValue_0.Name = v34;
        l_NumberValue_0.Parent = _G.soldier_actors[v33].main.joint_qws;
        l_Vector3Value_1.Name = v34;
        l_Vector3Value_1.Parent = _G.soldier_actors[v33].main.joint_qvs;
        _G.sol_joint_position_values[v33][v35] = l_Vector3Value_0;
        _G.sol_joint_qw_values[v33][v35] = l_NumberValue_0;
        _G.sol_joint_qv_values[v33][v35] = l_Vector3Value_1;
    end;
end;
for v39 = 1, _G.PLAYER_COUNT do
    _G.soldier_actors[v39].main.model.Value = _G.globals.soldier_models[v39];
end;
for _, v41 in ipairs(_G.soldier_actors) do
    v41.Parent = script.Parent;
end;
l_frontlines_intro_0 = script.Parent:FindFirstChild("mouse_lock", true);
assert(l_frontlines_intro_0 ~= nil, "mouse_lock");
assert(require(l_frontlines_intro_0) == nil, "mouse_lock");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_footstep", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_footstep");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_footstep");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_equipment", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_equipment");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_equipment");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_position", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_position");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_position");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_equipment_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_equipment_sfx");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_equipment_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_firearm", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_firearm");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_firearm");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_inventory", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_inventory");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_inventory");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_direction_core", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_direction_core");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_direction_core");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tpv_sol_direction", true);
assert(l_frontlines_intro_0 ~= nil, "tpv_sol_direction");
assert(require(l_frontlines_intro_0) == nil, "tpv_sol_direction");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_tags", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_tags");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_tags");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_equipment_hud", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_equipment_hud");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_equipment_hud");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_joints", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_joints");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_joints");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_keyframe_anims", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_keyframe_anims");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_keyframe_anims");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_spawn", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_spawn");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_spawn");
l_frontlines_intro_0 = script.Parent:FindFirstChild("combat_score_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "combat_score_sfx");
assert(require(l_frontlines_intro_0) == nil, "combat_score_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("damage_direction_gui", true);
assert(l_frontlines_intro_0 ~= nil, "damage_direction_gui");
assert(require(l_frontlines_intro_0) == nil, "damage_direction_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("combat_score_gui", true);
assert(l_frontlines_intro_0 ~= nil, "combat_score_gui");
assert(require(l_frontlines_intro_0) == nil, "combat_score_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("replay_gui", true);
assert(l_frontlines_intro_0 ~= nil, "replay_gui");
assert(require(l_frontlines_intro_0) == nil, "replay_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("hitmarker_gui", true);
assert(l_frontlines_intro_0 ~= nil, "hitmarker_gui");
assert(require(l_frontlines_intro_0) == nil, "hitmarker_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("compass_gui", true);
assert(l_frontlines_intro_0 ~= nil, "compass_gui");
assert(require(l_frontlines_intro_0) == nil, "compass_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("suppression_vignette", true);
assert(l_frontlines_intro_0 ~= nil, "suppression_vignette");
assert(require(l_frontlines_intro_0) == nil, "suppression_vignette");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_death_blur", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_death_blur");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_death_blur");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_damage_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_damage_sfx");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_damage_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_death_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_death_sfx");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_death_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_health_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_health_sfx");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_health_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_ammo_pickup_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_ammo_pickup_sfx");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_ammo_pickup_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_ammo_pickup_gui", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_ammo_pickup_gui");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_ammo_pickup_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_shell_ejection", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_shell_ejection");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_shell_ejection");
l_frontlines_intro_0 = script.Parent:FindFirstChild("impact_composite_effects", true);
assert(l_frontlines_intro_0 ~= nil, "impact_composite_effects");
assert(require(l_frontlines_intro_0) == nil, "impact_composite_effects");
l_frontlines_intro_0 = script.Parent:FindFirstChild("payload_composite_effects", true);
assert(l_frontlines_intro_0 ~= nil, "payload_composite_effects");
assert(require(l_frontlines_intro_0) == nil, "payload_composite_effects");
l_frontlines_intro_0 = script.Parent:FindFirstChild("bullet_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "bullet_sfx");
assert(require(l_frontlines_intro_0) == nil, "bullet_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("bullet_core", true);
assert(l_frontlines_intro_0 ~= nil, "bullet_core");
assert(require(l_frontlines_intro_0) == nil, "bullet_core");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_health", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_health");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_health");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_health", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_health");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_health");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_physics_read", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_physics_read");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_physics_read");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_control", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_control");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_control");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tpv_sol_gui", true);
assert(l_frontlines_intro_0 ~= nil, "tpv_sol_gui");
assert(require(l_frontlines_intro_0) == nil, "tpv_sol_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tpv_sol_spawn", true);
assert(l_frontlines_intro_0 ~= nil, "tpv_sol_spawn");
assert(require(l_frontlines_intro_0) == nil, "tpv_sol_spawn");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tpv_sol_state", true);
assert(l_frontlines_intro_0 ~= nil, "tpv_sol_state");
assert(require(l_frontlines_intro_0) == nil, "tpv_sol_state");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tpv_sol_joints", true);
assert(l_frontlines_intro_0 ~= nil, "tpv_sol_joints");
assert(require(l_frontlines_intro_0) == nil, "tpv_sol_joints");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tpv_sol_inventory", true);
assert(l_frontlines_intro_0 ~= nil, "tpv_sol_inventory");
assert(require(l_frontlines_intro_0) == nil, "tpv_sol_inventory");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tpv_sol_firearm", true);
assert(l_frontlines_intro_0 ~= nil, "tpv_sol_firearm");
assert(require(l_frontlines_intro_0) == nil, "tpv_sol_firearm");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_movement_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_movement_sfx");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_movement_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("environment_destruction", true);
assert(l_frontlines_intro_0 ~= nil, "environment_destruction");
assert(require(l_frontlines_intro_0) == nil, "environment_destruction");
l_frontlines_intro_0 = script.Parent:FindFirstChild("killcam_control", true);
assert(l_frontlines_intro_0 ~= nil, "killcam_control");
assert(require(l_frontlines_intro_0) == nil, "killcam_control");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_pickup", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_pickup");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_pickup");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_ads", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_ads");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_ads");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_ammo", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_ammo");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_ammo");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_ammo_pickup", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_ammo_pickup");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_ammo_pickup");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_direction_core", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_direction_core");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_direction_core");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_equipment", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_equipment");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_equipment");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_cycle_mode", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_cycle_mode");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_cycle_mode");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_firearm_prime", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_firearm_prime");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_firearm_prime");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_firearm_spread", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_firearm_spread");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_firearm_spread");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_firearm_bullet", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_firearm_bullet");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_firearm_bullet");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_inventory", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_inventory");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_inventory");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_melee", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_melee");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_melee");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_state", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_state");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_state");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_throwable", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_throwable");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_throwable");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_crosshair", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_crosshair");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_crosshair");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_movement_core", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_movement_core");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_movement_core");
l_frontlines_intro_0 = script.Parent:FindFirstChild("unrecovered_credits_alert", true);
assert(l_frontlines_intro_0 ~= nil, "unrecovered_credits_alert");
assert(require(l_frontlines_intro_0) == nil, "unrecovered_credits_alert");
l_frontlines_intro_0 = script.Parent:FindFirstChild("aim_sway", true);
assert(l_frontlines_intro_0 ~= nil, "aim_sway");
assert(require(l_frontlines_intro_0) == nil, "aim_sway");
l_frontlines_intro_0 = script.Parent:FindFirstChild("move_tilt", true);
assert(l_frontlines_intro_0 ~= nil, "move_tilt");
assert(require(l_frontlines_intro_0) == nil, "move_tilt");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cam_shake", true);
assert(l_frontlines_intro_0 ~= nil, "cam_shake");
assert(require(l_frontlines_intro_0) == nil, "cam_shake");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_recoil_anim", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_recoil_anim");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_recoil_anim");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_multipliers", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_multipliers");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_multipliers");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_movement", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_movement");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_movement");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_movement_sfx", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_movement_sfx");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_movement_sfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gbl_sol_movement", true);
assert(l_frontlines_intro_0 ~= nil, "gbl_sol_movement");
assert(require(l_frontlines_intro_0) == nil, "gbl_sol_movement");
l_frontlines_intro_0 = script.Parent:FindFirstChild("combat", true);
assert(l_frontlines_intro_0 ~= nil, "combat");
assert(require(l_frontlines_intro_0) == nil, "combat");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_core", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_core");
assert(require(l_frontlines_intro_0) == nil, "soldier_core");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_state", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_state");
assert(require(l_frontlines_intro_0) == nil, "soldier_state");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_time_sequence", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_time_sequence");
assert(require(l_frontlines_intro_0) == nil, "soldier_time_sequence");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_movement", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_movement");
assert(require(l_frontlines_intro_0) == nil, "soldier_movement");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_cframe", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_cframe");
assert(require(l_frontlines_intro_0) == nil, "soldier_cframe");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_floor_cast", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_floor_cast");
assert(require(l_frontlines_intro_0) == nil, "soldier_floor_cast");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_models", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_models");
assert(require(l_frontlines_intro_0) == nil, "soldier_models");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_muzzle_flash", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_muzzle_flash");
assert(require(l_frontlines_intro_0) == nil, "soldier_muzzle_flash");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_muzzle_smoke", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_muzzle_smoke");
assert(require(l_frontlines_intro_0) == nil, "soldier_muzzle_smoke");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_ejection_smoke", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_ejection_smoke");
assert(require(l_frontlines_intro_0) == nil, "soldier_ejection_smoke");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_camera", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_camera");
assert(require(l_frontlines_intro_0) == nil, "soldier_camera");
l_frontlines_intro_0 = script.Parent:FindFirstChild("net_ingress", true);
assert(l_frontlines_intro_0 ~= nil, "net_ingress");
assert(require(l_frontlines_intro_0) == nil, "net_ingress");
l_frontlines_intro_0 = script.Parent:FindFirstChild("net_egress", true);
assert(l_frontlines_intro_0 ~= nil, "net_egress");
assert(require(l_frontlines_intro_0) == nil, "net_egress");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_replay", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_replay");
assert(require(l_frontlines_intro_0) == nil, "soldier_replay");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cli_replay", true);
assert(l_frontlines_intro_0 ~= nil, "cli_replay");
assert(require(l_frontlines_intro_0) == nil, "cli_replay");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cli_combat", true);
assert(l_frontlines_intro_0 ~= nil, "cli_combat");
assert(require(l_frontlines_intro_0) == nil, "cli_combat");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cli_killcam", true);
assert(l_frontlines_intro_0 ~= nil, "cli_killcam");
assert(require(l_frontlines_intro_0) == nil, "cli_killcam");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cli_best_play", true);
assert(l_frontlines_intro_0 ~= nil, "cli_best_play");
assert(require(l_frontlines_intro_0) == nil, "cli_best_play");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cli_last_play", true);
assert(l_frontlines_intro_0 ~= nil, "cli_last_play");
assert(require(l_frontlines_intro_0) == nil, "cli_last_play");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cli_buffer_killcam", true);
assert(l_frontlines_intro_0 ~= nil, "cli_buffer_killcam");
assert(require(l_frontlines_intro_0) == nil, "cli_buffer_killcam");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cli_state", true);
assert(l_frontlines_intro_0 ~= nil, "cli_state");
assert(require(l_frontlines_intro_0) == nil, "cli_state");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_score", true);
assert(l_frontlines_intro_0 ~= nil, "match_score");
assert(require(l_frontlines_intro_0) == nil, "match_score");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_lead", true);
assert(l_frontlines_intro_0 ~= nil, "match_lead");
assert(require(l_frontlines_intro_0) == nil, "match_lead");
l_frontlines_intro_0 = script.Parent:FindFirstChild("capture_point", true);
assert(l_frontlines_intro_0 ~= nil, "capture_point");
assert(require(l_frontlines_intro_0) == nil, "capture_point");
l_frontlines_intro_0 = script.Parent:FindFirstChild("team_deathmatch", true);
assert(l_frontlines_intro_0 ~= nil, "team_deathmatch");
assert(require(l_frontlines_intro_0) == nil, "team_deathmatch");
l_frontlines_intro_0 = script.Parent:FindFirstChild("domination", true);
assert(l_frontlines_intro_0 ~= nil, "domination");
assert(require(l_frontlines_intro_0) == nil, "domination");
l_frontlines_intro_0 = script.Parent:FindFirstChild("king_of_the_hill", true);
assert(l_frontlines_intro_0 ~= nil, "king_of_the_hill");
assert(require(l_frontlines_intro_0) == nil, "king_of_the_hill");
l_frontlines_intro_0 = script.Parent:FindFirstChild("kill_confirmed", true);
assert(l_frontlines_intro_0 ~= nil, "kill_confirmed");
assert(require(l_frontlines_intro_0) == nil, "kill_confirmed");
l_frontlines_intro_0 = script.Parent:FindFirstChild("game_loop", true);
assert(l_frontlines_intro_0 ~= nil, "game_loop");
assert(require(l_frontlines_intro_0) == nil, "game_loop");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_state", true);
assert(l_frontlines_intro_0 ~= nil, "customization_state");
assert(require(l_frontlines_intro_0) == nil, "customization_state");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_loadouts", true);
assert(l_frontlines_intro_0 ~= nil, "customization_loadouts");
assert(require(l_frontlines_intro_0) == nil, "customization_loadouts");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_models", true);
assert(l_frontlines_intro_0 ~= nil, "customization_models");
assert(require(l_frontlines_intro_0) == nil, "customization_models");
l_frontlines_intro_0 = script.Parent:FindFirstChild("main_menu_pings", true);
assert(l_frontlines_intro_0 ~= nil, "main_menu_pings");
assert(require(l_frontlines_intro_0) == nil, "main_menu_pings");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_load_gui", true);
assert(l_frontlines_intro_0 ~= nil, "match_load_gui");
assert(require(l_frontlines_intro_0) == nil, "match_load_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_vote_gui", true);
assert(l_frontlines_intro_0 ~= nil, "match_vote_gui");
assert(require(l_frontlines_intro_0) == nil, "match_vote_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_status_gui", true);
assert(l_frontlines_intro_0 ~= nil, "match_status_gui");
assert(require(l_frontlines_intro_0) == nil, "match_status_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("victory_defeat_gui", true);
assert(l_frontlines_intro_0 ~= nil, "victory_defeat_gui");
assert(require(l_frontlines_intro_0) == nil, "victory_defeat_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("capture_point_gui", true);
assert(l_frontlines_intro_0 ~= nil, "capture_point_gui");
assert(require(l_frontlines_intro_0) == nil, "capture_point_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tag_bank_gui", true);
assert(l_frontlines_intro_0 ~= nil, "tag_bank_gui");
assert(require(l_frontlines_intro_0) == nil, "tag_bank_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tag_reserves_gui", true);
assert(l_frontlines_intro_0 ~= nil, "tag_reserves_gui");
assert(require(l_frontlines_intro_0) == nil, "tag_reserves_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("combat_progression_gui", true);
assert(l_frontlines_intro_0 ~= nil, "combat_progression_gui");
assert(require(l_frontlines_intro_0) == nil, "combat_progression_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("main_menu_navigation", true);
assert(l_frontlines_intro_0 ~= nil, "main_menu_navigation");
assert(require(l_frontlines_intro_0) == nil, "main_menu_navigation");
l_frontlines_intro_0 = script.Parent:FindFirstChild("loadout_preview", true);
assert(l_frontlines_intro_0 ~= nil, "loadout_preview");
assert(require(l_frontlines_intro_0) == nil, "loadout_preview");
l_frontlines_intro_0 = script.Parent:FindFirstChild("loadout_selector", true);
assert(l_frontlines_intro_0 ~= nil, "loadout_selector");
assert(require(l_frontlines_intro_0) == nil, "loadout_selector");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_slot_selector", true);
assert(l_frontlines_intro_0 ~= nil, "customization_slot_selector");
assert(require(l_frontlines_intro_0) == nil, "customization_slot_selector");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_type_selector", true);
assert(l_frontlines_intro_0 ~= nil, "customization_type_selector");
assert(require(l_frontlines_intro_0) == nil, "customization_type_selector");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_vertex_selector", true);
assert(l_frontlines_intro_0 ~= nil, "customization_vertex_selector");
assert(require(l_frontlines_intro_0) == nil, "customization_vertex_selector");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_subgraph_info", true);
assert(l_frontlines_intro_0 ~= nil, "customization_subgraph_info");
assert(require(l_frontlines_intro_0) == nil, "customization_subgraph_info");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_purchase_elements", true);
assert(l_frontlines_intro_0 ~= nil, "customization_purchase_elements");
assert(require(l_frontlines_intro_0) == nil, "customization_purchase_elements");
l_frontlines_intro_0 = script.Parent:FindFirstChild("equip_button", true);
assert(l_frontlines_intro_0 ~= nil, "equip_button");
assert(require(l_frontlines_intro_0) == nil, "equip_button");
l_frontlines_intro_0 = script.Parent:FindFirstChild("ui_anims", true);
assert(l_frontlines_intro_0 ~= nil, "ui_anims");
assert(require(l_frontlines_intro_0) == nil, "ui_anims");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_missions_gui", true);
assert(l_frontlines_intro_0 ~= nil, "user_missions_gui");
assert(require(l_frontlines_intro_0) == nil, "user_missions_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_data_gui", true);
assert(l_frontlines_intro_0 ~= nil, "user_data_gui");
assert(require(l_frontlines_intro_0) == nil, "user_data_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("store_gui", true);
assert(l_frontlines_intro_0 ~= nil, "store_gui");
assert(require(l_frontlines_intro_0) == nil, "store_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_skills_gui", true);
assert(l_frontlines_intro_0 ~= nil, "user_skills_gui");
assert(require(l_frontlines_intro_0) == nil, "user_skills_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("barracks_gui", true);
assert(l_frontlines_intro_0 ~= nil, "barracks_gui");
assert(require(l_frontlines_intro_0) == nil, "barracks_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("global_leaderboards_gui", true);
assert(l_frontlines_intro_0 ~= nil, "global_leaderboards_gui");
assert(require(l_frontlines_intro_0) == nil, "global_leaderboards_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_statistics_gui", true);
assert(l_frontlines_intro_0 ~= nil, "user_statistics_gui");
assert(require(l_frontlines_intro_0) == nil, "user_statistics_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("calling_card_gui", true);
assert(l_frontlines_intro_0 ~= nil, "calling_card_gui");
assert(require(l_frontlines_intro_0) == nil, "calling_card_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_settings_gui", true);
assert(l_frontlines_intro_0 ~= nil, "user_settings_gui");
assert(require(l_frontlines_intro_0) == nil, "user_settings_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_data_gui", true);
assert(l_frontlines_intro_0 ~= nil, "match_data_gui");
assert(require(l_frontlines_intro_0) == nil, "match_data_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("main_menu", true);
assert(l_frontlines_intro_0 ~= nil, "main_menu");
assert(require(l_frontlines_intro_0) == nil, "main_menu");
l_frontlines_intro_0 = script.Parent:FindFirstChild("sound_groups", true);
assert(l_frontlines_intro_0 ~= nil, "sound_groups");
assert(require(l_frontlines_intro_0) == nil, "sound_groups");
l_frontlines_intro_0 = script.Parent:FindFirstChild("auto_manager_equalizer", true);
assert(l_frontlines_intro_0 ~= nil, "auto_manager_equalizer");
assert(require(l_frontlines_intro_0) == nil, "auto_manager_equalizer");
l_frontlines_intro_0 = script.Parent:FindFirstChild("environment_sound_group", true);
assert(l_frontlines_intro_0 ~= nil, "environment_sound_group");
assert(require(l_frontlines_intro_0) == nil, "environment_sound_group");
l_frontlines_intro_0 = script.Parent:FindFirstChild("shell_ejection_sound", true);
assert(l_frontlines_intro_0 ~= nil, "shell_ejection_sound");
assert(require(l_frontlines_intro_0) == nil, "shell_ejection_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_damage_gfx", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_damage_gfx");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_damage_gfx");
l_frontlines_intro_0 = script.Parent:FindFirstChild("dirt_screen_effect", true);
assert(l_frontlines_intro_0 ~= nil, "dirt_screen_effect");
assert(require(l_frontlines_intro_0) == nil, "dirt_screen_effect");
l_frontlines_intro_0 = script.Parent:FindFirstChild("environment_obb_tree", true);
assert(l_frontlines_intro_0 ~= nil, "environment_obb_tree");
assert(require(l_frontlines_intro_0) == nil, "environment_obb_tree");
l_frontlines_intro_0 = script.Parent:FindFirstChild("cli_environment_zone", true);
assert(l_frontlines_intro_0 ~= nil, "cli_environment_zone");
assert(require(l_frontlines_intro_0) == nil, "cli_environment_zone");
l_frontlines_intro_0 = script.Parent:FindFirstChild("sol_environment_zones", true);
assert(l_frontlines_intro_0 ~= nil, "sol_environment_zones");
assert(require(l_frontlines_intro_0) == nil, "sol_environment_zones");
l_frontlines_intro_0 = script.Parent:FindFirstChild("capture_point_sound", true);
assert(l_frontlines_intro_0 ~= nil, "capture_point_sound");
assert(require(l_frontlines_intro_0) == nil, "capture_point_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("victory_defeat_sound", true);
assert(l_frontlines_intro_0 ~= nil, "victory_defeat_sound");
assert(require(l_frontlines_intro_0) == nil, "victory_defeat_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("main_menu_music", true);
assert(l_frontlines_intro_0 ~= nil, "main_menu_music");
assert(require(l_frontlines_intro_0) == nil, "main_menu_music");
l_frontlines_intro_0 = script.Parent:FindFirstChild("menu_button_sound", true);
assert(l_frontlines_intro_0 ~= nil, "menu_button_sound");
assert(require(l_frontlines_intro_0) == nil, "menu_button_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("purchase_sound", true);
assert(l_frontlines_intro_0 ~= nil, "purchase_sound");
assert(require(l_frontlines_intro_0) == nil, "purchase_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("environment_sound", true);
assert(l_frontlines_intro_0 ~= nil, "environment_sound");
assert(require(l_frontlines_intro_0) == nil, "environment_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("admin_feedback_sound", true);
assert(l_frontlines_intro_0 ~= nil, "admin_feedback_sound");
assert(require(l_frontlines_intro_0) == nil, "admin_feedback_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("sound_admin", true);
assert(l_frontlines_intro_0 ~= nil, "sound_admin");
assert(require(l_frontlines_intro_0) == nil, "sound_admin");
l_frontlines_intro_0 = script.Parent:FindFirstChild("kill_confirmed_sound", true);
assert(l_frontlines_intro_0 ~= nil, "kill_confirmed_sound");
assert(require(l_frontlines_intro_0) == nil, "kill_confirmed_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("bullet_impact_sound", true);
assert(l_frontlines_intro_0 ~= nil, "bullet_impact_sound");
assert(require(l_frontlines_intro_0) == nil, "bullet_impact_sound");
l_frontlines_intro_0 = script.Parent:FindFirstChild("main_menu_control", true);
assert(l_frontlines_intro_0 ~= nil, "main_menu_control");
assert(require(l_frontlines_intro_0) == nil, "main_menu_control");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_inventory", true);
assert(l_frontlines_intro_0 ~= nil, "user_inventory");
assert(require(l_frontlines_intro_0) == nil, "user_inventory");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_settings", true);
assert(l_frontlines_intro_0 ~= nil, "user_settings");
assert(require(l_frontlines_intro_0) == nil, "user_settings");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_calling_cards", true);
assert(l_frontlines_intro_0 ~= nil, "user_calling_cards");
assert(require(l_frontlines_intro_0) == nil, "user_calling_cards");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_statistics", true);
assert(l_frontlines_intro_0 ~= nil, "user_statistics");
assert(require(l_frontlines_intro_0) == nil, "user_statistics");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_skills", true);
assert(l_frontlines_intro_0 ~= nil, "user_skills");
assert(require(l_frontlines_intro_0) == nil, "user_skills");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_tuple", true);
assert(l_frontlines_intro_0 ~= nil, "match_tuple");
assert(require(l_frontlines_intro_0) == nil, "match_tuple");
l_frontlines_intro_0 = script.Parent:FindFirstChild("lighting_configuration", true);
assert(l_frontlines_intro_0 ~= nil, "lighting_configuration");
assert(require(l_frontlines_intro_0) == nil, "lighting_configuration");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tag_stack_indicator", true);
assert(l_frontlines_intro_0 ~= nil, "tag_stack_indicator");
assert(require(l_frontlines_intro_0) == nil, "tag_stack_indicator");
l_frontlines_intro_0 = script.Parent:FindFirstChild("user_interface_mode", true);
assert(l_frontlines_intro_0 ~= nil, "user_interface_mode");
assert(require(l_frontlines_intro_0) == nil, "user_interface_mode");
l_frontlines_intro_0 = script.Parent:FindFirstChild("bullet_impact_notification", true);
assert(l_frontlines_intro_0 ~= nil, "bullet_impact_notification");
assert(require(l_frontlines_intro_0) == nil, "bullet_impact_notification");
l_frontlines_intro_0 = script.Parent:FindFirstChild("survival_instinct_gui", true);
assert(l_frontlines_intro_0 ~= nil, "survival_instinct_gui");
assert(require(l_frontlines_intro_0) == nil, "survival_instinct_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("stalker_indicator", true);
assert(l_frontlines_intro_0 ~= nil, "stalker_indicator");
assert(require(l_frontlines_intro_0) == nil, "stalker_indicator");
l_frontlines_intro_0 = script.Parent:FindFirstChild("gamepad_cursor", true);
assert(l_frontlines_intro_0 ~= nil, "gamepad_cursor");
assert(require(l_frontlines_intro_0) == nil, "gamepad_cursor");
l_frontlines_intro_0 = script.Parent:FindFirstChild("aim_assist", true);
assert(l_frontlines_intro_0 ~= nil, "aim_assist");
assert(require(l_frontlines_intro_0) == nil, "aim_assist");
l_frontlines_intro_0 = script.Parent:FindFirstChild("haptic_feedback", true);
assert(l_frontlines_intro_0 ~= nil, "haptic_feedback");
assert(require(l_frontlines_intro_0) == nil, "haptic_feedback");
l_frontlines_intro_0 = script.Parent:FindFirstChild("mobile_control_gui", true);
assert(l_frontlines_intro_0 ~= nil, "mobile_control_gui");
assert(require(l_frontlines_intro_0) == nil, "mobile_control_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_mutual_score", true);
assert(l_frontlines_intro_0 ~= nil, "match_mutual_score");
assert(require(l_frontlines_intro_0) == nil, "match_mutual_score");
l_frontlines_intro_0 = script.Parent:FindFirstChild("new_radar_gui", true);
assert(l_frontlines_intro_0 ~= nil, "new_radar_gui");
assert(require(l_frontlines_intro_0) == nil, "new_radar_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("socials_credits_gui", true);
assert(l_frontlines_intro_0 ~= nil, "socials_credits_gui");
assert(require(l_frontlines_intro_0) == nil, "socials_credits_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("announcer_voicelines", true);
assert(l_frontlines_intro_0 ~= nil, "announcer_voicelines");
assert(require(l_frontlines_intro_0) == nil, "announcer_voicelines");
l_frontlines_intro_0 = script.Parent:FindFirstChild("leaderboard_gui", true);
assert(l_frontlines_intro_0 ~= nil, "leaderboard_gui");
assert(require(l_frontlines_intro_0) == nil, "leaderboard_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("combat_gui_toggle", true);
assert(l_frontlines_intro_0 ~= nil, "combat_gui_toggle");
assert(require(l_frontlines_intro_0) == nil, "combat_gui_toggle");
l_frontlines_intro_0 = script.Parent:FindFirstChild("client_state_blur", true);
assert(l_frontlines_intro_0 ~= nil, "client_state_blur");
assert(require(l_frontlines_intro_0) == nil, "client_state_blur");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_voicelines", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_voicelines");
assert(require(l_frontlines_intro_0) == nil, "soldier_voicelines");
l_frontlines_intro_0 = script.Parent:FindFirstChild("votekick_gui", true);
assert(l_frontlines_intro_0 ~= nil, "votekick_gui");
assert(require(l_frontlines_intro_0) == nil, "votekick_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("client_skills", true);
assert(l_frontlines_intro_0 ~= nil, "client_skills");
assert(require(l_frontlines_intro_0) == nil, "client_skills");
l_frontlines_intro_0 = script.Parent:FindFirstChild("nuclear_warhead", true);
assert(l_frontlines_intro_0 ~= nil, "nuclear_warhead");
assert(require(l_frontlines_intro_0) == nil, "nuclear_warhead");
l_frontlines_intro_0 = script.Parent:FindFirstChild("nuclear_explosion", true);
assert(l_frontlines_intro_0 ~= nil, "nuclear_explosion");
assert(require(l_frontlines_intro_0) == nil, "nuclear_explosion");
l_frontlines_intro_0 = script.Parent:FindFirstChild("spectate_nuke_camera", true);
assert(l_frontlines_intro_0 ~= nil, "spectate_nuke_camera");
assert(require(l_frontlines_intro_0) == nil, "spectate_nuke_camera");
l_frontlines_intro_0 = script.Parent:FindFirstChild("nuke_inbound_gui", true);
assert(l_frontlines_intro_0 ~= nil, "nuke_inbound_gui");
assert(require(l_frontlines_intro_0) == nil, "nuke_inbound_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("high_level_gui_visibility", true);
assert(l_frontlines_intro_0 ~= nil, "high_level_gui_visibility");
assert(require(l_frontlines_intro_0) == nil, "high_level_gui_visibility");
l_frontlines_intro_0 = script.Parent:FindFirstChild("black_frame_gui", true);
assert(l_frontlines_intro_0 ~= nil, "black_frame_gui");
assert(require(l_frontlines_intro_0) == nil, "black_frame_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("spare_magazines", true);
assert(l_frontlines_intro_0 ~= nil, "spare_magazines");
assert(require(l_frontlines_intro_0) == nil, "spare_magazines");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_hitboxes", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_hitboxes");
assert(require(l_frontlines_intro_0) == nil, "soldier_hitboxes");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_ragdoll", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_ragdoll");
assert(require(l_frontlines_intro_0) == nil, "soldier_ragdoll");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_jump_animation", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_jump_animation");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_jump_animation");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_sol_walk_animation", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_sol_walk_animation");
assert(require(l_frontlines_intro_0) == nil, "fpv_sol_walk_animation");
l_frontlines_intro_0 = script.Parent:FindFirstChild("equipment_joint_data", true);
assert(l_frontlines_intro_0 ~= nil, "equipment_joint_data");
assert(require(l_frontlines_intro_0) == nil, "equipment_joint_data");
l_frontlines_intro_0 = script.Parent:FindFirstChild("equipment_animation_data", true);
assert(l_frontlines_intro_0 ~= nil, "equipment_animation_data");
assert(require(l_frontlines_intro_0) == nil, "equipment_animation_data");
l_frontlines_intro_0 = script.Parent:FindFirstChild("magazine_bullets", true);
assert(l_frontlines_intro_0 ~= nil, "magazine_bullets");
assert(require(l_frontlines_intro_0) == nil, "magazine_bullets");
l_frontlines_intro_0 = script.Parent:FindFirstChild("throwable_core", true);
assert(l_frontlines_intro_0 ~= nil, "throwable_core");
assert(require(l_frontlines_intro_0) == nil, "throwable_core");
l_frontlines_intro_0 = script.Parent:FindFirstChild("soldier_culling", true);
assert(l_frontlines_intro_0 ~= nil, "soldier_culling");
assert(require(l_frontlines_intro_0) == nil, "soldier_culling");
l_frontlines_intro_0 = script.Parent:FindFirstChild("voicechat_client", true);
assert(l_frontlines_intro_0 ~= nil, "voicechat_client");
assert(require(l_frontlines_intro_0) == nil, "voicechat_client");
l_frontlines_intro_0 = script.Parent:FindFirstChild("main_menu_spawn", true);
assert(l_frontlines_intro_0 ~= nil, "main_menu_spawn");
assert(require(l_frontlines_intro_0) == nil, "main_menu_spawn");
l_frontlines_intro_0 = script.Parent:FindFirstChild("razer_chroma", true);
assert(l_frontlines_intro_0 ~= nil, "razer_chroma");
assert(require(l_frontlines_intro_0) == nil, "razer_chroma");
l_frontlines_intro_0 = script.Parent:FindFirstChild("weapon_optics", true);
assert(l_frontlines_intro_0 ~= nil, "weapon_optics");
assert(require(l_frontlines_intro_0) == nil, "weapon_optics");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_lights", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_lights");
assert(require(l_frontlines_intro_0) == nil, "fpv_lights");
l_frontlines_intro_0 = script.Parent:FindFirstChild("fpv_lasers", true);
assert(l_frontlines_intro_0 ~= nil, "fpv_lasers");
assert(require(l_frontlines_intro_0) == nil, "fpv_lasers");
l_frontlines_intro_0 = script.Parent:FindFirstChild("tpv_lasers_lights", true);
assert(l_frontlines_intro_0 ~= nil, "tpv_lasers_lights");
assert(require(l_frontlines_intro_0) == nil, "tpv_lasers_lights");
l_frontlines_intro_0 = script.Parent:FindFirstChild("main_menu_camera", true);
assert(l_frontlines_intro_0 ~= nil, "main_menu_camera");
assert(require(l_frontlines_intro_0) == nil, "main_menu_camera");
l_frontlines_intro_0 = script.Parent:FindFirstChild("main_menu_blur", true);
assert(l_frontlines_intro_0 ~= nil, "main_menu_blur");
assert(require(l_frontlines_intro_0) == nil, "main_menu_blur");
l_frontlines_intro_0 = script.Parent:FindFirstChild("squads_client", true);
assert(l_frontlines_intro_0 ~= nil, "squads_client");
assert(require(l_frontlines_intro_0) == nil, "squads_client");
l_frontlines_intro_0 = script.Parent:FindFirstChild("kill_confirmed_rings", true);
assert(l_frontlines_intro_0 ~= nil, "kill_confirmed_rings");
assert(require(l_frontlines_intro_0) == nil, "kill_confirmed_rings");
l_frontlines_intro_0 = script.Parent:FindFirstChild("domination_rings", true);
assert(l_frontlines_intro_0 ~= nil, "domination_rings");
assert(require(l_frontlines_intro_0) == nil, "domination_rings");
l_frontlines_intro_0 = script.Parent:FindFirstChild("credits_popup", true);
assert(l_frontlines_intro_0 ~= nil, "credits_popup");
assert(require(l_frontlines_intro_0) == nil, "credits_popup");
l_frontlines_intro_0 = script.Parent:FindFirstChild("match_scorebar_gui", true);
assert(l_frontlines_intro_0 ~= nil, "match_scorebar_gui");
assert(require(l_frontlines_intro_0) == nil, "match_scorebar_gui");
l_frontlines_intro_0 = script.Parent:FindFirstChild("header_animations", true);
assert(l_frontlines_intro_0 ~= nil, "header_animations");
assert(require(l_frontlines_intro_0) == nil, "header_animations");
l_frontlines_intro_0 = script.Parent:FindFirstChild("mobile_conversion", true);
assert(l_frontlines_intro_0 ~= nil, "mobile_conversion");
assert(require(l_frontlines_intro_0) == nil, "mobile_conversion");
l_frontlines_intro_0 = script.Parent:FindFirstChild("customization_level_progression", true);
assert(l_frontlines_intro_0 ~= nil, "customization_level_progression");
assert(require(l_frontlines_intro_0) == nil, "customization_level_progression");
if game:GetService("GuiService"):IsTenFootInterface() then
    game.Players.LocalPlayer.PlayerGui.frontlines_gui.ChatFrame.Visible = false;
else
    l_frontlines_intro_0 = script.Parent:FindFirstChild("chat_gui", true);
    assert(l_frontlines_intro_0 ~= nil, "chat_gui");
    assert(require(l_frontlines_intro_0) == nil, "chat_gui");
end;
if game.PlaceId ~= 12736476421 and game:GetService("UserInputService").TouchEnabled and not game:GetService("UserInputService").KeyboardEnabled then
    l_frontlines_intro_0 = script.Parent:FindFirstChild("mobile_only_server_gui", true);
    assert(l_frontlines_intro_0 ~= nil, "mobile_only_server_gui");
    assert(require(l_frontlines_intro_0) == nil, "mobile_only_server_gui");
end;
if _G.trailer_team_users[game.Players.LocalPlayer.UserId] then
    l_frontlines_intro_0 = script.Parent:FindFirstChild("spectate_match_toggle", true);
    assert(l_frontlines_intro_0 ~= nil, "spectate_match_toggle");
    assert(require(l_frontlines_intro_0) == nil, "spectate_match_toggle");
    l_frontlines_intro_0 = script.Parent:FindFirstChild("spectate_match_camera", true);
    assert(l_frontlines_intro_0 ~= nil, "spectate_match_camera");
    assert(require(l_frontlines_intro_0) == nil, "spectate_match_camera");
    l_frontlines_intro_0 = script.Parent:FindFirstChild("trailer_settings_gui", true);
    assert(l_frontlines_intro_0 ~= nil, "trailer_settings_gui");
    assert(require(l_frontlines_intro_0) == nil, "trailer_settings_gui");
end;
l_capture_point_3d_0 = Instance.new("BindableEvent");
l_capture_point_3d_0.Event:Connect(function() --[[ Line: 1427 ]]
    _G.utils.net_msg_util.c_prep_net_msg(_G.globals.null_net_msg_state, _G.enums.c_net_msg.SET_CLI_STATE, _G.cli_state_t.COMBAT_POST_DEATH);
end);
for _ = 1, 5 do
    if not pcall(game:GetService("StarterGui").SetCore, game:GetService("StarterGui"), "ResetButtonCallback", l_capture_point_3d_0) then
        wait(1);
    else
        break;
    end;
end;
l_capture_point_3d_0 = require(game.ReplicatedStorage:WaitForChild("CmdrClient"));
l_capture_point_3d_0:SetActivationKeys({
    Enum.KeyCode.F2
});
l_capture_point_3d_0:HandleEvent("set_arsenal_data", function(v43, v44) --[[ Line: 1459 ]]
    _G.set_arsenal_data_by_path(v43, v44);
end);
l_capture_point_3d_0 = _G.exe_set_t.HB;
l_frontlines_intro_0 = _G.exe_set_t.ST;
l_frontlines_loading_screen_0 = _G.exe_set_t.NET_INGRESS_STEP;
l_capture_point_tracker_0 = _G.exe_set_t.NET_EGRESS_STEP;
v19 = _G.exe_set_t.CLI_STATE_RS;
local l_CLI_STATE_ST_FIRST_0 = _G.exe_set_t.CLI_STATE_ST_FIRST;
local l_CLI_STATE_ST_60_HZ_0 = _G.exe_set_t.CLI_STATE_ST_60_HZ;
local l_CLI_STATE_ST_0 = _G.exe_set_t.CLI_STATE_ST;
local l_CLI_STATE_HB_60_HZ_0 = _G.exe_set_t.CLI_STATE_HB_60_HZ;
local l_clock_state_0 = _G.globals.clock_state;
local l_exe_set_0 = _G.exe_set;
local l_RunService_0 = game:GetService("RunService");
local v52 = 0;
do
    local l_v52_0 = v52;
    local v55 = l_RunService_0.Heartbeat:Connect(function(_) --[[ Line: 1488 ]]
        if l_v52_0 >= 0.016666666666666666 or math.abs(l_v52_0 - 0.016666666666666666) < 0.01 then
            l_exe_set_0(l_capture_point_3d_0, l_v52_0);
            l_exe_set_0(l_CLI_STATE_HB_60_HZ_0, l_clock_state_0.server_tick, l_v52_0);
            l_exe_set_0(l_capture_point_tracker_0, l_clock_state_0.client_tick, l_clock_state_0.server_tick, l_v52_0);
            l_v52_0 = 0;
        end;
    end);
    local v59 = l_RunService_0.Stepped:Connect(function(v56, v57) --[[ Line: 1499 ]]
        l_v52_0 = l_v52_0 + v57;
        l_exe_set_0(l_CLI_STATE_ST_FIRST_0, v56, v57);
        if l_v52_0 >= 0.016666666666666666 or math.abs(l_v52_0 - 0.016666666666666666) < 0.01 then
            l_exe_set_0(l_frontlines_loading_screen_0, l_clock_state_0.client_tick);
            l_exe_set_0(l_CLI_STATE_ST_60_HZ_0, v56, l_v52_0);
            local l_l_clock_state_0_0 = l_clock_state_0;
            l_l_clock_state_0_0.client_tick = l_l_clock_state_0_0.client_tick + 1;
        end;
        l_exe_set_0(l_CLI_STATE_ST_0, v56, v57);
        l_exe_set_0(l_frontlines_intro_0, v57);
    end);
    local v61 = l_RunService_0.RenderStepped:Connect(function(v60) --[[ Line: 1517 ]]
        l_exe_set_0(v19, v60);
    end);
    game:GetService("ScriptContext").Error:Connect(function(_, _, v64) --[[ Line: 1521 ]]
        if v64 == script then
            v55:Disconnect();
            v59:Disconnect();
            v61:Disconnect();
        end;
    end);
end;
_G.utils.net_msg_util.c_prep_net_msg(_G.globals.null_net_msg_state, _G.enums.c_net_msg.SET_CLI_STATE, _G.cli_state_t.PERSISTENT_DATA_LOAD);
print("[client_main]: execution completed");
