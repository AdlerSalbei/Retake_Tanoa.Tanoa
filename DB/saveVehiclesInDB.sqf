_vehicles = vehicles;

{
	if  then {
		_veh = _vehicles select _x;
		if ((isnull _veh) && (alive _veh)) then {
			_pos getPos _veh;
			_dir getDir _veh;
			_health = [];
			_health = getAllHitPointsDamage _veh;
			_backpacks = getBackpackCargo _veh;
			_items = getItemCargo _veh;
			_magazines = getMagazineCargo _veh;
			_weapons = getWeaponCargo _veh;
			_gear = [_backpacks, _items, _magazines, _weapons];			
			_value pushback [_veh, _pos, _dir, _health, _gear];
		};
	};
} forEach _Vehicles;

profileNamespace setVariable ["GRAD_Retake_Tanoa_Vehicle", _value];