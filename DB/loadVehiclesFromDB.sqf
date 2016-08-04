_value = profileNamespace getVariable ["GRAD_Retake_Tanoa_Vehicle"];

_count = count _value;

for [{_i=0}, {_i<_count}, {_i=_i+1}] do {
	_name = ((_value select 0) select _i);
	_pos = ((_value select 1) select _i);
	_dir = ((_value select 2) select _i);
	_healthArray = ((_value select 3) select _i);
	_gearArray = ((_value select 4) select _i);

	_Nil = createVehicle [_name, _pos, [], 0, "CAN_COLLIDE"];
	
	_name setDir _dir;

	for [{_i=0}, {_i<10}, {_i=_i+1}] do
	{
		_nameHealth = ((_healthArray select 0) select _i);
		_valueHealth = ((_healthArray select 2) select _i);
		_name setHitPointDamage [_nameHealth, _valueHealth];
		diag_log format ["Vehicle: %1, Name: %2, Value: %3", _name, _nameHealth, _valueHealth];
	};
	
	clearWeaponCargoGlobal _name;
	clearItemCargoGlobal _name;
	clearMagazineCargoGlobal _name;
	clearBackpackCargoGlobal _name;

	{
    _data = _itemData select _name;

    if (count _data == 2) then {
        _names = _data select 0;
        _counts = _data select 1;

        if (count _names > 0 && count _counts > 0 && (count _names) == (count _counts)) then {
            for "_index" from 0 to ((count _names) - 1) do {
                _currentName = _names select _index;
                _currentCount = _counts select _index;

                switch (_name) do {
                    case 4: { _name addBackpackCargoGlobal [_currentName, _currentCount]; };
                    case 5: { _name addItemCargoGlobal [_currentName, _currentCount]; };
                    case 6: { _name addMagazineCargoGlobal [_currentName, _currentCount]; };
                    case 7: { _name addWeaponCargoGlobal [_currentName, _currentCount]; };

                };
            };
        };
    };
} forEach [4,5,6,7];
	
}; 
