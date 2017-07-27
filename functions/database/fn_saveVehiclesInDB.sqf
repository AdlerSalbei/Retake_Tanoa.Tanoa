private ["_value","_vehicles","_vehType","_pos","_dir","_health","_gear","_fuel"];

_value = [];
_vehicles = vehicles;

if (isNil "_vehicles") exitWith {};
{
	if(!isNull _x && alive _x ) then {

		_vehType = typeOf _x;
		diag_log format ["RT Vehicle %1, Name: %2", _vehType, vehicleVarName _x];
		if (str _vehType != "WeaponHolderSimulated" || (str (vehicleVarName _x)) == "" || (str _vehType != "Laptop_EP1")) then {
			
			//base
			_pos = getPos _x;
			_dir = getDir _x;
			_health = getAllHitPointsDamage _x;
	
			//cargo
			_gear = [(getBackpackCargo _x), (getItemCargo _x), (getMagazineCargo _x), (getWeaponCargo _x)];
			_fuel = fuel _x;
			_magazines = magazinesAllTurrets _x;
			
			//save array composition
			/*
			_value pushback [_vehType, _pos, _dir, _health, _gear, _fuel, _magazines];
			*/
		};
	};
} forEach _vehicles;

profileNamespace setVariable ["SLB_Retake_Tanoa_Vehicle", _value];
saveProfileNamespace;
