while (true) do { 
	sleep 30;
	if (isDedicated) then  {
		[] call "DB\saveVehiclesInDB.sqf";
		[] call "DB\saveBoxInDB.sqf";
	};
	
	if (hasInterface) then {
		[] call "DB\savePlayerInDB.sqf";
		hint format ["Saved %1 in DB", str player];
	};
};
