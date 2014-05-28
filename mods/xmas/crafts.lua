-- Part of the xmas mod by Jordan "Jordach" Snelling.

-- See the line 3 of init.lua for licensing info.

-- Misc stuff.

minetest.register_craft({
	output = 'xmas:leaves 9',
	recipe = {
		{'default:leaves', 'default:leaves', 'default:leaves'},
		{'default:leaves', 'default:leaves', 'default:leaves'},
		{'default:leaves', 'default:leaves', 'default:leaves'},
	}
})

minetest.register_craft({
	output = 'xmas:star 2',
	recipe = {
		{'', 'default:glass', ''},
		{'default:glass', 'default:torch', 'default:glass'},
		{'', 'default:glass', ''},
	}
})

minetest.register_craft({
	output = 'xmas:angel 2',
	recipe = {
		{'', 'default:torch', ''},
		{'default:stone', 'default:stone', 'default:stone'},
		{'', 'default:stone', ''},
	}
})

-- Make the presents.

minetest.register_craft({
	output = 'xmas:present_r 2',
	recipe = {
		{'default:paper', 'default:paper', 'default:paper'},
		{'default:paper', 'dye:red', 'default:paper'},
		{'default:paper', 'default:paper', 'default:paper'},
	}
})

minetest.register_craft({
	output = 'xmas:present_b 2',
	recipe = {
		{'default:paper', 'default:paper', 'default:paper'},
		{'default:paper', 'dye:blue', 'default:paper'},
		{'default:paper', 'default:paper', 'default:paper'},
	}
})

minetest.register_craft({
	output = 'xmas:present_g 2',
	recipe = {
		{'default:paper', 'default:paper', 'default:paper'},
		{'default:paper', 'dye:green', 'default:paper'},
		{'default:paper', 'default:paper', 'default:paper'},
	}
})

minetest.register_craft({
	output = 'xmas:present_y 2',
	recipe = {
		{'default:paper', 'default:paper', 'default:paper'},
		{'default:paper', 'dye:yellow', 'default:paper'},
		{'default:paper', 'default:paper', 'default:paper'},
	}
})

-- Make some lighting.

minetest.register_craft({
	output = 'xmas:lights_r 4',
	recipe = {
		{'default:glass', 'dye:red', 'default:glass'},
		{'default:torch', 'default:torch', 'default:torch'},
		{'default:glass', 'dye:red', 'default:glass'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_b 4',
	recipe = {
		{'default:glass', 'dye:blue', 'default:glass'},
		{'default:torch', 'default:torch', 'default:torch'},
		{'default:glass', 'dye:blue', 'default:glass'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_g 4',
	recipe = {
		{'default:glass', 'dye:green', 'default:glass'},
		{'default:torch', 'default:torch', 'default:torch'},
		{'default:glass', 'dye:green', 'default:glass'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_y 4',
	recipe = {
		{'default:glass', 'dye:yellow', 'default:glass'},
		{'default:torch', 'default:torch', 'default:torch'},
		{'default:glass', 'dye:yellow', 'default:glass'},
	}
})

-- Convert block to wall and back.

minetest.register_craft({
	output = 'xmas:wall_lights_r',
	recipe = {
		{'xmas:lights_r'},
	}
})

minetest.register_craft({
	output = 'xmas:wall_lights_b',
	recipe = {
		{'xmas:lights_b'},
	}
})

minetest.register_craft({
	output = 'xmas:wall_lights_g',
	recipe = {
		{'xmas:lights_g'},
	}
})

minetest.register_craft({
	output = 'xmas:wall_lights_y',
	recipe = {
		{'xmas:lights_y'},
	}
})

-- Reverse them now.

minetest.register_craft({
	output = 'xmas:lights_r',
	recipe = {
		{'xmas:wall_lights_r'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_b',
	recipe = {
		{'xmas:wall_lights_b'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_g',
	recipe = {
		{'xmas:wall_lights_g'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_y',
	recipe = {
		{'xmas:wall_lights_y'},
	}
})

-- Vertical Light chains to reverse.

minetest.register_craft({
	output = 'xmas:v_wall_lights_r 2',
	recipe = {
		{'xmas:lights_r', 'xmas:lights_r'},
	}
})

minetest.register_craft({
	output = 'xmas:v_wall_lights_b 2',
	recipe = {
		{'xmas:lights_b', 'xmas:lights_b'},
	}
})

minetest.register_craft({
	output = 'xmas:v_wall_lights_g 2',
	recipe = {
		{'xmas:lights_g', 'xmas:lights_g'},
	}
})

minetest.register_craft({
	output = 'xmas:v_wall_lights_y 2',
	recipe = {
		{'xmas:lights_y', 'xmas:lights_y'},
	}
})

-- Reverse them now.

minetest.register_craft({
	output = 'xmas:lights_r',
	recipe = {
		{'xmas:v_wall_lights_r'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_b',
	recipe = {
		{'xmas:v_wall_lights_b'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_g',
	recipe = {
		{'xmas:v_wall_lights_g'},
	}
})

minetest.register_craft({
	output = 'xmas:lights_y',
	recipe = {
		{'xmas:v_wall_lights_y'},
	}
})

print("Crafting for xmas mod loaded")