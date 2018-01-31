K9_Config = {}
K9_Config = setmetatable(K9_Config, {})

K9_Config.DogModel = "a_c_shepherd" -- Set dog model of your choice
K9_Config.PedRestricted = true -- [true means the menu is restricted to cop peds. false means the menu can be used by everyone.]
K9_Config.VehicleRestricted = true -- [true means the dog can only get into police vehicles listed. false means he can enter any vehicle told to.]
K9_Config.GodmodeDog = true -- [true means the dog can NOT die. false means the dog CAN die.]
K9_Config.SearchSetting = "random" -- [random means it randomly generates items in the vehicle.]

K9_Config.PedList = {
	"s_m_y_cop_01",
	"s_f_y_cop_01",
	"s_m_y_hwaycop_01",
	"s_m_y_sheriff_01",
	"s_f_y_sheriff_01",
	"s_m_y_ranger_01",
	"s_f_y_ranger_01",
	"u_m_m_doa_01",
	"s_m_y_swat_01",
	"s_m_y_pilot_01",
	"s_m_y_blackops_01",
	"s_m_y_snowcop_01",
	"s_m_m_ciasec_01"
}

K9_Config.VehicleList = {
	"police",
	"police2",
	"polic3",
	"police4",
	"policeb",
	"sheriff",
	"sheriff2",
	"lguard",
	"policeold",
	"policeold2",
	"pranger",
	"fbi",
	"fbi2",
	"state1",
	"state2",
	"state3",
	"state4",
	"state5",
	"state6",
	"state7",
	"det2",
	"det1",
	"go4",
	"pbus",
	"riot",
	"unmarked1",
	"unmarked2",
	"unmarked3",
	"unmarked4",
	"unmarked5",
	"unmarked6",
	"unmarked7",
	"unmarked8",
	"unmarked9"
}

K9_Config.Items = {
	illegal = {
		"Meth",
		"Marijuana",
		"Crack Cocaine",
		"Bath Salts",
		"Heroin"
	},
	suspicious = {
		"Open Alcahol Container(s)",
		"Marijuana Seed(s)",
		"Marijuana Stem(s)",
		"Large Wad of Cash",
        "Scale",
        "Small Baggies"
	},
	legal = {
		"Dirty Socks",
		"Bag(s) of candy",
		"Empty Food Wrapper(s)",
		"Empty Cup(s)",
		"Change"
    },
}