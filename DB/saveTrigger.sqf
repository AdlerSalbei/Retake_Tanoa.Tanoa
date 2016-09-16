slb_fnc_tfar_remove_id = compile preprocessfilelinenumbers "helpers\fn_tfar_remove_id.sqf";

_saveServer = {
	[] execVM "DB\saveVehiclesInDB.sqf";
	[] execVM "DB\saveWeatherAndDateInDB.sqf";
};
	
_savePlayer = {
	[] execVM "DB\savePlayerInDB.sqf";
};

if (isServer) then {
	[_saveServer, 30, []] call CBA_fnc_addPerFrameHandler;
};

if (hasInterface) then {
	[_savePlayer, 30, []] call CBA_fnc_addPerFrameHandler;
};
