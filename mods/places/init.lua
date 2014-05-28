places = {}
places.places = {}
-- places.places[player_name][num].pos, .name, .desc
-- Save/load functions
places.places_file = minetest.get_worldpath()..'/places'

places.save_places = function()
	local output = ""
	for user,places in pairs(places.places) do
		for _,place in ipairs(places) do
			output = output .. user .."`"..place.pos.x.."`"..place.pos.y.."`"..place.pos.z.."`"..place.name.."`"..place.desc.."`\n"
		end
	end
	local f = io.open(places.places_file, "w")
	f:write(output)
	io.close(f)
end

places.load_places = function()
	local f = io.open(places.places_file, "r")  
	if f then
		local contents = f:read("*all")
		io.close(f)
		if contents ~= nil then
			local entries = contents:split('\n')
			for i,entry in pairs(entries) do
				local name
				local place = {pos={x=0,y=0,z=0},name="",desc=""}
				data = entry:split("`")
				name = data[1]
				place.pos.x = data[2]
				place.pos.y = data[3]
				place.pos.z = data[4]
				place.name = data[5]
				place.desc = data[6]
				if not (name == nil
					or place.pos.x == nil
					or place.pos.y == nil
					or place.pos.z == nil
					or place.name == nil
					or place.desc == nil)
				then
					if not places.places[name] then
						places.places[name] = {}
					end
					table.insert(places.places[name],place)
				end
			end
		end
	end
end

places.load_places()
--



places.selected_place = {}

places.create_places = function(player)
	local formspec = "size[8,7.5]"
		.. "button[0,0;2,1;main;Back]"
		.. "label[2,0;Please only use this for interesting places.]"
		.. "label[2,.5;They may be added to the server's website.]"
		.. "label[0,4;Add a new place]"
		.. 'field[.5,5;7.5,1;name;Name (e.g. "My house"):;]'
		.. 'field[.5,6;7.5,1;desc;Comments (e.g. "It has an original architecture");]'
		.. "button[3,6.5;2,1;new_place;Add]"
	local name = player:get_player_name()
	if not places.places[name] then
		places.places[name] = {}
	end
	for i, p in ipairs(places.places[name]) do
		x = ((i-1)%4)*2
		y = math.floor((i-1)/4)+1
		formspec = formspec .. "button["..x..","..y..";2,1;select_place;"..p.name.."]"
	end
	return formspec
end

places.get_placeid_by_name = function(player,name)
	for i,p in ipairs(places.places[player:get_player_name()]) do
		if p.name == name then
			return i
		end
	end
	return nil
end

places.get_place_by_name = function(player,name)
	for i,p in ipairs(places.places[player:get_player_name()]) do
		if p.name == name then
			return p
		end
	end
	return nil
end

places.create_sel_place = function(player)
	place_name = places.selected_place[player:get_player_name()]
	place = places.get_place_by_name(player, place_name)
	local formspec = "size[8,7.5]"
		.. "button[0,0;2,1;main;Back]"
		.. "button[2,0;2,1;goto_places;Places]"
		.. "label[0,1;"..place.name.."]"
		.. "label[0,2;"..place.desc.."]"
		.. "button_exit[2,3;2,1;tp_place;Teleport]"
		.. "button[4,3;2,1;del_place;Delete]"
		.. "label[2,4;Position:]"
		.. "label[4,4;"..minetest.pos_to_string(place.pos).."]"
	return formspec
end

minetest.register_on_joinplayer(function(player)
	inventory_plus.register_button(player,"goto_places","My places")
end)

minetest.register_on_player_receive_fields(function(player, formname, fields)
	if fields.goto_places then
		inventory_plus.set_inventory_formspec(player, places.create_places(player))
	elseif fields.select_place then
		places.selected_place[player:get_player_name()] = fields.select_place
		inventory_plus.set_inventory_formspec(player, places.create_sel_place(player))
	elseif fields.tp_place then
		place_pos = places.get_place_by_name(player,places.selected_place[player:get_player_name()]).pos
		pos = {}
		pos.x = place_pos.x
		pos.y = place_pos.y +.5
		pos.z = place_pos.z
		player:setpos(pos)
		inventory_plus.set_inventory_formspec(player, places.create_places(player))
	elseif fields.del_place then
		table.remove(places.places[player:get_player_name()], places.get_placeid_by_name(player, places.selected_place[player:get_player_name()]))
		places.save_places()
		inventory_plus.set_inventory_formspec(player, places.create_places(player))
	elseif fields.new_place and fields.name and fields.desc then
		local name = string.gsub(fields.name,'`','')
		local desc = string.gsub(fields.desc,'`','')
		if table.getn(places.places[player:get_player_name()]) >= 12 then
			minetest.chat_send_player(player:get_player_name(),"Sorry, you can't set more than 12 places. You can still delete existing ones...")
		elseif name == "" or desc == "" then
			minetest.chat_send_player(player:get_player_name(),"You need to name and describe/comment your place. If you have no comment idea, just copy the name.")
		elseif places.get_place_by_name(player,name) then
			minetest.chat_send_player(player:get_player_name(),"You already have place with this name !")
		else
			pos = player:getpos()
			pos.x = math.floor(pos.x)
			pos.y = math.floor(pos.y)
			pos.z = math.floor(pos.z)
			table.insert(places.places[player:get_player_name()], {
				pos=pos,
				name=name,
				desc=desc
			})
			places.save_places()
			inventory_plus.set_inventory_formspec(player, places.create_places(player))
		end
	end
end)

