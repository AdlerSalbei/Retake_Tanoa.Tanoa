_saveVehiclesArray = {
	profileNamespace setVariable ["SLB_Retake_Tanoa_spawnedVehicles", slb_allSpawnedVehicles];
	saveProfileNamespace;
};

"slb_allSpawnedVehicles" addPublicVariableEventHandler {[] call _saveVehiclesArray;};