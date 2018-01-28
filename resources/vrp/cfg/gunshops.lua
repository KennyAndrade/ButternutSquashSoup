
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
["Paleto"] = {
    _config = {blipid=110,blipcolor=1},
    ["WEAPON_BOTTLE"] = {"Bottle",10,0,""},
    ["WEAPON_BAT"] = {"Bat",50,0,""},
    ["WEAPON_KNUCKLE"] = {"Brass Knuckles",100,0,""},
    ["WEAPON_KNIFE"] = {"Knife",50,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,2,""},
    ["WEAPON_PISTOL"] = {"USP .45",2500,2,""},
    ["WEAPON_COMBATPISTOL"] = {"Glock",5000,2,""},
    ["WEAPON_DAGGER"] = {"Dagger",100,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",50,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",100,0,""},
    ["WEAPON_SMG"] = {"SMG",5000,5,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",70,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",30,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Switchblade",100,0,""},
    ["WEAPON_MACHETE"] = {"Machete",150,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,5,""},
    ["WEAPON_COMPACTRIFLE"] = {"Mini SMG",5500,10,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Assault Rifle",65000,50,""},
    ["WEAPON_CARBINERIFLE"] = {"Carbine Rifle",65000,50,""},
    ["WEAPON_FLARE"] = {"Flare",10,10,""},
    ["WEAPON_SNIPERRIFLE"] = {"Hunting Rifle",200000,75,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Sawed-Off Shotgun",30000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",7000,20,""},
    ["WEAPON_FLASHLIGHT"] = {"Flashlight",20,0,""},
    ["WEAPON_MUSKET"] = {"Musket",50000,0,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",35,0,""},
    ["WEAPON_SMOKEGRENADE"] = {"Smoke Grenade",50,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",25000,0,""}
  },
  ["East Los Santos"] = {
    _config = {blipid=110,blipcolor=1},
    ["WEAPON_BOTTLE"] = {"Bottle",10,0,""},
    ["WEAPON_BAT"] = {"Bat",50,0,""},
    ["WEAPON_KNUCKLE"] = {"Brass Knuckles",100,0,""},
    ["WEAPON_KNIFE"] = {"Knife",50,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,2,""},
    ["WEAPON_PISTOL"] = {"USP .45",2500,2,""},
    ["WEAPON_COMBATPISTOL"] = {"Glock",5000,2,""},
    ["WEAPON_DAGGER"] = {"Dagger",100,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",50,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",100,0,""},
    ["WEAPON_SMG"] = {"SMG",5000,5,""},
    ["WEAPON_CROWBAR"] = {"Crowbar",70,0,""},
    ["WEAPON_GOLFCLUB"] = {"Golf club",30,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Switchblade",100,0,""},
    ["WEAPON_MACHETE"] = {"Machete",150,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",2500,5,""},
    ["WEAPON_COMPACTRIFLE"] = {"Mini SMG",5500,10,""},
    ["WEAPON_ASSAULTRIFLE"] = {"Assault Rifle",65000,50,""},
    ["WEAPON_CARBINERIFLE"] = {"Carbine Rifle",65000,50,""},
    ["WEAPON_FLARE"] = {"Flare",10,10,""},
    ["WEAPON_SNIPERRIFLE"] = {"Hunting Rifle",200000,75,""},
    ["WEAPON_SAWNOFFSHOTGUN"] = {"Sawed-Off Shotgun",30000,65,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",7000,20,""},
    ["WEAPON_FLASHLIGHT"] = {"Flashlight",20,0,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",35,0,""},
    ["WEAPON_SMOKEGRENADE"] = {"Smoke Grenade",50,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",25000,0,""}
  },
  ["Police Armory"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"police.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",0,0,""},
	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"X26 Taser",0,0,""},
    ["WEAPON_ADVANCEDRIFLE"] = {"Tactical Carbine",0,0,""},
    ["WEAPON_PISTOL"] = {"USP .45",0,0,""},
    ["WEAPON_CARBINERIFLE"] = {"Carbine Rifle",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Glock",0,0,""}
  },
  ["Recruit"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"Cadet.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",0,0,""},
  ["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
  ["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
  ["WEAPON_STUNGUN"] = {"X26 Taser",0,0,""}
  },
  ["ESU"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"SWAT.loadshop"}},
    ["WEAPON_SMOKEGRENADE"] = {"Smoke Grenade",0,0,""},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
    ["WEAPON_CARBINERIFLE"] = {"Carbine Rifle",0,0,""},
    ["WEAPON_SMOKEGRENADE"] = {"Smoke Grenade",50,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",0,0,""},
    ["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
    ["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
    ["WEAPON_STUNGUN"] = {"X26 Taser",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Glock",0,0,""}
  },
  ["Bounty Hunter"] = {
    _config = {blipid=150,blipcolor=1, permissions = {"Bounty.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",0,0,""},
	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"X26 Taser",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Glock",0,0,""}
  },
  ["EMS Weapons"] = {
    _config = {blipid=446,blipcolor=74, permissions = {"ems.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
   	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"X26 Taser",0,0,""}
   }
}
-- list of gunshops positions

cfg.gunshops = {
  {"EMS Weapons", 232.89363098145,-1368.3338623047,39.534381866455}, -- spawn hospital
  {"EMS Weapons", 1837.8341064453,3671.3837890625,34.276763916016}, -- sandy shores
  {"EMS Weapons", -246.91954040527,6330.349609375,32.42618560791}, -- paleto
  {"East Los Santos", 844.299, -1033.26, 28.1949},
  {"ESU", 461.33551025391,-981.11071777344,30.689584732056},
  {"Recruit", 461.33551025391,-981.11071777344,30.689584732056},
  {"Police Armory", 461.33551025391,-981.11071777344,30.689584732056},--- main pd
  {"Police Armory", 832.67236328125,-1276.5590820313,26.422773361206}, --- La Mesa
  {"Police Armory", -1062.26,-884.776,5.04225},--- Vespucci PD
  {"Police Armory", 390.955,-1610.33,29.2919},--- davis pd
  {"Bounty Hunter", 563.62060546875,-3126.9626464844,18.768604278564}, 
  {"Police Armory", 1851.7342529297,3683.7416992188,34.267044067383}, -- sandy shores
  {"Police Armory", -442.724609375,6012.6293945313,31.716390609741}, -- paleto
  {"Sticky Bombs", 708.847778320313,-959.231750488281,30.3953418731689},
  {"Paleto", -331.50210571289,6082.5063476563,31.454769134521} -- Paleto
}

return cfg
