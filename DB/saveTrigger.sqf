slb_fnc_tfar_remove_id = compile preprocessfilelinenumbers "helpers\fn_tfar_remove_id.sqf";

while {true} do { 
	sleep 30;
	if (isServer) then  {
		[] execVM "DB\saveVehiclesInDB.sqf";
		[] execVM "DB\saveWeatherAndDateInDB.sqf";
	};
	
	if (hasInterface) then {
		[] execVM "DB\savePlayerInDB.sqf";
	};
};
