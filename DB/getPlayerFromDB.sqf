_unit = _this select 0;
_gearArray = [];
_healthArray = [];

_value = profileNamespace getVariable ["GRAD_Retake_Tanoa"];

if (_vlaue != "any") then {
_value params ["_gearArray", "_healthArray", "_pos", "_dir"];

_unit setDir _dir;
_unit setPos _pos;

if ((_healthArray == [[],[],[]]) or (_healthArray == [])) then {
  forceRespawn player;
} else {
  for [{_i=0}, {_i<10}, {_i=_i+1}] do
  {
  _nameHealth = ((_healthArray select 0) select _i);
  _valueHealth = ((_healthArray select 2) select _i);
  _unit setHitPointDamage [_nameHealth, _valueHealth];
  diag_log format ["Unit: %1, Name: %2, Value: %3", _unit, _vehHealth, _valueHealth];
  };
};

removeAllWeapons _unit;
removeGoggles _unit;
removeHeadgear _unit;
removeVest _unit;
removeUniform _unit;
removeAllAssignedItems _unit;
removeBackpack _unit;

_unit setUnitLoadout _gearArray;

} else {
	forceRespawn player;
};
