-- Kenny Andrade 2018©

RegisterNetEvent('sendProximityMessage')
AddEventHandler('sendProximityMessage', function(id, name, message)
	local sid = GetPlayerServerId(id)
	if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), GetEntityCoords(GetPlayerPed(sid)), true) < 19.999 then
		TriggerEvent('chatMessage', name, {0, 0, 0}, message)
	end
end)