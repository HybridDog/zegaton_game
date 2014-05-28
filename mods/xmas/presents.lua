-- Part of the xmas mod by Jordan "Jordach" Snelling.

-- See the line 3 of init.lua for licensing info.

minetest.register_node("xmas:present_r", {
	description = "Red Present",
	tiles = {"xmas_red_pres_top.png", "xmas_red_pres_top.png", "xmas_red_pres_side.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:present_b", {
	description = "Blue Present",
	tiles = {"xmas_blue_pres_top.png", "xmas_blue_pres_top.png", "xmas_blue_pres_side.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:present_g", {
	description = "Green Present",
	tiles = {"xmas_gree_pres_top.png", "xmas_gree_pres_top.png", "xmas_gree_pres_side.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:present_y", {
	description = "Yellow Present",
	tiles = {"xmas_yel_pres_top.png", "xmas_yel_pres_top.png", "xmas_yel_pres_side.png"},
	groups = {dig_immediate=3},
})

print("Presents for xmas mod loaded.")