/*
_unitsArray= [
				[
					Group1,
					[
						[Unit Type,				Pos,							Init,	Skill,	Rang],
						["O_G_Soldier_AR_F",	[6962.8,7363.69,0.00143886], 	"_this setVehicleVarName "BigMG";", 	0.5, 	"SERGEANT"]
					],
					[
						[Waypoint Pos					Type,		, Behavior, 	Combatmode, Completionradius, 	Formation,	Speed],
						[[6960.8,7360.69,0.00143886], 	"Move",		"COMBAT",		 	"RED", 		30, 			"Line", 	"Full"]
					]
				],
				[
					Group2
					[],
					[]
				]
			]
			
_vehicleArray = [
					[Vehicle Typ, 				Pos,							Dir]
					["B_Heli_Transport_03_F",	[6958.4,7396.93,0.00143886], 	42.877]
				]
*/

_this params ["_taskID"];

switch (_taskID) do {
	case 1 : {
		diag_log format ["Succesfully triggert Task1"];
		_unitsArray = [
						[
							1,
							[	
								["O_G_Soldier_AR_F",[6962.8,7363.69,0.00143886], "", 0.5, "SERGEANT"]
							],
							[
								[[6960.8,7360.69,0.00143886], "Move", "COMBAT", "RED", 30, "Line", "Full"]
							]
						],
						[
							2,
							[
								["O_G_Soldier_AR_F",[6965,7363.69,0.00143886], "", 0.5, "SERGEANT"]
							],
							[
								[[6980,7360.69,0.00143886], "Move", "COMBAT", "BLUE", 20, "Line", "Full"]
							]
						]
					];
		_vehicleArray = [["B_Heli_Transport_03_F",[6958.4,7396.93,0.00143886], 42.877]];
		diag_log format ["Units: %1", _unitsArray];
		diag_log format ["Vehicles: %1", _vehicleArray];
		[_unitsArray, _vehicleArray, _markerArray, _triggerArray] call rt_fnc_spawnHandler;
	};

	case 2 : {
		diag_log format ["Succesfully triggert Task2"];
		_unitsArray = [["O_T_Soldier_F",[3466.4871,17.755922,2930.4961],1,"",0.76661098,"SERGEANT"]];
		_vehicleArray = [];
		[_unitsArray, _vehicleArray, _markerArray, _triggerArray] call rt_fnc_spawnHandler;
	};

	case 3 : {
		diag_log format ["Succesfully triggert Task3"];
		_unitsArray = [];
		_vehicleArray = [];
		//[_unitsArray, _vehicleArray, _markerArray, _triggerArray] call rt_fnc_spawnHandler;
	};

	case 4 : {
		diag_log format ["Succesfully triggert Task4"];
		_unitsArray = [];
		_vehicleArray = [];
		//[_unitsArray, _vehicleArray, _markerArray, _triggerArray] call rt_fnc_spawnHandler;
	};

	case 5:  {
		diag_log format ["Succesfully triggert Task5"];
		_unitsArray = [];
		_vehicleArray = [];
		//[_unitsArray, _vehicleArray, _markerArray, _triggerArray] call rt_fnc_spawnHandler;
	};


	default : {diag_log format ["EH: Error becouse of no TaskID for Player", str name vehicle player];};
};
