minetest.register_chatcommand("pulverize_all", {
	params = "",
	description = "delete all items in inventory",
	privs = {},
	func = function(name, param)
		local inv = minetest.get_inventory({type='player',name=name})
		for i=1,32 do
			local stack = inv:get_stack("main", i)
			if stack ~= nil and not stack:is_empty() then
				inv:set_stack("main", i, nil)
			end
		end
	end,
})

minetest.register_privilege("say", "send a message from server")

minetest.register_chatcommand("say", {
	params = "message",
	description = "send a message from server",
	privs = {"say"},
	func = function(name, param)
		minetest.chat_send_all(param)
	end,
})
