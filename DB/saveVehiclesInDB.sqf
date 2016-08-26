private ["_value","_vehicles","_veh","_vehType","_pos","_dir","_health","_gear","_fuel"];

_value = [];
_vehicles = vehicles;

{
	_veh = _x;

	if(!isnull _veh && alive _veh) then {
		
		_vehType = typeOf _veh;
		
		//base
		_pos getPos _veh;
		_dir getDir _veh;
		_health = getAllHitPointsDamage _veh;
		
		//cargo
		_gear = [(getBackpackCargo _veh), (getItemCargo _veh), (getMagazineCargo _veh), (getWeaponCargo _veh)];
		
		_fuel = getFuelCargo _veh;
		
		//save array composition
		_value pushback [_veh, _pos, _dir, _health, _gear, _fuel];
	};
} forEach _vehicles;

profileNamespace setVariable ["SLB_Retake_Tanoa_Vehicle", _value];
saveProfileNamespace;
