private ["_value","_radio","_radioFixArray","_pos","_dir","_health","_gear", "_value1", "_backpack"];
if (!Alive player) exitWith {};

hint "Saving ...";

// Sets gear in Database
_gear = getUnitLoadout player;
_pos = getPos player;
_dir = getDir player;
_health = getAllHitPointsDamage player;

if ("ItemRadio" in magazines player) then {
	(_gear select 9) set [2, [((_gear select 9) select 2)] call slb_fnc_tfar_remove_id];
};

_backpack = ((_gear select 5) select 0);
if (!isNil "_backpack") then {
	(_gear select 5) set [0, [_backpack] call slb_fnc_tfar_remove_id];
};

diag_log format ["Saving Player: %1, Pos: %2, Dir: %3", str name vehicle player, _pos, _dir];
diag_log format ["Gear: %1", _gear];
diag_log format ["Health: %1", _health];

_value =  [_gear, _health, _pos, _dir];
profileNamespace setVariable ["SLB_Retake_Tanoa_Player", _value];
saveProfileNamespace;

sleep 5;

_value1 = profileNamespace getVariable "SLB_Retake_Tanoa_Player";

if  (isNil "_value1") exitWith {diag_log format ["Error: Save of Player Failed!"];};

if (_value1 isEqualTo _value) then {
	hint format ["Saved %1 in DB sucessfull!", str name vehicle player];
	diag_log format ["Saved %1 in DB sucessfull!", str name vehicle player];
	sleep 2;
	hint format [""];
}else{
	hint format ["Error: Save %1 in DB Failed!", str name vehicle player];
	diag_log format ["Error: Save %1 in DB Failed!", str name vehicle player];
	diag_log format ["Value1: %1", _value1];
};


