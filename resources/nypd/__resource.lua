resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
files {
    'meta/vehicles.meta',
    'meta/carvariations.meta',
    'meta/carcols.meta',
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
 
data_file 'VEHICLE_METADATA_FILE' 'meta/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'meta/carvariations.meta'
data_file 'CARCOLS_FILE' 'meta/carcols.meta'
 
client_script 'meta/vehicle_names.lua'

is_els 'true'