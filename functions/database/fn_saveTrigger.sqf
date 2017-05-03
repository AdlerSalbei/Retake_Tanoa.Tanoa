[{
	_saveServer = {
		[] call rt_fnc_saveVehiclesInDB;
		[] call rt_fnc_saveWeatherAndDateInDB;
	};
		
	_savePlayer = {
		[] call rt_fnc_savePlayerInDB;
	};

	if (isServer) then {
		[_saveServer, 30, []] call CBA_fnc_addPerFrameHandler;
	};

	if (hasInterface) then {
		[_savePlayer, 30, []] call CBA_fnc_addPerFrameHandler;
	};
},[], 60] call CBA_fnc_waitAndExecute;

