local antiShuffleEnabled = true

RegisterCommand('shuffle', function()
    antiShuffleEnabled = not antiShuffleEnabled
    TriggerEvent('chatMessage', '', {255,255,255}, 'Anti Shuffle ' .. ((antiShuffleEnabled) and 'enabled' or 'disabled') .. '.')
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if IsPedInAnyVehicle(GetPlayerPed(-1), false) and antiShuffleEnabled then
			if GetPedInVehicleSeat(GetVehiclePedIsIn(GetPlayerPed(-1), false), 0) == GetPlayerPed(-1) then
				if GetIsTaskActive(GetPlayerPed(-1), 165) then
					SetPedIntoVehicle(GetPlayerPed(-1), GetVehiclePedIsIn(GetPlayerPed(-1), false), 0)
				end
			end
		end
	end
end)