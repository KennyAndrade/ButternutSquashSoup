
Key = 201 -- ENTER

vehicleWashStation = {
	{26.5906,  -1392.0261,  27.3634},
	{167.1034,  -1719.4704,  27.2916},
	{-74.5693,  6427.8715,  29.4400},
	{1982.8837890625, 3779.6142578125, 32.180805206299},
	{1363.0960693359, 3591.8051757813, 34.920650482178},
	{1361.103515625, 3599.2797851563, 34.892753601074},
	{1057.4244384766, 2659.1164550781, 39.556858062744},
	{2550.9040527344, 342.71444702148, 108.4645690918},
	{1200.1077880859, -1385.3614501953, 35.226955413818},
	{1683.6032714844, 4921.798828125, 42.078144073486},
	{2525.1435546875, 4195.1713867188, 39.956130981445},
	{-699.6325,  -932.7043,  17.0139}
}

vRP = Proxy.getInterface("vRP")

Citizen.CreateThread(function ()
	Citizen.Wait(0)
	for i = 1, #vehicleWashStation do
		garageCoords = vehicleWashStation[i]
		stationBlip = AddBlipForCoord(garageCoords[1], garageCoords[2], garageCoords[3])
		SetBlipSprite(stationBlip, 100) -- 100 = carwash
		SetBlipAsShortRange(stationBlip, true)
	end
    return
end)

function DrawSpecialText(m_text, showtime)
	SetTextEntry_2("STRING")
	AddTextComponentString(m_text)
	DrawSubtitleTimed(showtime, 1)
end

Citizen.CreateThread(function ()
	while true do
		Citizen.Wait(0)
		if IsPedSittingInAnyVehicle(GetPlayerPed(-1)) then 
			for i = 1, #vehicleWashStation do
				garageCoords2 = vehicleWashStation[i]
				DrawMarker(1, garageCoords2[1], garageCoords2[2], garageCoords2[3], 0, 0, 0, 0, 0, 0, 5.0, 5.0, 2.0, 0, 157, 0, 155, 0, 0, 2, 0, 0, 0, 0)
				if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), garageCoords2[1], garageCoords2[2], garageCoords2[3], true ) < 5 then
					DrawSpecialText("Press [~g~ENTER~s~] to clean your vehicle!")
					if(IsControlJustPressed(1, Key)) then
						TriggerServerEvent('carwash:checkmoney', GetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1),false)))
					end
				end
			end
		end
	end
end)

RegisterNetEvent('carwash:success')
AddEventHandler('carwash:success', function()
	SetVehicleDirtLevel(GetVehiclePedIsIn(GetPlayerPed(-1),false), 0.0)
	SetVehicleUndriveable(GetVehiclePedIsIn(GetPlayerPed(-1),false), false)
	vRP.notify({"Paid ~r~25$."})
end)
RegisterNetEvent('carwash:notenough')
AddEventHandler('carwash:notenough', function()
	vRP.notify({"~r~Not enough money."})
end)
RegisterNetEvent('carwash:alreadyclean')
AddEventHandler('carwash:alreadyclean', function()
	vRP.notify({"~g~Vehicle already clean."})
end)