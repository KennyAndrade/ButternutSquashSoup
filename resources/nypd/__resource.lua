resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
 
files {
    'meta/vehicles.meta',
    'meta/carvariations.meta',
    'meta/carcols.meta',
}
 
data_file 'VEHICLE_METADATA_FILE' 'meta/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'meta/carvariations.meta'
data_file 'CARCOLS_FILE' 'meta/carcols.meta'
 
client_script 'meta/vehicle_names.lua'