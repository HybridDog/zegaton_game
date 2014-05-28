
minetest.register_node("lantern:torch_lantern", {
	description = "Torch lantern",
	tiles = {
		"lantern_torch_top.png",
		"lantern_torch_top.png",
		{name="lantern_torch_side.png",animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="lantern_torch_side.png",animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="lantern_torch_side.png",animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
		{name="lantern_torch_side.png",animation={type="vertical_frames", aspect_w=16, aspect_h=16, length=3.0}},
	},
	drawtype = "nodebox",
	paramtype = "light",
	sunlight_propagates = true,
	light_source = LIGHT_MAX,
	node_box = {
		type = "fixed",
		fixed = {
			--top
			{ -1/2, 7/8/2, -1/2, 1/2, 1/2, 1/2 },
			-- bottom
			{ -1/2, -1/2, -1/2, 1/2, -7/8/2, 1/2 },
			--sides
			{ -1/2, -1/2, -1/2, -7/8/2, 1/2, -7/8/2 },
			{ 1/2, -1/2, -1/2, 7/8/2, 1/2, -7/8/2 },
			{ -1/2, -1/2, 1/2, -7/8/2, 1/2, 7/8/2 },
			{ 1/2, -1/2, 1/2, 7/8/2, 1/2, 7/8/2 },
			--torch
			{ -7/8/2, -7/8/2, 0, 7/8/2, 7/8/2, 0 },
		}
	},
	groups = {dig_immediate=3,mesecon=3,mesecon_needs_receiver=1},
	--legacy_facedir_simple = true,
	sounds = default.node_sound_stone_defaults(),
	
})


minetest.register_craft({
	output = 'lantern:torch_lantern',
	recipe = {
		{"default:stick", "default:glass", "default:stick"},
		{"default:glass", "default:torch", "default:glass"},
		{"default:stick", "default:glass", "default:stick"},
	}
})
