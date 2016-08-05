while (true) do { 
	sleep 30;
	if (isServer) then  {
		[] call "DB\saveVehiclesInDB.sqf";
		[] call "DB\saveBoxInDB.sqf";
	} else {
		[] call "DB\savePlayerInDB.sqf"
	};
};