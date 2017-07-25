params ["_obj"];

_missionOverhead =["","Missions","",{true},{true}] call ace_interact_menu_fnc_createAction; 

_smallGarrison 	= ["Missions","Small Garrision"	,"", { _obj remoteExecCall ["rt_fnc_spawnSmallGarision", 2];}		,{true},{}] call ace_interact_menu_fnc_createAction;
_smallRoadblock	= ["Missions","Small Roadblock"	,"", { _obj remoteExecCall ["rt_fnc_spawnSmallRoadblock", 2];}	,{true},{}] call ace_interact_menu_fnc_createAction;
_cleanUp 		= ["Missions","Clean UP"		,"", {remoteExecCall ["rt_fnc_cleanUP", 2];}				,{true},{}] call ace_interact_menu_fnc_createAction;

[_obj, 0, [""], 		_missionOverhead] call ace_interact_menu_fnc_addActionToObject;
[_obj, 0, ["Missions"], _smallGarrison	] call ace_interact_menu_fnc_addActionToObject;
[_obj, 0, ["Missions"], _smallRoadblock	] call ace_interact_menu_fnc_addActionToObject;
[_obj, 0, ["Missions"], _cleanUp		] call ace_interact_menu_fnc_addActionToObject;
