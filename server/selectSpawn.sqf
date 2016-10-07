taskID1 = {
	diag_log format ["Succesfully triggert Task1"];
	_unitsArray = [["O_G_Soldier_AR_F",[6879.71,7390.21,0.00143886],1,"",0.5,"corporal"]];
	_vehicleArray = [["B_Heli_Transport_03_F",[6889.71,7390.21,0.00143886], 42.877],["B_T_VTOL_01_armed_olive_F",[6962.8,7363.69,0.00143886],170.327]];
	[_unitsArray, _vehicleArray] call slb_Mission_spawn;
};

taskID2 = {
	diag_log format ["Succesfully triggert Task2"];
	_unitsArray = [];
	_vehicleArray = [];
	//[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID3 = {
	diag_log format ["Succesfully triggert Task3"];
	_unitsArray = [];
	_vehicleArray = [];
	//[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID4 = {
	diag_log format ["Succesfully triggert Task4"];
	_unitsArray = [];
	_vehicleArray = [];
	//[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

taskID5 = {
	diag_log format ["Succesfully triggert Task5"];
	_unitsArray = [];
	_vehicleArray = [];
	//[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
};

SPAWNSETUPDONE = true;
publicVariable "SPAWNSETUPDONE";
