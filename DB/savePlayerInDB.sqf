private ["_value","_radio","_radioFixArray","_radioFix","_pos","_dir","_health","_gear", "_value1"];
  diag_log format ["Saveing !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"];
if (!Alive player) exitWith {};

// Sets gear in Database
_gear = getUnitLoadout player;
_pos = getPos player;
_dir = getDir player;
_health = getAllHitPointsDamage player;

if ("ItemRadio" in magazines player) then {
  _radio = ((_gear select 9) select 2);
  _radioFixArray = _radio splitString "_";
  _radioFix = (str _radioFixArray select 0) + "_" + (str _radioFixArray select 1);
  diag_log format ["Radio: %1, RadioFix: %2, RadioArray: %3", _radio, _radioFix, _radioFixArray];
  (_gear select 9) set [2, _radioFix];
};

_backpack = ((_gear select 5) select 0);

_value =  [_gear, _health, _pos, _dir];
diag_log format ["Value: %1", _value];
profileNamespace setVariable ["SLB_Retake_Tanoa_Player", _value];
saveProfileNamespace;

sleep 5;

_value1 = profileNamespace getVariable "SLB_Retake_Tanoa_Player";

if  (isNil "_value1") exitWith {diag_log format ["Save Failed"];};

if (_value1 isEqualTo _value) then {
  hint format ["Saved %1 in DB sucessfull!", str name vehicle player];
}else{
  hint format ["Saved %1 in DB Failed!", str name vehicle player];
};
