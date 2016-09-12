private ["_value","_radio","_radioFixArray","_radioFix","_pos","_dir","_health","_gear", "_value1"];
if (!Alive player) exitWith {};

// Sets gear in Database
_gear = getUnitLoadout player;
_pos = getPos player;
_dir = getDir player;
_health = getAllHitPointsDamage player;

if ("ItemRadio" in magazines player) then {
 (_gear select 9) set [2, [((_gear select 9) select 2)] call slb_fnc_tfar_remove_id];
};

_backpack = ((_gear select 5) select 0);
_radioFixArray = _backpack splitString "_";
if ((_radioFixArray select 0) == "tf") then{
 (_gear select 5) set [0, _backpack] call salbei_fnc_tfar_remove_id];
};

_value =  [_gear, _health, _pos, _dir];
profileNamespace setVariable ["SLB_Retake_Tanoa_Player", _value];
saveProfileNamespace;

sleep 5;

_value1 = profileNamespace getVariable "SLB_Retake_Tanoa_Player";

if  (isNil "_value1") exitWith {diag_log format ["Save Failed"];};

if (_value1 isEqualTo _value) then {
  hint format ["Saved %1 in DB sucessfull!", str name vehicle player];
  sleep 2;
    hint format [""];
}else{
  hint format ["Saved %1 in DB Failed!", str name vehicle player];
};
