private ["_value","_vehicles","_vehType","_pos","_dir","_health","_gear","_fuel"];

_value = [];
_vehicles = vehicles;

if (isNil "_vehicles") exitWith {};
{
	if(!isnull _x && alive _x) then {

		_vehType = typeOf _x;
		if (str _vehType != "WeaponHolderSimulated") then {
			
			//base
			_pos = getPos _x;
			_dir = getDir _x;
			_health = getAllHitPointsDamage _x;
	
			//cargo
			_gear = [(getBackpackCargo _x), (getItemCargo _x), (getMagazineCargo _x), (getWeaponCargo _x)];
			_fuel = getFuelCargo _x;
	
			//save array composition
			diag_log format ["Veh: %1, Pos: %2, Dir: %3, Fuel: %4, Gear: %5, Health: %6", _vehType, _pos, _dir, _fuel, _gear, _health];
			_value pushback [_vehType, _pos, _dir, _health, _gear, _fuel];
		}
	};
} forEach _vehicles;

profileNamespace setVariable ["SLB_Retake_Tanoa_Vehicle", _value];
saveProfileNamespace;

sleep 5;

_value1 = profileNamespace getVariable "SLB_Retake_Tanoa_Vehicle";

if  (isNil "_value1") exitWith {diag_log format ["Error: Save of Vehicle Failed!"];};

if (_value1 isEqualTo _value) then {
	diag_log format ["Saved Vehicles in DB sucessfull!"];
}else{
	diag_log format ["Error: Save Vehicles in DB Failed!"];
	diag_log format ["Value1: %1", _value1];
};
