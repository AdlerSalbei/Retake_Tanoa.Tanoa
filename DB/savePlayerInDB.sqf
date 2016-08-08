// Sets gear in Database
_gear = [];
_gear = getUnitLoadout player;
_pos = getPos player;
_dir = getDir player;
_health = [];
_health = getAllHitPointsDamage player;

diag_log format ["Gear: %1, Health: %2", _gear, _health];

_radio = ((_gear select 9) select 2);
_radioFixArray = _radio splitString "m";
_radioFix = _radioFixArray select 0;
(_gear select 9) set [2,_radioFix];
diag_log format ["Unit: %1, Radio: %2, radioFixArray: %3, RadioFix: %4", _unit, _radio, _radioFixArray, _radioFix];

_value =  [_gear, _health, _pos, _dir];
profileNamespace setVariable ["GRAD_Retake_Tanoa_Player", _value];
saveProfileNamespace;
