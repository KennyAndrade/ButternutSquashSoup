AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/cuff" then
	TriggerClientEvent("Cuff_close:getcuff", source)
    CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/drag" then
	TriggerClientEvent("Cuff_close:getDrag", source)
    CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/putin" then
	TriggerClientEvent("Cuff_close:getSeatedVehicle", source)
    CancelEvent()
    end
end)

AddEventHandler('chatMessage', function(source, name, msg)
	sm = stringsplit(msg, " ");
	if sm[1] == "/pull" then
	TriggerClientEvent("Cuff_close:getUnseatVehicle", source)
    CancelEvent()
    end
end)





RegisterServerEvent('Cuff_close:getCuffServer')
AddEventHandler('Cuff_close:getCuffServer', function(t)
    TriggerClientEvent('Cuff_close:getArrested', t)
end)


RegisterServerEvent('Cuff_close:getDragServer')
AddEventHandler('Cuff_close:getDragServer', function(t)
    TriggerClientEvent('Cuff_close:toggleDrag', t, source)
end)



RegisterServerEvent('Cuff_close:getUnseatServer')
AddEventHandler('Cuff_close:getUnseatServer', function(t, v)
    TriggerClientEvent('Cuff_close:unseatme', t, v)
end)

RegisterServerEvent('Cuff_close:getSeatedServer')
AddEventHandler('Cuff_close:getSeatedServer', function(t)
    TriggerClientEvent('Cuff_close:forcedEnteringVeh', t)
end)



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