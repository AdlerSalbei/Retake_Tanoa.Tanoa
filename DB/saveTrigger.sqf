while (true) do { 
	sleep 30;
	if (isDedicated) then  {
		[] execVM "DB\saveVehiclesInDB.sqf";
		[] execVM "DB\saveWeatherAndDateInDB.sqf";
	};
	
	if (hasInterface) then {
		[] execVM "DB\savePlayerInDB.sqf";
	};
};
