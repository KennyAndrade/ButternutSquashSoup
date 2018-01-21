--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.
--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.
--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.
--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.
--- DO NOT REMOVE ME FROM THE CONFIG, ITS THERE TO GIVE ME CREDIT WHEN I JOIN SERVERS.



local Developer = {"steam:110000105b99475:","steam:110000105b43b66",}
local Admin = {"steam:","ip:",}
local NYPD = {"steam:110000105a8a0b6","ip:",}
local Fire = {"steam:","ip:",}
local EMT = {"steam:","ip:",}
local NYSP = {"steam:","ip:",}
local Moderator = {"steam:","ip:",}
local StateTroopers = {"steam:","ip:",}
local Test = {"steam:","ip:",}


AddEventHandler('chatMessage', function(Source, Name, Msg)
    args = stringsplit(Msg, " ")
    CancelEvent()
    if string.find(args[1], "/") then
        local cmd = args[1]
        table.remove(args, 1)
    else     
        local player = GetPlayerIdentifiers(Source)[1]
        if has_value(Director, player) then
            TriggerClientEvent('chatMessage', -1, "Developer | " .. Name, { 131, 0, 0 }, Msg)           
        elseif has_value(Admin, player) then
            TriggerClientEvent('chatMessage', -1, "Admin | " .. Name, { 255, 0, 0 }, Msg)
        elseif has_value(NYPD, player) then
            TriggerClientEvent('chatMessage', -1, "NYPD | " .. Name, { 0, 0, 141 }, Msg)
        elseif has_value(Fire, player) then
            TriggerClientEvent('chatMessage', -1, "FDNY | " .. Name, { 196, 0, 0 }, Msg)
        elseif has_value(EMT, player) then
            TriggerClientEvent('chatMessage', -1, "NYEMS | " .. Name, { 196, 0, 0 }, Msg)
        elseif has_value(NYSP, player) then
            TriggerClientEvent('chatMessage', -1, "NYSP | " .. Name, { 144, 0, 160 }, Msg)
	    elseif has_value(Moderator, player) then
            TriggerClientEvent('chatMessage', -1, "Moderator | " .. Name, { 0, 255, 247 }, Msg)
        elseif has_value(StateTroopers, player) then
            TriggerClientEvent('chatMessage', -1, "State Troopers | " .. Name, { 222, 0, 255 }, Msg)
		elseif has_value(Test, player) then
            TriggerClientEvent('chatMessage', -1, "State Troopers | Admin " .. Name, { 222, 0, 255 }, Msg)
        else
            TriggerClientEvent('chatMessage', -1, "Civilian | " .. Name, { 235, 214, 51 }, Msg)
        end
            
    end
end)

function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end

    return false
end

function stringsplit(inputstr, sep)
    if sep == nil then
        sep = "%s"
    end
    local t={} ; i=1
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
        t[i] = str
        i = i + 1
    end
    return t
end