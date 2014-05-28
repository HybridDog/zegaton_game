minetest.register_craftitem( "technic:silicon_wafer", {
	description = "Silicon Wafer",
	inventory_image = "technic_silicon_wafer.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craftitem( "technic:doped_silicon_wafer", {
	description = "Doped Silicon Wafer",
	inventory_image = "technic_doped_silicon_wafer.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = 'pipeworks:tube_000000 9',
	recipe = {
		{'technic:stainless_steel_ingot', 'default:glass', 'technic:stainless_steel_ingot'},
		{'technic:stainless_steel_ingot', 'default:glass', 'technic:stainless_steel_ingot'},
		{'technic:stainless_steel_ingot', 'default:glass', 'technic:stainless_steel_ingot'},
	}
})

minetest.register_craftitem( "technic:diamond_drill_head", {
	description = "Diamond Drill Head",
	inventory_image = "technic_diamond_drill_head.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = 'technic:diamond_drill_head',
	recipe = {
		{'technic:stainless_steel_ingot', 'technic:diamond', 'technic:stainless_steel_ingot'},
		{'technic:diamond', '', 'technic:diamond'},
		{'technic:stainless_steel_ingot', 'technic:diamond', 'technic:stainless_steel_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:diamond_block',
	recipe = {
		{'technic:diamond', 'technic:diamond', 'technic:diamond'},
		{'technic:diamond', 'technic:diamond', 'technic:diamond'},
		{'technic:diamond', 'technic:diamond', 'technic:diamond'},
	}
})

minetest.register_node( "technic:diamond_block", {
	description = "Diamond Block",
	tiles = { "technic_diamond_block.png" },
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
	drop = 'craft "technic:diamond_block" 1',
}) 

minetest.register_craft({
	output = 'technic:green_energy_crystal',
	recipe = {
		{'moreores:gold_ingot', 'technic:battery', 'group:dye,basecolor_green'},
		{'technic:battery', 'technic:red_energy_crystal', 'technic:battery'},
		{'group:dye,basecolor_green', 'technic:battery', 'moreores:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:blue_energy_crystal',
	recipe = {
		{'moreores:gold_ingot', 'technic:battery', 'group:dye,basecolor_blue'},
		{'technic:battery', 'technic:green_energy_crystal', 'technic:battery'},
		{'group:dye,basecolor_green', 'technic:battery', 'moreores:gold_ingot'},
	}
})

minetest.register_craft({
	output = 'technic:red_energy_crystal',
	recipe = {
		{'moreores:gold_ingot', 'technic:battery', 'group:dye,basecolor_red'},
		{'technic:battery', 'technic:diamond_block', 'technic:battery'},
		{'group:dye,basecolor_red', 'technic:battery', 'moreores:gold_ingot'},
	}
})

minetest.register_tool("technic:blue_energy_crystal",
{description = "Blue Energy Crystal",
inventory_image = minetest.inventorycube("technic_diamond_block_blue.png", "technic_diamond_block_blue.png", "technic_diamond_block_blue.png"),
tool_capabilities = {load=0,max_drop_level=0, groupcaps={fleshy={times={}, uses=10000, maxlevel=0}}}}) 

minetest.register_tool("technic:green_energy_crystal",
{description = "Green Energy Crystal",
inventory_image = minetest.inventorycube("technic_diamond_block_green.png", "technic_diamond_block_green.png", "technic_diamond_block_green.png"),
tool_capabilities = {load=0,max_drop_level=0, groupcaps={fleshy={times={}, uses=10000, maxlevel=0}}}}) 

minetest.register_tool("technic:red_energy_crystal",
{description = "Red Energy Crystal",
inventory_image = minetest.inventorycube("technic_diamond_block_red.png", "technic_diamond_block_red.png", "technic_diamond_block_red.png"),
tool_capabilities = {load=0,max_drop_level=0, groupcaps={fleshy={times={}, uses=10000, maxlevel=0}}}}) 


minetest.register_craftitem( "technic:fine_copper_wire", {
	description = "Fine Copper Wire",
	inventory_image = "technic_fine_copper_wire.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = 'technic:fine_copper_wire 2',
	recipe = {
		{'', 'moreores:copper_ingot', ''},
		{'', 'moreores:copper_ingot', ''},
		{'', 'moreores:copper_ingot', ''},
	}
})

minetest.register_craftitem( "technic:copper_coil", {
	description = "Copper Coil",
	inventory_image = "technic_copper_coil.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = 'technic:copper_coil 1',
	recipe = {
		{'technic:fine_copper_wire', 'default:steel_ingot', 'technic:fine_copper_wire'},
		{'default:steel_ingot', '', 'default:steel_ingot'},
		{'technic:fine_copper_wire', 'default:steel_ingot', 'technic:fine_copper_wire'},
	}
})

minetest.register_craftitem( "technic:motor", {
	description = "Electric Motor",
	inventory_image = "technic_motor.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = 'technic:motor',
	recipe = {
		{'default:steel_ingot', 'technic:copper_coil', 'default:steel_ingot'},
		{'default:steel_ingot', 'technic:copper_coil', 'default:steel_ingot'},
		{'default:steel_ingot', 'moreores:copper_ingot', 'default:steel_ingot'},
	}
})

minetest.register_craftitem( "technic:mv_transformer", {
	description = "Medium Voltage Transformer",
	inventory_image = "technic_mv_transformer.png",
	on_place_on_ground = minetest.craftitem_place_item,
})

minetest.register_craft({
	output = 'technic:mv_transformer',
	recipe = {
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
		{'technic:copper_coil', 'default:steel_ingot', 'technic:copper_coil'},
		{'default:steel_ingot', 'default:steel_ingot', 'default:steel_ingot'},
	}
})

