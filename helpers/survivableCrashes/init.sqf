survivableCrashes_OnVehicleCrash = compileFinal preprocessFileLineNumbers "helpers\survivableCrashes\functions\fn_onVehicleCrash.sqf";
survivableCrashes_VehicleInit = compileFinal preprocessFileLineNumbers "helpers\survivableCrashes\functions\fn_vehicleInit.sqf";
survivableCrashes_PlaySfx = compileFinal preprocessFileLineNumbers "helpers\survivableCrashes\functions\fn_playSfx.sqf";

[] execVM "r0ed_SurvivableCrashes\functions\init\init_default.sqf";

if(hasInterface) then {
	player addEventHandler ["GetInMan", {
		params ["_unit", "_position", "_veh"];
		if(hasInterface) then {
			if(_unit == player) then {
				[_veh] call survivableCrashes_VehicleInit;
			};
		};
		[_veh] remoteExec ["fnc_vehicleInit", 2];
	}];
}
