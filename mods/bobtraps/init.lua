-- State Changes

local update_bobtrap = function (pos, node)
    local nodename=""
    local param2=""
    --Switch Trap State
    if 
    -- Swap Traps
               node.name == 'bobtraps:trap_spike' then nodename = 'bobtraps:trap_spike_set'
        elseif node.name == 'bobtraps:trap_spike_set' then nodename = 'bobtraps:trap_spike'
        elseif node.name == 'bobtraps:trap_spike_major' then nodename = 'bobtraps:trap_spike_major_set'
        elseif node.name == 'bobtraps:trap_spike_major_set' then nodename = 'bobtraps:trap_spike_major'
    end
    minetest.env:add_node(pos, {name = nodename})
end

-- Punch Traps    
local on_bobtrap_punched = function (pos, node, puncher)
    if 
       -- Start Traps
       node.name == 'bobtraps:trap_spike' or node.name == 'bobtraps:trap_spike_set'  or
       node.name == 'bobtraps:trap_spike_major' or node.name == 'bobtraps:trap_spike_major_set'  
    then
        update_bobtrap(pos, node)
    end
end

minetest.register_on_punchnode(on_bobtrap_punched)


--ABM (Spring The Traps)

minetest.register_abm(
	{nodenames = {"bobtraps:trap_spike_set"},
    interval = 1.0,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    local objs = minetest.env:get_objects_inside_radius(pos, 1)
        for k, obj in pairs(objs) do
        
        update_bobtrap(pos, node)
    end
    end,
     
})

minetest.register_abm(
	{nodenames = {"bobtraps:trap_spike_major_set"},
    interval = 1.0,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    local objs = minetest.env:get_objects_inside_radius(pos, 1)
        for k, obj in pairs(objs) do
        
        update_bobtrap(pos, node)
    end
    end,
     
})




-- Nodes
minetest.register_node("bobtraps:trap_grass", {
	description = "Trap Grass",
    tile_images = {"default_grass.png"},
	paramtype2 = "facedir",
	legacy_facedir_simple = true,
    groups = {snappy=2,cracky=3,oddly_breakable_by_hand=3},
    is_ground_content = false,
        walkable = false,
    climbable = false,
})

minetest.register_node("bobtraps:trap_spike", {
	description = "Trap Spike Minor",
    drawtype = "plantlike",
    visual_scale = 1,
	tile_images = {"bobtraps_minorspike.png"},
	inventory_image = ("bobtraps_minorspike.png"),
    paramtype = "light",
    walkable = false,
	sunlight_propagates = true,
    groups = {cracky=3,melty=3},
})

minetest.register_node("bobtraps:trap_spike_set", {
	description = "Trap Spike Minor",
    drawtype = "raillike",
    visual_scale = 1,
	tile_images = {"bobtraps_trap_set.png"},
    paramtype = "light",
    walkable = false,
	sunlight_propagates = true,
    groups = {cracky=3,melty=3},
    drop = 'bobtraps:trap_spike',
})


minetest.register_node("bobtraps:trap_spike_major", {
	description = "Trap Spike Minor",
    drawtype = "plantlike",
    visual_scale = 1,
	tile_images = {"bobtraps_majorspike.png"},
	inventory_image = ("bobtraps_majorspike.png"),
    paramtype = "light",
    walkable = false,
	sunlight_propagates = true,
    groups = {cracky=2,melty=2},
})

minetest.register_node("bobtraps:trap_spike_major_set", {
	description = "Trap Spike Major",
    drawtype = "raillike",
    visual_scale = 1,
	tile_images = {"bobtraps_trap_set.png"},
    paramtype = "light",
    walkable = false,
	sunlight_propagates = true,
    groups = {cracky=3,melty=3},
    drop = 'bobtraps:trap_spike',
})


-- Crafting

minetest.register_craft({
	output = 'bobtraps:trap_spike',
	recipe = {
		{'', '', ''},
		{'', 'default:cobble', ''},
		{'default:cobble', 'default:apple', 'default:cobble'},
	}
})

minetest.register_craft({
	output = 'bobtraps:trap_spike_major',
	recipe = {
		{'', 'default:cobble', ''},
		{'', 'default:apple', ''},
		{'default:cobble', 'default:apple', 'default:cobble'},
	}
})

minetest.register_craft({
	output = 'bobtraps:trap_grass',
	recipe = {
		{'', '', ''},
		{'', 'default:dirt', ''},
		{'', 'default:stick', ''},
	}
})

-- ABM
minetest.register_abm(
	{nodenames = {"bobtraps:trap_spike"},
    interval = 1.0,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    local objs = minetest.env:get_objects_inside_radius(pos, 1)
        for k, obj in pairs(objs) do
        obj:set_hp(obj:get_hp()-1)
        minetest.sound_play("bobtraps_trap_fall",
	    {pos = pos, gain = 1.0, max_hear_distance = 3,})
    end
    end,
})

minetest.register_abm(
	{nodenames = {"bobtraps:trap_spike_major"},
    interval = 1.0,
    chance = 1,
    action = function(pos, node, active_object_count, active_object_count_wider)
    local objs = minetest.env:get_objects_inside_radius(pos, 1)
        for k, obj in pairs(objs) do
            obj:set_hp(obj:get_hp()-100)
        minetest.sound_play("bobtraps_trap_fall",
	    {pos = pos, gain = 1.0, max_hear_distance = 3,})            
        end
    end,

})
