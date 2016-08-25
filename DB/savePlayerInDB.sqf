// Sets gear in Database
_gear = [];
_gear = getUnitLoadout player;
_pos = getPos player;
_dir = getDir player;
_health = [];
_health = getAllHitPointsDamage player;


_radio = ((_gear select 9) select 2);
_radioFixArray = _radio splitString "m";
_radioFix = _radioFixArray select 0;
(_gear select 9) set [2,_radioFix];

_value =  [_gear, _health, _pos, _dir];
profileNamespace setVariable ["SLB_Retake_Tanoa_Player", _value];
saveProfileNamespace;

hint format ["Saved %1 in DB", str player];
