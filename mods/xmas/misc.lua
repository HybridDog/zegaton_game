-- Part of the xmas mod by Jordan "Jordach" Snelling.

-- See the line 3 of init.lua for licensing info.

minetest.register_node("xmas:leaves", {
	description = "Xmas Tree Leaves",
	drawtype = "allfaces_optional",
	paramtype = "light",
	tiles = {"xmas_tree_leaves.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:star", {
	description = "Deco Star",
	light_source = 15,
	drawtype = "plantlike",
	tiles = {"xmas_star.png"},
	groups = {dig_immediate=3},
})

minetest.register_node("xmas:angel", {
	description = "Deco Angel",
	drawtype = "plantlike",
	paramtype = "light",
	tiles = {"xmas_tree_angel.png"},
	groups = {dig_immediate=3},
})

print("Misc nodes for xmas mod loaded.")