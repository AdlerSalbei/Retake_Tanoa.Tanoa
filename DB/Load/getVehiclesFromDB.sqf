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
		diag_log format ["Veh: %1, Health: %1", _veh, _healthArray];
		if !(_health isEqualTo _veh) then {
			_health = _healthArray select 2;
			{
				_veh setHitIndex [_forEachIndex, _x];
			} forEach _health;
		};
		//inventory
		clearWeaponCargoGlobal _veh;
		clearItemCargoGlobal _veh;
		clearMagazineCargoGlobal _veh;
		clearBackpackCargoGlobal _veh;

		{
			if !(_x isEqualTo [[],[]]) then {	
				switch (_forEachIndex) do {
					case 0: { {_veh addBackpackCargoGlobal [_x select 0, _x select 1]; } forEach _x; diag_log format ["Index: %1, Type: %2, Amount: %3 ", _forEachIndex, _x select 0, _x select 1];};
					case 1: { {_veh addItemCargoGlobal [_x select 0, _x select 1]; } forEach _x; diag_log format ["Index: %1, Type: %2, Amount: %3 ", _forEachIndex, _x select 0, _x select 1];};
					case 2: { {_veh addMagazineCargoGlobal [_x select 0, _x select 1]; } forEach _x; diag_log format ["Index: %1, Type: %2, Amount: %3 ", _forEachIndex, _x select 0, _x select 1];};
					case 3: { {_veh addWeaponCargoGlobal [_x select 0, _x select 1]; } forEach _x; diag_log format ["Index: %1, Type: %2, Amount: %3 ", _forEachIndex, _x select 0, _x select 1];};
				};
			};
		} forEach _gearArray;
	};
} forEach (profileNamespace getVariable "SLB_Retake_Tanoa_Vehicle");
