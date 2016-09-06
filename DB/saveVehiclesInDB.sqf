private ["_value","_vehicles","_veh","_vehType","_pos","_dir","_health","_gear","_fuel"];

_value = [];
_vehicles = vehicles;

if (isNil "_vehicles") exitWith {};

{
	_veh = _x;

	if(!isnull _veh && alive _veh) then {

		_vehType = typeOf _veh;
		
		diag_log format ["VehType: %1",  _vehType];
		if (str _vehType != "WeaponHolderSimulated") then {
			
			//base
			_pos = getPos _veh;
			_dir = getDir _veh;
			_health = getAllHitPointsDamage _veh;
	
			//cargo
			_gear = [(getBackpackCargo _veh), (getItemCargo _veh), (getMagazineCargo _veh), (getWeaponCargo _veh)];
			diag_log format ["Veh: %1, Gear: %2", _veh, _gear];
			_fuel = getFuelCargo _veh;
	
			//save array composition
			_value pushback [_vehType, _pos, _dir, _health, _gear, _fuel];
			diag_log format ["Value: %1", _value];
		}
	};
} forEach _vehicles;

profileNamespace setVariable ["SLB_Retake_Tanoa_Vehicle", _value];
saveProfileNamespace;
