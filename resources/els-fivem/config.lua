vcf_files = {
	"FBI.xml",
	"police.xml",
    "police2.xml",
    "police3.xml",
    "fbi2.xml",
    "sheriff.xml",
    "sheriff2.xml",
    "policeold1.xml",
    "policeold2.xml",
    "police4.xml",
    "pranger.xml",
    "lguard.xml",
    "ambulance.xml",
    "pbus.xml",
    "policeb.xml",
    "riot.xml",
    "towtruck.xml",
    "go4.xml",
    "state1.xml",
    "state2.xml",
    "state3.xml",
    "state4.xml",
    "state5.xml",
	"firetruk.xml",
	"fdny162.xml",
    "simon2.xml",
    "det1.xml",
    "det2.xml",
    "flatbed.xml",
    "emsexp.xml",
}

pattern_files = {
	"WIGWAG.xml",
	"WIGWAG2.xml",
	"WIGWAG3.xml",
	"WIGWAG4.xml",
	"NORWEGIAN.xml",
	"LEFTRIGHT.xml",
	"LEFTSWEEP.xml",
	"RIGHTSWEEP.xml",
}

modelsWithFireSiren =
{
    "FIRETRUK",
	"fdny162",
}


modelsWithAmbWarnSiren =
{   
    "AMBULANCE",
    "simon2",
    "FIRETRUK",
	"fdny162",
}

stagethreewithsiren = true
playButtonPressSounds = true
vehicleStageThreeAdvisor = {
    "FBI",
    "police",
    "police2",
    "police3",
    "fbi2",
    "sheriff",
    "sheriff2",
    "pbus",
    "pranger",
    "policeold1",
    "policeold2",
    "riot",
    "towtruck",
    "police4",
    "lgaurd",
    "ambulance",
    "state1",
    "state2",
    "state3",
    "state4",
    "state5",
    "policeb",
    "go4",
	"firetruk",
	"fdny162",
    "simon2",
    "det1",
    "det2",
    "flatbed",
    "emsexp",
}


shared = {
	horn = 108,
}

keyboard = {
	modifyKey = 132,
	stageChange = 85,
	guiKey = 243,
	takedown = 245,
	siren = {
		tone_one = 157,
		tone_two = 158,
		tone_three = 160,
		dual_toggle = 164,
		dual_one = 165,
		dual_two = 159,
		dual_three = 161,
	},
	pattern = {
		primary = 246,
		secondary = 303,
		advisor = 182,
	},
}

controller = {
	modifyKey = 73,
	stageChange = 80,
	takedown = 74,
	siren = {
		tone_one = 173,
		tone_two = 85,
		tone_three = 172,
	},
}