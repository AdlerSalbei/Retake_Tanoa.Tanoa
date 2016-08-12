private ["_value"];

_value = [];
_vehicles = vehicles;

{
	_veh = _vehicles select _x;

	if(!isnull _veh && alive _veh) then {
		
		//base
		_pos getPos _veh;
		_dir getDir _veh;
		_health = [];
		_health = getAllHitPointsDamage _veh;
		
		//cargo
		_backpacks = getBackpackCargo _veh;
		_items = getItemCargo _veh;
		_magazines = getMagazineCargo _veh;
		_weapons = getWeaponCargo _veh;
		
		//save array composition
		_gear = [_backpacks, _items, _magazines, _weapons];			
		
		_value pushback [_veh, _pos, _dir, _health, _gear];
	};
} forEach _Vehicles;

profileNamespace setVariable ["SLB_Retake_Tanoa_Vehicle", _value];
saveProfileNamespace;
