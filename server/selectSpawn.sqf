taskID0 = {diag_log format ["EH: Error becouse of no TaskID for Player", str name vehicle player];};

/*
_unitsArray= [
				[
					Group1,
					[
						[
							"O_G_Soldier_AR_F",						//Unit Type
							[6962.8,7363.69,0.00143886],			//Pos
							"_this setVehicleVarName "BigMG";",		//Init
							0.5,									//Skill
							"SERGEANT"								//Rang
						]
					],
					[
						"Line",		//Group Formation  
						"RED",		//Group CombatMode; 
						"COMBAT",	//Group Behaviour;
						"Full"		//Group SpeedMode
					],
					[
						[
							[6960.8,7360.69,0.00143886],		//Waypoint Pos
							"Move",					//Type
							"COMBAT",				//Behavior
							"RED", 					//Combatmode
							30, 					//Completionradius
							"Line", 				//Formation
							"Full"					//Speed
						]
					]
				],
				[
					Group2
					[],
					[]
				]
			]
			
_vehicleArray = [
			[
				"B_Heli_Transport_03_F",			//Vehicle Typ
				[6958.4,7396.93,0.00143886], 		//Pos
				42.877								//Vector Dir
				1									//Vector Up
			]
		]
_triggerArray = [
			[
				"EmptyDetector", 					//Type
				[6958.4,7396.93,0.00143886], 		//Pos
				"CIV", 								//Wer triggert
				"PRESENT", 							//Wie triggert
				true, 								//Cycle
				"this", 							//Condition
				"hint 'Civilian near player'", 		//Activation
				"hint 'no civilian near'",			//Deactivation
				5, 									//Länge
					5, 								//Breite
					5, 								//Höhe
					0, 								//Rotaion
				false,								//Ist Rectangle
				5,									//Timeout Min, 
				10,  								//Timout Mid, 
				7,									//Timeout Max, 
				false								//Interruptable
			]
		]
*/


taskID1 = {
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
	[_unitsArray, _vehicleArray] call slb_Mission_spawn;
};

taskID2 = {
	diag_log format ["Succesfully triggert Task2"];
	_unitsArray = [["O_T_Soldier_F",[3466.4871,17.755922,2930.4961],1,"",0.76661098,"SERGEANT"]];
	_vehicleArray = [];
	[_unitsArray, _vehicleArray] call grad_salbeiMission_spawn;
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


