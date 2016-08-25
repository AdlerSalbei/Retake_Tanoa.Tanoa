while (true) do { 
	sleep 30;
	if (isDedicated) then  {
		[] execVM "DB\saveVehiclesInDB.sqf";
	};
	
	if (hasInterface) then {
		[] execVM "DB\savePlayerInDB.sqf";
	};
};
