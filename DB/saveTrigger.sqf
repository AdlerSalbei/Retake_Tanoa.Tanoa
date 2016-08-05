while (true) do { 
	sleep 30;
	if (isServer) then  {
		[] call "DB\saveVehiclesInDB.sqf";
		[] call "DB\saveBoxInDB.sqf";
	};
	
	if (hasInterface) then {
		[] call "DB\savePlayerInDB.sqf"
	};
	hint format ["Saved in DB",];
};
