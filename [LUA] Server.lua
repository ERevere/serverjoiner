local server_combobox = ui.new_combobox("Lua", "B", "Servers", "Flos")
ui.set_visible(server_combobox, false)


local join_serv_button = ui.new_button("Misc", "miscellaneous", "Join Server", function()
    if ui.get(server_combobox) == "Flows" then
        client.exec("connect IP HERE; password OPTIONAL")
    end
end)

local function console_input(text)
    if text == "con Flos" then
        client.exec("connect IP HERE; password OPTIONAL")
    end
end

local join_serv_button = ui.new_button("Misc", "miscellaneous", "Bypass RCON", function()
client.exec("rcon_password Censored")
end)

client.set_event_callback("console_input", console_input)

