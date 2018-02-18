
canaryClient = true

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
    "go4.xml",
    "nydot.xml",
    "security.xml",
    "state1.xml",
    "state2.xml",
    "state3.xml",
    "state4.xml",
    "state5.xml",
    "state6.xml",
    "state7.xml",
    "state8.xml",
    "state9.xml",
	"firetruk.xml",
    "towtruck.xml",
	"fdny162.xml",
    "det1.xml",
    "det2.xml",
    "emsexp.xml",
    "unmarked1.xml",
    "unmarked2.xml",
    "unmarked3.xml",
    "unmarked4.xml",
    "unmarked5.xml",
    "unmarked6.xml",
    "unmarked7.xml",
    "unmarked8.xml",
    "unmarked9.xml",
    "unmarked10.xml",
}

pattern_files = {
	"WIGWAG.xml",
	"WIGWAG3.xml",
	"WIGWAG4.xml",
	"FAST.xml",
	"COMPLEX.xml",
	"BACKFOURTH.xml",
	"BACKFOURTH2.xml",
	"T_ADVIS_RIGHT_LEFT.xml",
	"T_ADVIS_LEFT_RIGHT.xml",
	"T_ADVIS_BACKFOURTH.xml"
}

modelsWithTrafficAdvisor = {

}

modelsWithFireSiren =
{
    "FIRETRUK",
}


modelsWithAmbWarnSiren =
{   
    "AMBULANCE",
    "FIRETRUK",
    "LGUARD",
}

stagethreewithsiren = false
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
    "police4",
    "lgaurd",
    "ambulance",
    "state1",
    "state2",
    "state3",
    "state4",
    "state5",
    "state6",
    "state7",
    "state8",
    "state9",
    "policeb",
    "go4",
	"firetruk",
	"fdny162",
    "simon2",
    "det1",
    "det2",
    "emsexp",
    "towtruck",
    "nydot",
    "security",
    "unmarked1",
    "unmarked2",
    "unmarked3",
    "unmarked4",
    "unmarked5",
    "unmarked6",
    "unmarked7",
    "unmarked8",
    "unmarked9",
    "unmarked10",
}


vehicleSyncDistance = 150
envirementLightBrightness = 0.2

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