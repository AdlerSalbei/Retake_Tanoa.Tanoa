_saveServer = {
	nul = [] execVM "DB\saveVehiclesInDB.sqf";
	nul = [] execVM "DB\saveWeatherAndDateInDB.sqf";
};
	
_savePlayer = {
	nul = [] execVM "DB\savePlayerInDB.sqf";
};

if (isServer) then {
	[_saveServer, 30, []] call CBA_fnc_addPerFrameHandler;
};

if (hasInterface) then {
	slb_fnc_tfar_remove_id = compile preprocessfilelinenumbers "helpers\fn_tfar_remove_id.sqf";
	[_savePlayer, 30, []] call CBA_fnc_addPerFrameHandler;
};
