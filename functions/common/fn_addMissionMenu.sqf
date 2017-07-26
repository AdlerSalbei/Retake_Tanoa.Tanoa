params ["_obj"];

_missionOverhead =["Missions","Missions","",{true},{true}] call ace_interact_menu_fnc_createAction; 

_smallGarrison 	= ["Small Garrision","Small Garrision"	,"", 	{ _obj remoteExecCall ["rt_fnc_spawnSmallGarision", 2];}	,{true},{}] call ace_interact_menu_fnc_createAction;
_smallRoadblock	= ["Small Roadblock","Small Roadblock"	,"", 	{ _obj remoteExecCall ["rt_fnc_spawnSmallRoadblock", 2];}	,{true},{}] call ace_interact_menu_fnc_createAction;
_cleanUp 		= ["Clean UP","Clean UP", "", 					{remoteExecCall ["rt_fnc_cleanUP", 2];}						,{true},{}] call ace_interact_menu_fnc_createAction;

[_obj, 0, ["ACE_MainActions"], 		_missionOverhead] call ace_interact_menu_fnc_addActionToObject;
[_obj, 0, ["ACE_MainActions", "Missions"], _smallGarrison	] call ace_interact_menu_fnc_addActionToObject;
[_obj, 0, ["ACE_MainActions", "Missions"], _smallRoadblock	] call ace_interact_menu_fnc_addActionToObject;
[_obj, 0, ["ACE_MainActions", "Missions"], _cleanUp		] call ace_interact_menu_fnc_addActionToObject;

[cursorTarget, 0, ["ACE_TapShoulderRight"], _action] call ace_interact_menu_fnc_addActionToObject;