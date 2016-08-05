_vehicles = vehicles;

{
	if(alive _name) then {
		_name = _vehicles select _x;
		if (!isnull _name) then {
			_pos getPos _name;
			_dir getDir _name;
			_health = [];
			_health = getAllHitPointsDamage _name;
			_backpacks = getBackpackCargo _name;
			_items = getItemCargo _name;
			_magazines = getMagazineCargo _name;
			_weapons = getWeaponCargo _name;
			_gear = [_backpacks, _items, _magazines, _weapons];			
			_value pushback [_name, _pos, _dir, _health, _gear];
		};
	};
} forEach _Vehicles;

profileNamespace setVariable ["GRAD_Retake_Tanoa_Vehicle", _value];
