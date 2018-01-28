
local cfg = {}

-- define customization parts
local parts = {
  ["Face"] = 0,
  ["Hair"] = 2,
  ["Shirt"] = 3,
  ["Legs"] = 4,
  ["Accessories"] = 8,
  ["Shoes"] = 6,
  ["Jacket"] = 11,
  ["Hats"] = "p0",
  ["Glasses"] = "p1",
  ["Ears"] = "p2",
  ["Watches"] = "p6"
}

local police = {
  ["Face"] = 0,
  ["Hair"] = 2,
  ["Shirt"] = 3,
  ["Legs"] = 4,
  ["Accessories"] = 8,
  ["Shoes"] = 6,
  ["Ranks"] = 10,
  ["Police Accessories"] = 9,
  ["Jacket"] = 11,
  ["Hats"] = "p0",
  ["Glasses"] = "p1",
  ["Ears"] = "p2",
  ["Watches"] = "p6"
}

local emsfire = {
  ["Face"] = 0,
  ["Hair"] = 2,
  ["Shirt"] = 3,
  ["Legs"] = 4,
  ["Accessories"] = 8,
  ["Shoes"] = 6,
  ["Ranks/Decals"] = 10,
  ["Fire/EMS Accessories"] = 9,
  ["Jacket"] = 11,
  ["Hats"] = "p0",
  ["Glasses"] = "p1",
  ["Ears"] = "p2",
  ["Watches"] = "p6"
}

-- changes prices (any change to the character parts add amount to the total price)
cfg.drawable_change_price = 20
cfg.texture_change_price = 5


-- skinshops list {parts,x,y,z}
cfg.skinshops = {
  {parts,72.2545394897461,-1399.10229492188,29.3761386871338},
  {police,449.81854248047,-993.30865478516,30.689584732056}, -- Mission Row Skin Fixer
  {police,371.503,-1609.36,29.2919}, -- Davis Station Skin Fixer
  {police,-1052.51,-841.194,5.04205}, -- Vespucci Station Skin Fixer
  {police,1848.65,3689.94,34.2671}, -- Sandy Station Skin Fixer
  {police,826.57720947266,-1292.6020507813,28.240655899048}, -- La Mesa Station Fixer
  {police,-448.51,6008.09,31.7164}, -- Paleto Station Skin Fixer
  {emsfire,195.476,-1654.2,29.8032}, -- Davis Fire Station Skin Fixer
  {emsfire,302.873,-1452.42,29.9696}, -- Davis Hospital Skin Fixer
  {emsfire,-637.256,-130.025,39.0138}, -- Vespucci Fire Skin Fixer
  {emsfire,357.764,-608.078,28.8047}, -- Pillbox Hospital Skin Fixer
  {emsfire,1195.2052001953,-1481.966796875,34.859527587891}, -- El Burro Heights Skin fixer
  {parts,-703.77685546875,-152.258544921875,37.4151458740234},
  {parts,-167.863754272461,-298.969482421875,39.7332878112793},
  {parts,428.694885253906,-800.1064453125,29.4911422729492},
  {parts,-829.413269042969,-1073.71032714844,11.3281078338623},
  {parts,-1193.42956542969,-772.262329101563,17.3244285583496},
  {parts,-1447.7978515625,-242.461242675781,49.8207931518555},
  {parts,11.6323690414429,6514.224609375,31.8778476715088},
  {parts,1696.29187011719,4829.3125,42.0631141662598},
  {parts,123.64656829834,-219.440338134766,54.5578384399414},
  {parts,618.093444824219,2759.62939453125,42.0881042480469},
  {parts,1190.55017089844,2713.44189453125,38.2226257324219},
  {parts,-3172.49682617188,1048.13330078125,20.8632030487061},
  {parts,-1108.44177246094,2708.92358398438,19.1078643798828}
}

return cfg
