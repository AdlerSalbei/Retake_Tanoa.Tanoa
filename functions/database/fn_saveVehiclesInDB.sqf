private ["_value","_vehicles","_vehType","_pos","_dir","_health","_gear","_fuel"];

_value = [];
_vehicles = vehicles;

if (isNil "_vehicles") exitWith {};
{
	if(!isNull _x && alive _x ) then {

		_vehType = typeOf _x;
		if (str _vehType != "WeaponHolderSimulated") then {
			
			//base
			_pos = getPos _x;
			_dir = getDir _x;
			_health = getAllHitPointsDamage _x;
	
			//cargo
			_gear = [(getBackpackCargo _x), (getItemCargo _x), (getMagazineCargo _x), (getWeaponCargo _x)];
			_fuel = fuel _x;
			
			//Vehicle spezifics
			_varName = vehicleVarName _x;
			//save array composition
			_value pushback [_vehType, _pos, _dir, _health, _gear, _fuel, _varName];
		};
	};
} forEach _vehicles;

profileNamespace setVariable ["SLB_Retake_Tanoa_Vehicle", _value];
saveProfileNamespace;
