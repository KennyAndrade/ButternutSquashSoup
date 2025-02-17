-- Name: vGear
-- Version: 1.0
-- Description: Gear up whenever you (re)spawn or press a button (configurable).
-- License: GNU Affero General Public License v3.0
-- Author: Vespura
-- GitHub Repo: https://github.com/TomGrobbe/vGear

--------------------------- LOCAL VARIABLES --------------------------------

local GiveLoadoutOnRespawn = false      -- should players receive the gear when they (re)spawn? (default: false)
local EnableManualButton = false        -- Should players be able to use the ManualLoadoutButton (default F7) to get the gear? (default: true)
local ManualLoadoutButton = 168         -- The button to be pressed to receive the loadout (default: 168 (F7))
local ClearPlayerClothes = true         -- Should the player's clothes be cleaned? (remove blood etc.) (default: true)
local HealPlayer = false                 -- Should the player be healed (max health) (default: true)
local GiveMaxArmor = true               -- Should the player receive full body armor? (default: true)
local ReceivedLoadoutMessage = '^1Gear equipped, enjoy!' -- the message the player receives after getting the gear.
local LoadoutCommand = "loadout"        -- The command that equips the loadout. (Default: "loadout")
local EnableCommand = true             -- Should the command be enabled? (true = yes, false = no) (default: false)
-- note for the LoadoutCommand: don't add a / because that's already added in the code!

-- https://wiki.fivem.net/wiki/Weapons
-- {weaponHash, amountOfAmmoToGive} Too much ammo might crash the game, be careful!
local spawnLoadoutList = {  
}

-- https://wiki.fivem.net/wiki/Weapon_Components
-- {weaponHashToApplyComponentTo, weaponComponentHash} Any extras/components that need to be attached to certain weapons? Enter them below
local spawnLoadoutExtrasList = {   
    {0x5EF9FEC4, 0x359B7AAE},   -- Combat Pistol Flashlight
    {0x83BF0278, 0x7BC4CDDC},   -- Carbine Rifle Flashlight
    {0xAF113F99, 0x7BC4CDDC},    -- Carbine Rifle Grip
    {0x1B06D571, 0x359B7AAE},   -- Combat Pistol Flashlight
    {0x1D073A89, 0x7BC4CDDC},   -- Carbine Rifle Flashlight
}




-------------------------- CODE, DON'T TOUCH -------------------------------
AddEventHandler("playerSpawned", function()
    if GiveLoadoutOnRespawn then
        GiveLoadout()
    end
end)

if EnableCommand then
    RegisterCommand(LoadoutCommand, function()
        GiveLoadout()
    end, false)
end

if EnableManualButton then
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
            if IsControlJustReleased(0, ManualLoadoutButton) then
               GiveLoadout()
            end
        end
    end)
end

function GiveLoadout()
    local ped = GetPlayerPed(-1)
    for k, w in pairs(spawnLoadoutList) do
        GiveWeaponToPed(GetPlayerPed(-1), w[1], w[2], false, false)
    end
    for k, c in pairs(spawnLoadoutExtrasList) do
        GiveWeaponComponentToPed(ped, c[1], c[2])
    end
    if ClearPlayerClothes then
        ClearPedBloodDamage(ped)
    end
    if GiveMaxArmor then
        SetPedArmor(ped, 100)
    end
    if HealPlayer then
        SetEntityHealth(ped, 200)
    end
    TriggerEvent('chatMessage', '', {255,255,255}, ReceivedLoadoutMessage)
end


----------------------------------------------------------------------------


