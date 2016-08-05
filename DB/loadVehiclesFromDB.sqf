private ["_veh", "_classname", "_pos", "_dir", "_healthArray", "_gearArray", 

//EXECUTE AS SERVER !!!
if (!isServer) exitWith { diag_log "ERROR restore vehicle not as server"; };

//reconstruct each vehicle stored in "GRAD_Retake_Tanoa_Vehicle"
{
    _x params ["_veh", "_pos", "_dir", "_healthArray", "_gearArray"];
    
	//spawn vehicle
    _veh = createVehicle [_veh, _pos, [], 0, "CAN_COLLIDE"];
    _veh setDir _dir;

	//set health
	_health = _healthArray select 2;
	{
		_veh setHitIndex [_forEachIndex, _x];
	} forEach _health;
	
	//inventory
    clearWeaponCargoGlobal _veh;
    clearItemCargoGlobal _veh;
    clearMagazineCargoGlobal _veh;
    clearBackpackCargoGlobal _veh;

	{
		switch (_forEachIndex) do {
                    case 0: { {_veh addBackpackCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
					case 1: { {_veh addItemCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
					case 2: { {_veh addMagazineCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
					case 3: { {_veh addWeaponCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
		};
	} forEach _gearArray;
} forEach (profileNamespace getVariable ["GRAD_Retake_Tanoa_Vehicle"]); 
