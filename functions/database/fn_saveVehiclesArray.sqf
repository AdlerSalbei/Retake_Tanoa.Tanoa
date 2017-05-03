_saveVehiclesArray = {
	diag_log format ["Called Save Vehicles Array: %1", slb_allSpawnedVehicles];
	profileNamespace setVariable ["SLB_Retake_Tanoa_spawnedVehicles", slb_allSpawnedVehicles];
	saveProfileNamespace;
};

"slb_allSpawnedVehicles" addPublicVariableEventHandler {[] call _saveVehiclesArray;};