digicode = {}

digicode.digicode_formspec =
	"size[3,5]"..
	"button[0,1;1,1;dc1;1]button[1,1;1,1;dc2;2]button[2,1;1,1;dc3;3]"..
	"button[0,2;1,1;dc4;4]button[1,2;1,1;dc5;5]button[2,2;1,1;dc6;6]"..
	"button[0,3;1,1;dc7;7]button[1,3;1,1;dc8;8]button[2,3;1,1;dc9;9]"..
	"button_exit[0,4;1,1;dcC;X]button[1,4;1,1;dc0;0]button_exit[2,4;1,1;dcA;V]"
	
digicode.hidecode = function(len)
	if     len == 1 then return "*"
	elseif len == 2 then return "**"
	elseif len == 3 then return "***"
	elseif len == 4 then return "****"
	else return ""
	end
end

minetest.register_node("digicode:digicode", {
	description = "Digicode",
	tiles = {
		"digicode_side.png",
		"digicode_side.png",
		"digicode_side.png",
		"digicode_side.png",
		"digicode_side.png",
		"digicode_front.png"
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	--walkable = false,
	selection_box = {
		type = "fixed",
		fixed = { -6/16, -.5, 6/16, 6/16, .5, 8/16 }
	},
	node_box = {
		type = "fixed",
		fixed = { -6/16, -.5, 6/16, 6/16, .5, 8/16 }
	},
	groups = {dig_immediate=2,mesecon=3,mesecon_needs_receiver=1},
	--legacy_facedir_simple = true,
	sounds = default.node_sound_stone_defaults(),
	on_construct = function(pos)
		local meta = minetest.env:get_meta(pos)
		meta:set_string("formspec", digicode.digicode_formspec.."label[0,0;SET]")
		meta:set_string("infotext", "Digicode")
		meta:set_string("goodcode", "");
		meta:set_string("currentcode", "");
	end,
	on_receive_fields = function(pos,formname,fields,sender)
		local meta = minetest.env:get_meta(pos)
		if fields.dcA then
			if meta:get_string("goodcode")=="" and meta:get_string("currentcode") ~= "" then
				meta:set_string("goodcode",meta:get_string("currentcode"))
				minetest.chat_send_player(sender:get_player_name(),"[DIGICODE] Code set to "..meta:get_string("goodcode"))
			elseif meta:get_string("currentcode")==meta:get_string("goodcode") then
				local node=minetest.env:get_node(pos)
				local rules=mesecon.button_get_rules(node.param2)
				mesecon:receptor_on(pos, rules)
				minetest.after(1, function (params)
					if minetest.env:get_node(params.pos).name=="digicode:digicode" then
						local rules=mesecon.button_get_rules(params.param2)
						mesecon:receptor_off(params.pos, rules)
					end
				end, {pos=pos, param2=node.param2})
			end
			meta:set_string("currentcode","")
		elseif fields.dcC then meta:set_string("currentcode","")
		else
			local button=nil;
			if     fields.dc0 then button="0"
			elseif fields.dc1 then button="1"
			elseif fields.dc2 then button="2"
			elseif fields.dc3 then button="3"
			elseif fields.dc4 then button="4"
			elseif fields.dc5 then button="5"
			elseif fields.dc6 then button="6"
			elseif fields.dc7 then button="7"
			elseif fields.dc8 then button="8"
			elseif fields.dc9 then button="9"
			end
			if button then
				if string.len(meta:get_string("currentcode")) >= 4 then meta:set_string("currentcode","") end
				meta:set_string("currentcode",meta:get_string("currentcode")..button)
			end
		end
		meta:set_string("formspec",digicode.digicode_formspec.."label[1,0;"..digicode.hidecode(meta:get_string("currentcode"):len()).."]")
		if meta:get_string("goodcode") == "" then
			meta:set_string("formspec",meta:get_string("formspec").."label[0,0;SET]")
		end
	end,
})

digicode.turnoff = function (params)
	if minetest.env:get_node(params.pos).name=="digicode:digicode" then
		local rules=mesecon.button_get_rules(params.param2)
		mesecon:receptor_off(params.pos, rules)
	end
end

minetest.register_craft({
	output = 'digicode:digicode',
	recipe = {
		{"mesecons_button:button_off", "mesecons_button:button_off", "mesecons_button:button_off"},
		{"default:cobble", "mesecons_microcontroller:microcontroller0000", "default:cobble"},
		{"default:cobble", "group:mesecon_conductor_craftable", "default:cobble"},
	}
})
