private ["_value","_radio","_radioFixArray","_radioFix","_pos","_dir","_health","_gear", "_value1"];
  diag_log format ["Saveing !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"];
if (!Alive player) exitWith {};

// Sets gear in Database
_gear = getUnitLoadout player;
_pos = getPos player;
_dir = getDir player;
_health = getAllHitPointsDamage player;

_radio = ((_gear select 9) select 2);
diag_log format ["Radio: %1", _radio];
if (!isNil "_radio") then {
  _radioFixArray = _radio splitString "_";
  _radioFix = _radioFixArray select 0;
  diag_log format ["RadioArray: %1", _radioFixArray];
  if (!isNil "_radioFix") then {
    diag_log format ["RadioFix: %1", _radioFix];
    (_gear select 9) set [2, _radioFix];
  };
};



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
