--[[
****
Stairs+
by Calinou
Licensed under the zlib/libpng license for code and CC BY-SA 3.0 Unported for textures, see LICENSE.txt for info.
****
--]]

stairsplus = {}

-- Node will be called stairsplus:stair_<subname>

function stairsplus.register_stair(subname, recipeitem, groups, images, description, drop)
		minetest.register_node(":stairsplus:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(":stairs:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(":stairsplus:stair_" .. subname .. "_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:stair_" .. drop,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(":stairsplus:stair_" .. subname .. "_right_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{0, -0.5, -0.5, 0.5, 0, 0.5},
				{0, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, -0.5, -0.5, 0.5, 0, 0.5},
				{0, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(":stairsplus:stair_" .. subname .. "_right_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{0, 0, -0.5, 0.5, 0.5, 0.5},
				{0, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{0, 0, -0.5, 0.5, 0.5, 0.5},
				{0, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:stair_" .. drop,
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_wall_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:stair_" .. drop .. "_wall_half",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_wall_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:stair_" .. drop .. "_wall_half",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_inner", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:stair_" .. drop .. "_inner",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_outer", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:stair_" .. drop .. "_outer",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_inner_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:stair_" .. drop .. "_inner",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node(":stairsplus:stair_" .. subname .. "_outer_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:stair_" .. drop .. "_outer",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. " 8",
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. " 8",
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_wall 8",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, ""},
			{recipeitem, "", ""},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_wall 8",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_wall 2",
		recipe = {
			{"stairsplus:stair_" .. subname, "stairsplus:stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_wall 2",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_inverted", "stairsplus:stair_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. " 2",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_wall"},
			{"stairsplus:stair_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_inner 1",
		recipe = {
			{"stairsplus:micro_" .. subname .. "_bottom", "stairsplus:stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_outer 1",
		recipe = {
			{"stairsplus:micro_" .. subname .. "_bottom"},
			{"stairsplus:slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_half 1",
		recipe = {
			{"stairsplus:micro_" .. subname .. "_bottom"},
			{"stairsplus:panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_half_inverted 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_half 1"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_half 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_half_inverted 1"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_right_half 2",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_half", "stairsplus:stair_" .. subname .. "_half"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_half 2",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_right_half", "stairsplus:stair_" .. subname .. "_right_half"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_right_half_inverted 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_right_half"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_right_half 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_right_half_inverted"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_half_inverted 2",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_right_half_inverted", "stairsplus:stair_" .. subname .. "_right_half_inverted"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_right_half_inverted 2",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_half_inverted", "stairsplus:stair_" .. subname .. "_half_inverted"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_inner_inverted 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_inner"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_outer_inverted 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_outer"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_inner 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_inner_inverted"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_outer 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_outer_inverted"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_wall_half 2",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_wall 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_wall_half"},
			{"stairsplus:stair_" .. subname .. "_wall_half"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_wall_half_inverted 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_wall_half"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_wall_half 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_wall_half_inverted"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. "_inverted 1",
		recipe = {
			{"stairsplus:stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:stair_" .. subname .. " 1",
		recipe = {
			{"stairsplus:stair_" .. subname .. "_inverted"},
		},
	})
end

-- Node will be called stairsplus:slab_<subname>

function stairsplus.register_slab(subname, recipeitem, groups, images, description, drop)
	minetest.register_node(":stairsplus:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:slab_" .. drop,
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y - 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == "stairsplus:slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == "stairsplus:slab_" .. subname .. "_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack("stairsplus:slab_" .. subname .. "_three_quarter")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(":stairs:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:slab_" .. drop,
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(":stairsplus:slab_" .. subname .. "_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:slab_" .. drop .. "_inverted",
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y + 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == "stairsplus:slab_" .. subname .. "_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == "stairsplus:slab_" .. subname .. "_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack("stairsplus:slab_" .. subname .. "_three_quarter_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})
	
	minetest.register_node(":stairsplus:slab_" .. subname .. "_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:slab_" .. drop .. "_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(":stairsplus:slab_" .. subname .. "_quarter", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:slab_" .. drop .. "_quarter",
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, -0.25, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y - 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == "stairsplus:slab_" .. subname .. "_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack("stairsplus:slab_" .. subname)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == "stairsplus:slab_" .. subname then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack("stairsplus:slab_" .. subname .. "_three_quarter")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == "stairsplus:slab_" .. subname .. "_three_quarter" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(":stairsplus:slab_" .. subname .. "_quarter_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:slab_" .. drop .. "_quarter",
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0.25, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
		on_place = function(itemstack, placer, pointed_thing)
			if pointed_thing.type ~= "node" then
				return itemstack
			end

			-- If it's being placed on an another similar one, replace it with
			-- a full block
			local slabpos = nil
			local slabnode = nil
			local p1 = pointed_thing.above
			p1 = {x = p1.x, y = p1.y + 1, z = p1.z}
			local n1 = minetest.env:get_node(p1)
			if n1.name == "stairsplus:slab_" .. subname .. "_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack("stairsplus:slab_" .. subname .. "_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == "stairsplus:slab_" .. subname .. "_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack("stairsplus:slab_" .. subname .. "_three_quarter_inverted")
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end
			
			if n1.name == "stairsplus:slab_" .. subname .. "_three_quarter_inverted" then
				slabpos = p1
				slabnode = n1
			end
			if slabpos then
				-- Remove the slab at slabpos
				minetest.env:remove_node(slabpos)
				-- Make a fake stack of a single item and try to place it
				local fakestack = ItemStack(recipeitem)
				pointed_thing.above = slabpos
				fakestack = minetest.item_place(fakestack, placer, pointed_thing)
				-- If the item was taken from the fake stack, decrement original
				if not fakestack or fakestack:is_empty() then
					itemstack:take_item(1)
				-- Else put old node back
				else
					minetest.env:set_node(slabpos, slabnode)
				end
				return itemstack
			end

			-- Otherwise place regularly
			return minetest.item_place(itemstack, placer, pointed_thing)
		end,
	})

	minetest.register_node(":stairsplus:slab_" .. subname .. "_three_quarter", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:slab_" .. drop .. "_three_quarter",
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0.25, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_node(":stairsplus:slab_" .. subname .. "_three_quarter_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:slab_" .. drop .. "_three_quarter",
		paramtype = "light",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.25, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.25, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. " 6",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_wall 6",
		recipe = {
			{recipeitem},
			{recipeitem},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_inverted 1",
		recipe = {
			{"stairsplus:slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. " 1",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem .. " 1",
		recipe = {
			{"stairsplus:slab_" .. subname},
			{"stairsplus:slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = recipeitem .. " 1",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_inverted"},
			{"stairsplus:slab_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem .. " 1",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_wall", "stairsplus:slab_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem,
		recipe = {
			{"stairsplus:slab_" .. subname},
			{"stairsplus:slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_quarter 6",
		recipe = {
			{"stairsplus:slab_" .. subname, "stairsplus:slab_" .. subname, "stairsplus:slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_quarter_inverted 1",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_quarter"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_quarter 1",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_quarter_inverted"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_three_quarter_inverted 1",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_three_quarter"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_three_quarter 1",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_three_quarter_inverted"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_three_quarter 1",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_quarter"},
			{"stairsplus:slab_" .. subname .. "_quarter"},
			{"stairsplus:slab_" .. subname .. "_quarter"},
		},
	})

	minetest.register_craft({
		output = "stairsplus:slab_" .. subname .. "_quarter 6",
		recipe = {
			{"stairsplus:slab_" .. subname .. "_three_quarter"},
			{"stairsplus:slab_" .. subname .. "_three_quarter"},
		},
	})
end

-- Node will be called stairsplus:panel_<subname>

function stairsplus.register_panel(subname, recipeitem, groups, images, description, drop)
	minetest.register_node(":stairsplus:panel_" .. subname .. "_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(":stairsplus:panel_" .. subname .. "_top", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(":stairsplus:panel_" .. subname .. "_vertical", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output = "stairsplus:panel_" .. subname .. "_bottom 8",
		recipe = {
			{recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:panel_" .. subname .. "_vertical 8",
		recipe = {
			{recipeitem},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:panel_" .. subname .. "_top 1",
		recipe = {
			{"stairsplus:panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:panel_" .. subname .. "_bottom 1",
		recipe = {
			{"stairsplus:panel_" .. subname .. "_top"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:panel_" .. subname .. "_vertical 2",
		recipe = {
			{"stairsplus:panel_" .. subname .. "_bottom"},
			{"stairsplus:panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:panel_" .. subname .. "_bottom 2",
		recipe = {
			{"stairsplus:panel_" .. subname .. "_vertical", "stairsplus:panel_" .. subname .. "_vertical"},
		},
	})
end

-- Node will be called stairsplus:micro_<subname>

function stairsplus.register_micro(subname, recipeitem, groups, images, description, drop)
	minetest.register_node(":stairsplus:micro_" .. subname .. "_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:micro_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node(":stairsplus:micro_" .. subname .. "_top", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "stairsplus:micro_" .. drop .. "_top",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output = "stairsplus:micro_" .. subname .. "_bottom 8",
		recipe = {
			{"default:stick"},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:micro_" .. subname .. "_top 1",
		recipe = {
			{"stairsplus:micro_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = "stairsplus:micro_" .. subname .. "_bottom 1",
		recipe = {
			{"stairsplus:micro_" .. subname .. "_top"},
		},
	})
end

-- Nodes will be called stairsplus:{stair,slab,panel,micro}_<subname>
function stairsplus.register_stair_and_slab_and_panel_and_micro(subname, recipeitem, groups, images, desc_stair, desc_slab, desc_panel, desc_micro, drop)
	stairsplus.register_stair(subname, recipeitem, groups, images, desc_stair, drop)
	stairsplus.register_slab(subname, recipeitem, groups, images, desc_slab, drop)
	stairsplus.register_panel(subname, recipeitem, groups, images, desc_panel, drop)
	stairsplus.register_micro(subname, recipeitem, groups, images, desc_micro, drop)
end

stairsplus.register_stair_and_slab_and_panel_and_micro("wood", "default:wood",
		{snappy=1,choppy=2,oddly_breakable_by_hand=2,flammable=3},
		{"default_wood.png"},
		"Wooden Stairs",
		"Wooden Slab",
		"Wooden Panel",
		"Wooden Microblock",
		"wood")

stairsplus.register_stair_and_slab_and_panel_and_micro("stone", "default:stone",
		{cracky=3},
		{"default_stone.png"},
		"Stone Stairs",
		"Stone Slab",
		"Stone Panel",
		"Stone Microblock",
		"cobble")

stairsplus.register_stair_and_slab_and_panel_and_micro("cobble", "default:cobble",
		{cracky=3},
		{"default_cobble.png"},
		"Cobblestone Stairs",
		"Cobblestone Slab",
		"Cobblestone Panel",
		"Cobblestone Microblock",
		"cobble")
		
stairsplus.register_stair_and_slab_and_panel_and_micro("mossycobble", "default:mossycobble",
		{cracky=3},
		{"default_mossycobble.png"},
		"Mossy Cobblestone Stairs",
		"Mossy Cobblestone Slab",
		"Mossy Cobblestone Panel",
		"Mossy Cobblestone Microblock",
		"mossycobble")

stairsplus.register_stair_and_slab_and_panel_and_micro("brick", "default:brick",
		{cracky=3},
		{"default_brick.png"},
		"Brick Stairs",
		"Brick Slab",
		"Brick Panel",
		"Brick Microblock",
		"brick")

stairsplus.register_stair_and_slab_and_panel_and_micro("sandstone", "default:sandstone",
		{crumbly=2,cracky=2},
		{"default_sandstone.png"},
		"Sandstone Stairs",
		"Sandstone Slab",
		"Sandstone Panel",
		"Sandstone Microblock",
		"sandstone")
		
stairsplus.register_stair_and_slab_and_panel_and_micro("steelblock", "default:steelblock",
		{snappy=1,bendy=2,cracky=1,melty=2,level=2},
		{"default_steel_block.png"},
		"Steel Block Stairs",
		"Steel Block Slab",
		"Steel Block Panel",
		"Steel Microblock",
		"steelblock")
		
stairsplus.register_stair_and_slab_and_panel_and_micro("desert_stone", "default:desert_stone",
		{cracky=3},
		{"default_desert_stone.png"},
		"Desert Stone Stairs",
		"Desert Stone Slab",
		"Desert Stone Panel",
		"Desert Stone Microblock",
		"desert_stone")
		
stairsplus.register_stair_and_slab_and_panel_and_micro("glass", "default:glass",
		{snappy=2,cracky=3,oddly_breakable_by_hand=3},
		{"default_glass.png"},
		"Glass Stairs",
		"Glass Slab",
		"Glass Panel",
		"Glass Microblock",
		"glass")
