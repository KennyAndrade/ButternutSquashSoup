
local cfg = {}

-- define market types like garages and weapons
-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the market)

cfg.market_types = {
  ["food"] = {
    _config = {blipid=52, blipcolor=2},

    -- list itemid => price
    -- Drinks
    ["milk"] = 20,
    ["water"] = 20,
    ["coffee"] = 40,
    ["tea"] = 40,
    ["icetea"] = 80,
    ["orangejuice"] = 80,
    ["cocacola"] = 120,
    ["redgbll"] = 120,
    ["lemonaid"] = 140,
    ["vodka"] = 300,

    --Food
    ["bread"] = 20,
    ["donut"] = 20,
    ["tacos"] = 80,
    ["sandwich"] = 200,
    ["kebab"] = 200,
    ["pdonut"] = 650,
  },
  --["drugstore"] = {
  --  _config = {blipid=51, blipcolor=2},
  --  ["pills"] = 500
  --},
  ["EMS Supplies"] = {
    _config = {blipid=51, blipcolor=68, permissions={"emergency.market"}},
    ["medkit"] = 0,
    ["pills"] = 0
  },
  ["plantation"] = {
    _config = {blipid=473, blipcolor=4, permissions={"drugseller.market"}},
    ["seeds"] = 500,
	["benzoilmetilecgonina"] = 800,
	["harness"] = 1000
  },
  ["tools"] = {
    _config = {blipid=402, blipcolor=47, permissions={"repair.market"}},
    ["repairkit"] = 50
  }
}

-- list of markets {type,x,y,z}

cfg.markets = {
  --{"drugstore",356.5361328125,-593.474304199219,28.7820014953613},
  {"EMS Supplies",358.65,-590.288,28.7893}, -- Pillbox Hill
  {"EMS Supplies",-367.107,6131.47,31.4402}, -- Paleto Bay
  {"EMS Supplies",-634.855,-126.591,39.0138}, -- Vinewood Hills
  {"EMS Supplies",203.184,-1644.93,29.8032}, -- Davis Firehouse
  {"EMS Supplies",1841.4317626953,3673.5891113281,34.276752471924}, -- Sandy Shores
  {"EMS Supplies",-243.3074798584,6326.2265625,32.426181793213}, -- Paleto Bay
  {"plantation",1789.86682128906,3896.16943359375,34.3892250061035},
  {"tools",408.95471191406,-1622.8607177734,29.291942596436}
}

return cfg
