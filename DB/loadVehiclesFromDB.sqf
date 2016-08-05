{
    _x params ["_name", "_pos", "_dir", "_healthArray", "_gearArray"];
    
    _veh = createVehicle [_name, _pos, [], 0, "CAN_COLLIDE"];
    _veh setDir _dir;

    for [{_in=0}, {_in<10}, {_in=_in+1}] do
    {
        _nameHealth = ((_healthArray select 0) select _in);
        _valueHealth = ((_healthArray select 2) select _in);
        _veh setHitPointDamage [_nameHealth, _valueHealth];
    };
    
    clearWeaponCargoGlobal _veh;
    clearItemCargoGlobal _veh;
    clearMagazineCargoGlobal _veh;
    clearBackpackCargoGlobal _veh;

    {
        _data = _gearArray select _x;
        _names = _data select 0;
        _counts = _data select 1;

        if (count _names > 0 && count _counts > 0 && (count _names) == (count _counts)) then {
            for "_index" from 0 to ((count _names) - 1) do {
                _currentName = _names select _index;
                _currentCount = _counts select _index;
        
                switch (_x) do {
                    case 0: { _veh addBackpackCargoGlobal [_currentName, _currentCount]; };
                    case 1: { _veh addItemCargoGlobal [_currentName, _currentCount]; };
                    case 2: { _veh addMagazineCargoGlobal [_currentName, _currentCount]; };
                    case 3: { _veh addWeaponCargoGlobal [_currentName, _currentCount]; };
                    };
                };
            };
        };
    } forEach [0,1,2,3];
} forEach (profileNamespace getVariable ["GRAD_Retake_Tanoa_Vehicle"]); 
