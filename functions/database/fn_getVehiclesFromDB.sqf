private ["_veh", "_classname", "_pos", "_dir", "_healthArray", "_gearArray"];

//EXECUTE AS SERVER !!!
if (!isServer) exitWith {};

//reconstruct each vehicle stored in "SLB_Retake_Tanoa_Vehicle"
{
    _x params ["_veh", "_pos", "_dir", "_healthArray", "_gearArray", "_fuel", "_varName", "_killTimer"];
    if (!isNil "_veh") then {
		diag_log format ["Retake: %1", _fuel];
		//spawn vehicle
		_veh = createVehicle [_veh, _pos, [], 0, "CAN_COLLIDE"];
		_veh setDir _dir;
		_veh setPos _pos;

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
		_veh setVariable ["SLB_KILLTIMER", _killTimer];
	};
} forEach (profileNamespace getVariable "SLB_Retake_Tanoa_Vehicle");
