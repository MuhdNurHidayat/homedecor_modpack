local S = homedecor.gettext
dofile(homedecor.modpath.."/furniture.lua")

local bbq_cbox = {
	type = "fixed",
	fixed = { -0.5, -0.5, -0.3125, 0.5, 0.53125, 0.3125 }
}

homedecor.register("barbecue", {
	description = "Barbecue",
	mesh = "homedecor_barbecue.obj",
	tiles = {
		"forniture_black_metal.png",
		{	name="homedecor_embers.png",
			animation={
				type="vertical_frames",
				aspect_w=16,
				aspect_h=16,
				length=2
			}
		},
		"homedecor_barbecue_meat.png",
	},
	groups = { snappy=3 },
	light_source = 9,
	selection_box = bbq_cbox,
	collision_box = bbq_cbox,
	expand = { top="air" },
})

minetest.register_alias("homedecor:barbecue_meat", "air")

local bl1_cbox = {
	type = "fixed",
	fixed = { -0.5, -0.5, -0.25, 1.5, 0.5, 0.5 }
}

homedecor.register("bench_large_1", {
	mesh = "homedecor_bench_large_1.obj",
	tiles = {
		"homedecor_old_wood.png",
		"homedecor_tile_wrought_iron2.png"
	},
	description = "Garden Bench (style 1)",
	inventory_image = "homedecor_bench_large_1_inv.png",
	groups = { snappy = 3 },
	expand = { right="air" },
	sounds = default.node_sound_wood_defaults(),
	selection_box = bl1_cbox,
	collision_box = bl1_cbox,
})

minetest.register_alias("homedecor:bench_large_1_left", "homedecor:bench_large_1")
minetest.register_alias("homedecor:bench_large_1_right", "air")

homedecor.register("bench_large_2_left", {
	description = "Garden Bench (style 2)",
	tiles = {
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_bench_large_2_left_back.png",
		"homedecor_bench_large_2_left_back.png^[transformFX"
	},
	inventory_image = "homedecor_bench_large_2_inv.png",
	groups = {snappy=3},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, 0.375, -0.375, 0.5, 0.5}, -- NodeBox1
			{-0.375, 0.3125, 0.4375, 0.5, 0.4375, 0.5}, -- NodeBox2
			{-0.375, -0.0625, 0.4375, 0.5, 0.0625, 0.5}, -- NodeBox3
			{-0.3125, 0.0625, 0.45, -0.25, 0.3125, 0.48}, -- NodeBox4
			{-0.1875, 0.0625, 0.45, -0.125, 0.3125, 0.48}, -- NodeBox5
			{-0.0625, 0.0625, 0.45, 0, 0.3125, 0.48}, -- NodeBox6
			{0.0625, 0.0625, 0.45, 0.125, 0.3125, 0.48}, -- NodeBox7
			{0.1875, 0.0625, 0.45, 0.25, 0.3125, 0.48}, -- NodeBox8
			{0.3125, 0.0625, 0.45, 0.375, 0.3125, 0.48}, -- NodeBox9
			{0.4375, 0.0625, 0.45, 0.5, 0.3125, 0.48}, -- NodeBox10
			{-0.5, 0.0625, -0.145362, -0.375, 0.125, 0.375}, -- NodeBox11
			{-0.5, -0.5, -0.0625, -0.375, 0.0625, 0.0625}, -- NodeBox12
			{-0.4375, -0.125, -0.0625, 0.5, -0.0911603, 0.4375}, -- NodeBox13
			{-0.4375, -0.4375, 0.0625, -0.375, -0.3125, 0.375}, -- NodeBox14
			{-0.375, -0.342324, 0.25, 0.5, -0.4375, 0.1875}, -- NodeBox15
			{-0.5, -0.25, -0.0290173, 0.5, -0.125, 0.0125346}, -- NodeBox16
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.5, -0.5, -0.15625, 1.5, 0.5, 0.5 }
	},
	expand = { right="homedecor:bench_large_2_right" },
	--[[
	on_rightclick = function(pos, node, clicker)
		pos.y = pos.y-0 -- player's sit position.
		homedecor.sit_exec(pos, node, clicker)
	end,
	--]]
})

homedecor.register("bench_large_2_right", {
	tiles = {
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_bench_large_2_right_back.png",
		"homedecor_bench_large_2_right_back.png^[transformFX"
	},
	groups = {snappy=3},
	node_box = {
		type = "fixed",
		fixed = {
			{0.375, -0.5, 0.375, 0.5, 0.5, 0.5}, -- NodeBox1
			{-0.5, 0.3125, 0.4375, 0.375, 0.4375, 0.5}, -- NodeBox2
			{-0.5, -0.0625, 0.4375, 0.375, 0.0625, 0.5}, -- NodeBox3
			{-0.5, 0.0625, 0.45, -0.4375, 0.3125, 0.48}, -- NodeBox4
			{-0.375, 0.0625, 0.45, -0.3125, 0.3125, 0.48}, -- NodeBox5
			{-0.25, 0.0625, 0.45, -0.1875, 0.3125, 0.48}, -- NodeBox6
			{-0.125, 0.0625, 0.45, -0.0625, 0.3125, 0.48}, -- NodeBox7
			{0, 0.0625, 0.45, 0.0625, 0.3125, 0.48}, -- NodeBox8
			{0.125, 0.0625, 0.45, 0.1875, 0.3125, 0.48}, -- NodeBox9
			{0.25, 0.0625, 0.45, 0.3125, 0.3125, 0.48}, -- NodeBox10
			{0.375, 0.0625, -0.145362, 0.5, 0.125, 0.375}, -- NodeBox11
			{0.375, -0.5, -0.0625, 0.5, 0.125, 0.0625}, -- NodeBox12
			{0.375, -0.4375, 0.0625, 0.4375, -0.3125, 0.375}, -- NodeBox13
			{-0.5, -0.4375, 0.1875, 0.375, -0.342324, 0.25}, -- NodeBox14
			{-0.5, -0.125, -0.0625, 0.4375, -0.0911603, 0.4375}, -- NodeBox15
			{-0.5, -0.25, -0.0290173, 0.5, -0.125, 0.0125346}, -- NodeBox16
		}
	},
	selection_box = homedecor.nodebox.null,
})

local dc_cbox = {
	type = "fixed",
	fixed = { -0.5, -0.5, -0.5, 0.5, 0, 1 }
}

homedecor.register("deckchair", {
	mesh = "homedecor_deckchair.obj",
	tiles = {"homedecor_deckchair.png"},
	description = "Deck Chair",
	groups = { snappy = 3 },
	expand = { forward="air" },
	sounds = default.node_sound_wood_defaults(),
	selection_box = dc_cbox,
	collision_box = dc_cbox,
})

minetest.register_alias("homedecor:deckchair_foot", "homedecor:deckchair")
minetest.register_alias("homedecor:deckchair_head", "air")

homedecor.register("deckchair_striped_blue", {
	mesh = "homedecor_deckchair.obj",
	tiles = {"homedecor_deckchair_striped_blue.png"},
	description = "Deck Chair",
	groups = { snappy = 3 },
	expand = { forward="air" },
	sounds = default.node_sound_wood_defaults(),
	selection_box = dc_cbox,
	collision_box = dc_cbox,
})

homedecor.register("doghouse", {
	mesh = "homedecor_doghouse.obj",
	tiles = {
		"homedecor_shingles_terracotta.png",
		"default_wood.png",
		"building_blocks_towel.png"
	},
	description = "Doghouse",
	inventory_image = "homedecor_doghouse_inv.png",
	selection_box = homedecor.nodebox.slab_y(1.5),
	collision_box = homedecor.nodebox.slab_y(1.5),
	groups = {snappy=3},
	expand = { top="air" },
})

minetest.register_alias("homedecor:doghouse_roof", "air")
minetest.register_alias("homedecor:doghouse_base", "homedecor:doghouse")

homedecor.register("simple_bench", {
	tiles = {
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_generic_wood.png",
		"homedecor_bench_large_2_left_back.png",
		"homedecor_bench_large_2_left_back.png^[transformFX"
	},
	description = "Simple Bench",
	groups = {snappy=3},
	node_box = {
	type = "fixed",
	fixed = {
			{-0.5, -0.15, 0,  0.5,  -0.05, 0.4},
			{-0.4, -0.5,  0.1, -0.3, -0.15, 0.3},
			{ 0.3, -0.5,  0.1,  0.4, -0.15, 0.3},
			}
	},
	--[[
	on_rightclick = function(pos, node, clicker)
		pos.y = pos.y-0 -- player's sit position.
		homedecor.sit_exec(pos, node, clicker)
	end,
	--]]
})

homedecor.register("stonepath", {
	description = "Garden stone path",
	tiles = {
		"default_stone.png"
	},
	inventory_image = "homedecor_stonepath_inv.png",
	groups = { snappy=3 },
	node_box = {
		type = "fixed",
		fixed = {
			{-0.4375, -0.5, 0.3125, -0.3125, -0.48, 0.4375}, -- NodeBox1
			{-0.25, -0.5, 0.125, 0, -0.48, 0.375}, -- NodeBox2
			{0.125, -0.5, 0.125, 0.4375, -0.48, 0.4375}, -- NodeBox3
			{-0.4375, -0.5, -0.125, -0.25, -0.48, 0.0625}, -- NodeBox4
			{-0.0625, -0.5, -0.25, 0.25, -0.48, 0.0625}, -- NodeBox5
			{0.3125, -0.5, -0.25, 0.4375, -0.48, -0.125}, -- NodeBox6
			{-0.3125, -0.5, -0.375, -0.125, -0.48, -0.1875}, -- NodeBox7
			{0.125, -0.5, -0.4375, 0.25, -0.48, -0.3125}, -- NodeBox8
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.4375, -0.5, -0.4375, 0.4375, -0.4, 0.4375 }
	}
})

homedecor.register("swing", {
	description = "Tree's swing",
	tiles = {
		"homedecor_swing_top.png",
		"homedecor_swing_top.png^[transformR180",
		"homedecor_swing_top.png"
	},
	inventory_image = "homedecor_swing_inv.png",
	groups = { snappy=3, oddly_breakable_by_hand=3 },
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, 0.33, -0.125,  0.3125, 0.376, 0.1875}, -- NodeBox1
			{-0.3125, 0.376, 0.025, -0.3,    0.5,   0.0375}, -- NodeBox2
			{ 0.3,    0.376, 0.025,  0.3125, 0.5,   0.0375}, -- NodeBox3
		}
	},
	selection_box = {
		type = "fixed",
		fixed = { -0.3125, 0.33, -0.125, 0.3125, 0.5, 0.1875 }
	},
	on_place = function(itemstack, placer, pointed_thing)
		isceiling, pos = homedecor.find_ceiling(itemstack, placer, pointed_thing)
		if isceiling then
			local height = 0

			for i = 0, 4 do	-- search up to 5 spaces downward from the ceiling for the first non-buildable-to node...
				height = i
				local testpos = { x=pos.x, y=pos.y-i-1, z=pos.z }
				local testnode = minetest.get_node(testpos)
				local testreg = core.registered_nodes[testnode.name]

				if not testreg.buildable_to then
					if i < 1 then
						minetest.chat_send_player(placer:get_player_name(), "No room under there to hang a swing.")
						return
					else
						break
					end
				end
			end

			for j = 0, height do -- then fill that space with ropes...
				local testpos = { x=pos.x, y=pos.y-j, z=pos.z }
				local testnode = minetest.get_node(testpos)
				local testreg = core.registered_nodes[testnode.name]
				minetest.set_node(testpos, { name = "homedecor:swing_rope", param2 = fdir })
			end

			minetest.set_node({ x=pos.x, y=pos.y-height, z=pos.z }, { name = "homedecor:swing", param2 = fdir })

			if not homedecor.expect_infinite_stacks then
				itemstack:take_item()
				return itemstack
			end

		else
			minetest.chat_send_player(placer:get_player_name(), "You have to point at the bottom side of an overhanging object to place a swing.")
		end
	end,
	after_dig_node = function(pos, oldnode, oldmetadata, digger)
		for i = 0, 4 do
			local testpos = { x=pos.x, y=pos.y+i+1, z=pos.z }
			if minetest.get_node(testpos).name == "homedecor:swing_rope" then
				minetest.remove_node(testpos)
			else
				return
			end
		end
	end
})

homedecor.register("swing_rope", {
	tiles = {
		"homedecor_swingrope_sides.png"
	},
	groups = { not_in_creative_inventory=1 },
	node_box = {
		type = "fixed",
		fixed = {
			{-0.3125, -0.5, 0.025, -0.3, 0.5, 0.0375}, -- NodeBox1
			{0.3, -0.5, 0.025, 0.3125, 0.5, 0.0375}, -- NodeBox2
		}
	},
	selection_box = homedecor.nodebox.null
})

homedecor.register("well", {
	mesh = "homedecor_well.obj",
	tiles = {
		"homedecor_rope_texture.png",
		"forniture_metal.png",
		"default_water.png",
		"default_cobble.png",
		"default_wood.png",
		"homedecor_shingles_wood.png"
	},
	inventory_image = "homedecor_well_inv.png",
	description = "Water well",
	groups = { snappy = 3 },
	selection_box = homedecor.nodebox.slab_y(2),
	collision_box = homedecor.nodebox.slab_y(2),
	expand = { top="air" },
})

minetest.register_alias("homedecor:well_top", "air")
minetest.register_alias("homedecor:well_base", "homedecor:well")

