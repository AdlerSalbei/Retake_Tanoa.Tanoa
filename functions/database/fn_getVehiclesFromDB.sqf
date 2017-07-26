private ["_veh", "_classname", "_pos", "_dir", "_healthArray", "_gearArray"];

//EXECUTE AS SERVER !!!
if (!isServer) exitWith {};

//reconstruct each vehicle stored in "SLB_Retake_Tanoa_Vehicle"
{
    _x params ["_vehName", "_pos", "_dir", "_healthArray", "_gearArray", "_fuel", "_varName"];
	diag_log format ["Retake Vehicle: %1, %2, %3, %4, %5",_vehName,_pos,_dir,_fuel,_varName];
	diag_log format ["Retake Vehicle: %1, %2",_healthArray,_gearArray];
    if (!isNil "_vehName") then {
		diag_log format ["Retake: %1", _fuel];
		//spawn vehicle
		_veh = createVehicle [_vehName, _pos, [], 0, "CAN_COLLIDE"];
		_veh setDir _dir;
		_veh setPos _pos;

		//set health
		{
			_veh setHitIndex [_forEachIndex, _x];
		} forEach (_healthArray select 2);
		
		//inventory
		clearWeaponCargoGlobal _veh;
		clearItemCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;

		{
			if !(_x isEqualTo [[],[]]) then {	
				switch (_forEachIndex) do {
					case 0: { {_veh addBackpackCargoGlobal [_x select 0, _x select 1]; } forEach _x;};
					case 1: { {_veh addItemCargoGlobal [_x select 0, _x select 1]; } forEach _x;};
					case 2: { {_veh addMagazineCargoGlobal [_x select 0, _x select 1]; } forEach _x;};
					case 3: { {_veh addWeaponCargoGlobal [_x select 0, _x select 1]; } forEach _x;};
				};
			};
		} forEach _gearArray;
		_veh setFuel _fuel;
		_veh setVehicleVarName _varName;
	};
} forEach (profileNamespace getVariable "SLB_Retake_Tanoa_Vehicle");
