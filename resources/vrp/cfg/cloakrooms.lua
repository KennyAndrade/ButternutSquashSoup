
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }
local emergency_male = { model = "s_m_m_paramedic_01" }
local fire_uni = { model = "s_m_y_fireman_01" }
local emergency_female = { model = "s_f_y_paramedic_01" }
local sheriff_male = { model = "s_m_y_sheriff_01"}
local sheriff_female = { model = "s_f_y_ranger_01"}
local hway_male = { model = "u_m_m_doa_01"}
local cop_male = { model = "s_m_y_cop_01"}
local sdet = { model = "s_m_y_ranger_01" }
local cop_female = { model = "s_f_y_cop_01"}
local esu_uni = { model = "s_m_m_snowcop_01"}
local esu_tac = { model = "s_m_y_swat_01"}
local esu_ct = { model = "s_m_y_pilot_01"}
local hway_uni = { model = "s_m_y_sheriff_01"}
local hway_unif = { model = "s_f_y_sheriff_01"}
local detective_suit = { model = "s_m_m_CIASec_01"}
local detective_vest = { model = "s_m_y_BlackOps_01"}
local officer_male = { model = "s_m_y_cop_01"}
local officer_malev = { model = "s_m_y_hwaycop_01"}
local officer_fmale = { model = "s_f_y_cop_01"}
local bounty_male = { model = "s_m_y_BlackOps_01"}
local santa = {model = "Santaclaus"}

--s_m_m_paramedic_01
--s_f_y_scrubs_01
--mp_m_freemode_01
--mp_f_freemode_01


for i=0,19 do
  surgery_female[i] = {0,0}
  surgery_male[i] = {0,0}
end

-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["Lawyer"] = {
    _config = { permissions = {"Lawyer.cloakroom"} },
    ["Male uniform"] = {
	  [3] = {1,0},
	  [4] = {10,0},
	  [6] = {10,0},
	  [8] = {4,0},
	  [11] = {10,0},
	  ["p2"] = {-1,0}       
    },
    ["Female uniform"] = {
	  [3] = {0,0},
	  [4] = {37,0},
	  [6] = {13,0},
	  [8] = {21,1},
	  [11] = {24,3},
	  ["p2"] = {-1,0}
    }
},
  ["surgery"] = {
    _config = { not_uniform = true },
    ["Male"] = surgery_male,
    ["Female"] = surgery_female
  },
   ["Santa"] = {
    _config = { permissions = {"santa.cloakroom"} },
    ["Santa Outfit"] = santa
    },
  ["EMT"] = {
    _config = { permissions = {"ems.cloakroom"} },
    ["Paramedic"] = emergency_male
    },
  ["Fireman"] = {
    _config = { permissions = {"fire.cloakroom"} },
    ["Fireman"] = fire_uni
    },
  ["Officer"] = {
    _config = { permissions = {"officer.cloakroom"} },
    ["Male (No Vest)"] = officer_male,
    ["Male (Vest)"] = officer_malev,
	  ["Female"] = officer_fmale
  },
  ["Highway"] = {
    _config = { permissions = {"nyhp.cloakroom"} },
    ["NYPD Highway Patrol [Male]"] = hway_uni,
    ["NYPD Highway Patrol [Female]"] = hway_unif
  },
  ["Trooper"] = {
    _config = { permissions = {"nysp.cloakroom"} },
    ["State Trooper"] = hway_male
  },
  ["Investigator"] = {
    _config = { permissions = {"sdet.cloakroom"} },
    ["State Investigator"] = sdet
  },
  ["Bounty"] = {
    _config = { permissions = {"Bounty.cloakroom"} },
    ["Bounty"] = bounty_male 
  },
  ["Detective"] = {
    _config = { permissions = {"Detective.cloakroom"} },
    ["Detective (Suit)"] = detective_suit,
    ["Detective (Raid)"] = detective_vest
  },
    ["ESU"] = {
    _config = { permissions = {"ESU.cloakroom"} },
    ["ESU Patrol Uniform"] = esu_uni,
    ["ESU Tactical Uniform"] = esu_tac,
    ["ESU Counterterrorism Uniform"] = esu_ct
  },
  ["Command"] = {
    _config = { permissions = {"pdcmd.cloakroom"} },
    ["Male (No Vest)"] = officer_male,
    ["Male (Vest)"] = officer_malev,
    ["Female"] = officer_fmale,
    ["Detective (Suit)"] = detective_suit,
    ["Detective (Raid)"] = detective_vest,
    ["NYPD Highway Patrol [Male]"] = hway_uni,
    ["NYPD Highway Patrol [Female]"] = hway_unif,
    ["ESU Patrol Uniform"] = esu_uni,
    ["ESU Tactical Uniform"] = esu_tac,
    ["ESU Counterterrorism Uniform"] = esu_ct
  }
}

cfg.cloakrooms = {
  {"Officer", 459.01037597656,-992.32800292969,30.689575195313},
  {"ESU", 459.01037597656,-992.32800292969,30.689575195313},
  {"Highway", 459.01037597656,-992.32800292969,30.689575195313},
  {"Command", 459.01037597656,-992.32800292969,30.689575195313},
  {"Captain", 459.01037597656,-992.32800292969,30.689575195313},
  {"Lieutenant", 459.01037597656,-992.32800292969,30.689575195313},
  {"Detective", 459.01037597656,-992.32800292969,30.689575195313},
  {"Sergeant", 459.01037597656,-992.32800292969,30.689575195313}, -- Mission Row Locker Room
  {"Officer", -1057.4,-841.109,5.04226},
  {"ESU", -1057.4,-841.109,5.04226},
  {"Highway", -1057.4,-841.109,5.04226},
  {"Command", -1057.4,-841.109,5.04226},
  {"Captain", -1057.4,-841.109,5.04226},
  {"Lieutenant", -1057.4,-841.109,5.04226},
  {"Detective", -1057.4,-841.109,5.04226},
  {"Sergeant", -1057.4,-841.109,5.04226}, -- Vespucci Parking Lot
  {"Officer", 376.842,-1612.39,29.2919}, -- Davis Parking Lot
  {"ESU", 376.842,-1612.39,29.2919},
  {"Highway", 376.842,-1612.39,29.2919},
  {"Command", 376.842,-1612.39,29.2919},
  {"Captain", 376.842,-1612.39,29.2919},
  {"Lieutenant", 376.842,-1612.39,29.2919},
  {"Detective", 376.842,-1612.39,29.2919},
  {"Sergeant", 376.842,-1612.39,29.2919},
  {"Trooper", 1849.79,3686.52,34.267}, -- Sandy Shores Trooper's Office
  {"Investigator", 1849.79,3686.52,34.267}, -- Sandy Shores Trooper's Office
  {"Trooper", -448.615,6015.87,31.7164}, -- Paleto Trooper's Office
  {"Investigator", -448.615,6015.87,31.7164}, -- Paleto Trooper's Office
  {"EMT", 295.257,-1447.66,29.9666}, -- Davis Hospital
  {"Fireman", 199.206,-1650.3,29.8032}, -- Davis Firehouse
  {"EMT", 199.206,-1650.3,29.8032}, -- Davis Firehouse
  {"EMT", 353.374,-603.895,28.7787}, -- Pillbox Hill Hospital
  {"EMT", 1690.22,3581.14,35.6208}, -- Sandy Shores Firehouse
  {"Fireman", 1690.22,3581.14,35.6208}, -- Sandy Shores Firehouse
  {"Fireman", -634.262,-121.715,39.0138}, -- Vinewood Firehouse
  {"EMT", -634.262,-121.715,39.0138}, -- Vinewood Firehouse
  {"Lawyer",105.48087310791,-1088.82177734375,29.3024787902832},
  {"Lawyer",303.299,-1640.35,32.531}, -- Davis Courthouse
  {"surgery",-265.031,-964.696,31.2235},----first spawn change skin
  {"surgery",75.3451766967773,-1392.86596679688,29.3761329650879},---skinsshops
  {"surgery",-700.089477539063,-151.570571899414,37.4151458740234},
  {"surgery",-170.416717529297,-296.563873291016,39.7332878112793},
  {"surgery",425.61181640625,-806.519897460938,29.4911422729492},
  {"surgery",-822.166687011719,-1073.58020019531,11.3281087875366},
  {"surgery",-1186.25744628906,-771.20166015625,17.3308639526367},
  {"surgery",-1450.98388671875,-238.164260864258,49.8105850219727},
  {"surgery",4.44537162780762,6512.244140625,31.8778476715088},
  {"surgery",1693.91735839844,4822.66162109375,42.0631141662598},
  {"surgery",118.071769714355,-224.893646240234,54.5578384399414},
  {"surgery",620.459167480469,2766.82641601563,42.0881042480469},
  {"surgery",1196.89221191406,2710.220703125,38.2226066589355},
  {"surgery",-3178.01000976563,1043.21044921875,20.8632164001465},
  {"surgery",-1101.15161132813,2710.8203125,19.1078643798828},
  {"emergency",244.1099395752,-1382.8720703125,39.534328460693},
  {"Santa",-1373.0778808594,-2677.6694335938,13.944942474365} -- Santa's Cloakroom
}

return cfg
