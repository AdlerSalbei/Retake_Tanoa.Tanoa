{
    _x params ["_veh", "_pos", "_dir", "_healthArray", "_gearArray"];
    
    _veh = createVehicle [_veh, _pos, [], 0, "CAN_COLLIDE"];
    _veh setDir _dir;

    for [{_in=0}, {_in<10}, {_in=_in+1}] do
    {
        _vehHealth = ((_healthArray select 0) select _in);
        _valueHealth = ((_healthArray select 2) select _in);
        _veh setHitPointDamage [_vehHealth, _valueHealth];
    };
    
    clearWeaponCargoGlobal _veh;
    clearItemCargoGlobal _veh;
    clearMagazineCargoGlobal _veh;
    clearBackpackCargoGlobal _veh;

    {
        _data = _gearArray select _x;
        _vehs = _data select 0;
        _counts = _data select 1;

        if (count _vehs > 0 && count _counts > 0 && (count _vehs) == (count _counts)) then {
            for "_index" from 0 to ((count _vehs) - 1) do {
                _currentName = _vehs select _index;
                _currentCount = _counts select _index;
        
                switch (_x) do {
                    case 0: { _veh addBackpackCargoGlobal [_currentName, _currentCount]; };
                    case 1: { _veh addItemCargoGlobal [_currentName, _currentCount]; };
                    case 2: { _veh addMagazineCargoGlobal [_currentName, _currentCount]; };
                    case 3: { _veh addWeaponCargoGlobal [_currentName, _currentCount]; };
                };
            };
        };
    } forEach [0,1,2,3];
} forEach (profileNamespace getVariable ["GRAD_Retake_Tanoa_Vehicle"]); 
