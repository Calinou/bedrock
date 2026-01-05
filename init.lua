--[[
=====================================================================
Minetest mod: Bedrock

Copyright (c) 2013-2017 Hugo Locurcio and contributors.
Licensed under the zlib license. See LICENSE.md for more information.
=====================================================================
--]]

core.register_ore({
	ore_type = "scatter",
	ore = "bedrock:bedrock",
	ore_param2 = 0,
	wherein = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 5,
	clust_size = 2,
	y_min = -30912,

	-- 256 layers of bedrock (caves will still cut through it)
	y_max = -30656,
})

core.register_ore({
	ore_type = "scatter",
	ore = "bedrock:deepstone",
	ore_param2 = 0,
	wherein = "default:stone",
	clust_scarcity = 1,
	clust_num_ores = 5,
	clust_size = 2,
	y_min = -30656,
	y_max = -30000,
})

core.register_node("bedrock:bedrock", {
	description = "Bedrock",
	tiles = {"bedrock_bedrock.png"},
	drop = "",
	paramtype2 = "facedir",
	place_param2 = 0,
	-- Set `unbreakable` for Map Tools' admin pickaxe
	groups = {unbreakable = 1, not_in_creative_inventory = 1},
	sounds = default.node_sound_stone_defaults(),
})

core.register_node("bedrock:deepstone", {
	description = "Deepstone",
	tiles = {"bedrock_deepstone.png"},
	drop = "default:stone", -- Intended
	paramtype2 = "facedir",
	place_param2 = 0,
	groups = {cracky = 1},
	sounds = default.node_sound_stone_defaults(),
})

if core.get_modpath("moreblocks") then
	stairsplus:register_all("bedrock", "deepstone", "bedrock:deepstone", {
		description = "Deepstone",
		tiles = {"bedrock_deepstone.png"},
		groups = {cracky = 1},
		sounds = default.node_sound_stone_defaults(),
	})

	stairsplus:register_all("bedrock", "bedrock", "bedrock:bedrock", {
		description = "Bedrock",
		tiles = {"bedrock_bedrock.png"},
		drop = "",
		groups = {unbreakable = 1},
		sounds = default.node_sound_stone_defaults(),
	})
end

core.register_alias("bedrock", "bedrock:bedrock")
core.register_alias("deepstone", "bedrock:deepstone")
