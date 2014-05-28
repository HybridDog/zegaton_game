-- Part of the xmas mod by Jordan "Jordach" Snelling.

-- See the line 3 of init.lua for licensing info.

minetest.register_node("xmas:lights_r", {
	description = "Red Ceiling Light",
	tiles = {"xmas_lights_r.png"},
	groups = {dig_immediate=3},
	light_source = 15,
})

minetest.register_node("xmas:lights_b", {
	description = "Blue Ceiling Light",
	tiles = {"xmas_lights_b.png"},
	light_source = 15,
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:lights_g", {
	description = "Green Ceiling Light",
	tiles = {"xmas_lights_g.png"},
	light_source = 15,
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:lights_y", {
	description = "Yellow Ceiling Light",
	tiles = {"xmas_lights_y.png"},
	light_source = 15,
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:wall_lights_r", {
	description = "Red Wall Lights",
	light_source = 15,
	drawtype = "signlike",
	selection_box = {
		type = "wallmounted",
	},
	paramtype = "light",
	paramtype2 = "wallmounted",
	tiles = {"xmas_wall_lights_r.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:wall_lights_b", {
	description = "Blue Wall Lights",
	paramtype = "light",
	paramtype2 = "wallmounted",
	light_source = 15,
	drawtype = "signlike",
	selection_box = {
		type = "wallmounted",
	},
	tiles = {"xmas_wall_lights_b.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:wall_lights_g", {
	description = "Green Wall Lights",
	drawtype = "signlike",
	paramtype = "light",
	paramtype2 = "wallmounted",
	selection_box = {
		type = "wallmounted",
	},
	light_source = 15,
	tiles = {"xmas_wall_lights_g.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:wall_lights_y", {
	description = "Yellow Wall Lights",
	drawtype = "signlike",
	selection_box = {
		type = "wallmounted",
	},
	light_source = 15,
	paramtype = "light",
	paramtype2 = "wallmounted",
	tiles = {"xmas_wall_lights_y.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:v_wall_lights_r", {
	description = "Vertical Red Wall Lights",
	light_source = 15,
	drawtype = "signlike",
	selection_box = {
		type = "wallmounted",
	},
	paramtype = "light",
	paramtype2 = "wallmounted",
	tiles = {"xmas_v_wall_lights_r.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:v_wall_lights_b", {
	description = "Vertical Blue Wall Lights",
	paramtype = "light",
	paramtype2 = "wallmounted",
	light_source = 15,
	drawtype = "signlike",
	selection_box = {
		type = "wallmounted",
	},
	tiles = {"xmas_v_wall_lights_b.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:v_wall_lights_g", {
	description = "Vertical Green Wall Lights",
	drawtype = "signlike",
	paramtype = "light",
	paramtype2 = "wallmounted",
	selection_box = {
		type = "wallmounted",
	},
	light_source = 15,
	tiles = {"xmas_v_wall_lights_g.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:v_wall_lights_y", {
	description = "Vertical Yellow Wall Lights",
	drawtype = "signlike",
	selection_box = {
		type = "wallmounted",
	},
	light_source = 15,
	paramtype = "light",
	paramtype2 = "wallmounted",
	tiles = {"xmas_v_wall_lights_y.png"},
	groups = {dig_immediate=3},
})

print("Lighting for xmas mod loaded.")