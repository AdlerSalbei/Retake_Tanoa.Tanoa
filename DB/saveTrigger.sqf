sleep 60;

_saveServer = {
	nul = [] execVM "DB\Save\saveVehiclesInDB.sqf";
	nul = [] execVM "DB\Save\saveWeatherAndDateInDB.sqf";
};
	
_savePlayer = {
	nul = [] execVM "DB\Save\savePlayerInDB.sqf";
};

if (isServer) then {
	[_saveServer, 30, []] call CBA_fnc_addPerFrameHandler;
};

if (hasInterface) then {
	slb_fnc_tfar_remove_id = compile preprocessfilelinenumbers "helpers\fn_tfar_remove_id.sqf";
	[_savePlayer, 30, []] call CBA_fnc_addPerFrameHandler;
};
