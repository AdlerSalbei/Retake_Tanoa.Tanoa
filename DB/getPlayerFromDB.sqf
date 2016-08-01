_unit = _this select 0;

_healthArray = [];
_healthArray = ;	//get health out of DB

if (_healthArray == [[],[],[]]) or (_healthArray == []) then {
  forceRespawn player;
} else {
  for [{_i=0}, {_i<10}, {_i=_i+1}] do
  {
  _nameHealth = ((_healthArray select 0) select _i);
  _valueHealth = ((_healthArray select 2) select _i);
  _unit setHitPointDamage [_nameHealth, _valueHealth];
  diag_log format ["Unit: %1, Name: %2, Value: %3", _unit, _nameHealth, _valueHealth];
  };
};

_pos = ;
_unit setPos _pos;

removeAllWeapons _unit;
removeGoggles _unit;
removeHeadgear _unit;
removeVest _unit;
removeUniform _unit;
removeAllAssignedItems _unit;
removeBackpack _unit;

_gearArray = [];
_gearArray =      ;	//get the gear out of DB

_radio = ((_gear select 9) select 2);
_radioFixArray = _radio splitString "m";
_radioFix = _radioFixArray select 0;
(_gearArray select 9) set [2,_radioFix];
diag_log format ["Unit: %1, Radio: %2, radioFixArray: %3, RadioFix: %4", _unit, _radio, _radioFixArray, _radioFix];
_unit setUnitLoadout _gearArray;

