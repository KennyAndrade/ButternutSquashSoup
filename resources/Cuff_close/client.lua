local handCuffed = false
local drag = false
local playerStillDragged = false
local officerDrag = -1



-----------------------------------------------------------------------------------------------------
RegisterNetEvent('Cuff_close:getcuff')
AddEventHandler('Cuff_close:getcuff', function()
	local t, distance = GetClosestPlayer()
	if(distance ~= -1 and distance < 3) then
		TriggerServerEvent("Cuff_close:getCuffServer", GetPlayerServerId(t))
	else
		drawNotification("No Ped close to you")
	end
end)

RegisterNetEvent('Cuff_close:getDrag')
AddEventHandler('Cuff_close:getDrag', function()

	local t, distance = GetClosestPlayer()
	if(distance ~= -1 and distance < 3) then
		TriggerServerEvent("Cuff_close:getDragServer", GetPlayerServerId(t))
	else
		 drawNotification("No Ped close to you")
	end

end)

RegisterNetEvent('Cuff_close:getUnseatVehicle')
AddEventHandler('Cuff_close:getUnseatVehicle', function()
	local t, distance = GetClosestPlayer()
	if(distance ~= -1 and distance < 3) then
		TriggerServerEvent("Cuff_close:getUnseatServer", GetPlayerServerId(t))
	else
		drawNotification("No Ped close to you")
	end
end)

RegisterNetEvent('Cuff_close:getSeatedVehicle')
AddEventHandler('Cuff_close:getSeatedVehicle', function()
	local t, distance = GetClosestPlayer()
	if(distance ~= -1 and distance < 3) then
		local v = GetVehiclePedIsIn(GetPlayerPed(-1), true)
		TriggerServerEvent("Cuff_close:getSeatedServer", GetPlayerServerId(t), v)
	else
		drawNotification("No Ped close to you")
	end
end)



----------------------------------------------------------------------------------------------------

RegisterNetEvent('Cuff_close:getArrested')
AddEventHandler('Cuff_close:getArrested', function()
	handCuffed = not handCuffed
	if(handCuffed) then
		drawNotification("You have been handcuffed")
	else
		drawNotification("You have been unhandcuffed")
	end
end)

RegisterNetEvent('Cuff_close:toggleDrag')
AddEventHandler('Cuff_close:toggleDrag', function(t)
	if(handCuffed) then
		drag = not drag
		officerDrag = t
	end
end)

RegisterNetEvent('Cuff_close:forcedEnteringVeh')
AddEventHandler('Cuff_close:forcedEnteringVeh', function(veh)
	if(handCuffed) then
		local pos = GetEntityCoords(GetPlayerPed(-1))
		local entityWorld = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 20.0, 0.0)

		local rayHandle = CastRayPointToPoint(pos.x, pos.y, pos.z, entityWorld.x, entityWorld.y, entityWorld.z, 10, GetPlayerPed(-1), 0)
		local _, _, _, _, vehicleHandle = GetRaycastResult(rayHandle)

		if vehicleHandle ~= nil then
			SetPedIntoVehicle(GetPlayerPed(-1), vehicleHandle, 1)
		end
	end
end)


RegisterNetEvent('Cuff_close:unseatme')
AddEventHandler('Cuff_close:unseatme', function(t)
	local ped = GetPlayerPed(t)        
	ClearPedTasksImmediately(ped)
	plyPos = GetEntityCoords(GetPlayerPed(-1),  true)
	local xnew = plyPos.x+2
	local ynew = plyPos.y+2
   
	SetEntityCoords(GetPlayerPed(-1), xnew, ynew, plyPos.z)
end)

------------------------------------------------------------------------------------------------------------------------------------------------------------------


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10)
		
				
		if (handCuffed) then
			RequestAnimDict('mp_arresting')

			while not HasAnimDictLoaded('mp_arresting') do
				Citizen.Wait(0)
			end

			local myPed = PlayerPedId(-1)
			local animation = 'idle'
			local flags = 16
			
			while(IsPedBeingStunned(myPed, 0)) do
				ClearPedTasksImmediately(myPed)
			end
			TaskPlayAnim(myPed, 'mp_arresting', animation, 8.0, -8, -1, flags, 0, 0, 0, 0)
		end

		if drag then
			local ped = GetPlayerPed(GetPlayerFromServerId(officerDrag))
			local myped = GetPlayerPed(-1)
			AttachEntityToEntity(myped, ped, 4103, 11816, 0.48, 0.00, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true)
			playerStillDragged = true
		else
			if(playerStillDragged) then
				DetachEntity(GetPlayerPed(-1), true, false)
				playerStillDragged = false
			end
		end
end
end)

Citizen.CreateThread(function()
	while true do
		if drag then
			local ped = GetPlayerPed(GetPlayerFromServerId(playerPedDragged))
			plyPos = GetEntityCoords(ped,  true)
			SetEntityCoords(ped, plyPos.x, plyPos.y, plyPos.z)    
		end
		Citizen.Wait(1000)
	end
end)



function GetPlayers()
    local players = {}

    for i = 0, 31 do
        if NetworkIsPlayerActive(i) then
            table.insert(players, i)
        end
    end

    return players
end

function GetClosestPlayer()
	local players = GetPlayers()
	local closestDistance = -1
	local closestPlayer = -1
	local ply = GetPlayerPed(-1)
	local plyCoords = GetEntityCoords(ply, 0)
	
	for index,value in ipairs(players) do
		local target = GetPlayerPed(value)
		if(target ~= ply) then
			local targetCoords = GetEntityCoords(GetPlayerPed(value), 0)
			local distance = Vdist(targetCoords["x"], targetCoords["y"], targetCoords["z"], plyCoords["x"], plyCoords["y"], plyCoords["z"])
			if(closestDistance == -1 or closestDistance > distance) then
				closestPlayer = value
				closestDistance = distance
			end
		end
	end
	
	return closestPlayer, closestDistance
end

function drawNotification(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end
