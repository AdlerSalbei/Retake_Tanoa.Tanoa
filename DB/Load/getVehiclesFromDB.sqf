private ["_veh", "_classname", "_pos", "_dir", "_healthArray", "_gearArray"];

//EXECUTE AS SERVER !!!
//if (!isDedicated) exitWith { diag_log "Not dedicated leaving getVehiclesFromDB.sqf!"; };

//reconstruct each vehicle stored in "GRAD_Retake_Tanoa_Vehicle"
{
    _x params ["_veh", "_pos", "_dir", "_healthArray", "_gearArray"];
    if (!isNil "_veh") then {
	
		diag_log format ["Loading Vehicle: %1, Pos: %2, Dir: %3", _veh, _pos, _dir];
		
		//spawn vehicle
		_veh = createVehicle [_veh, _pos, [], 0, "CAN_COLLIDE"];
		_veh setDir _dir;
		_veh setPos _pos;

		//set health
		_health = _healthArray select 2;
		{
			diag_log format ["X: %1, Index: %2", _x, _forEachIndex];
			_veh setHitIndex [_forEachIndex, _x];
		} forEach _health;

		//inventory
		clearWeaponCargoGlobal _veh;
		clearItemCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;

		{
			diag_log format ["Loaded Gear X: %1", _x]; 
			if ((count _x) != 0) then {
				diag_log format ["Index: %1, Type: %2, Amount: %3 ", _forEachIndex, _x select 0, _x select 1];
				switch (_forEachIndex) do {
					case 0: { {_veh addBackpackCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
					case 1: { {_veh addItemCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
					case 2: { {_veh addMagazineCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
					case 3: { {_veh addWeaponCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
				};
			};
		} forEach _gearArray;
	};
} forEach (profileNamespace getVariable "SLB_Retake_Tanoa_Vehicle");
