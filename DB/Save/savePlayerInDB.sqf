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
	_radioFixArray = _backpack splitString "_";
	if ((_radioFixArray select 0) == "tf") then{
		(_gear select 5) set [0, [_backpack] call salbei_fnc_tfar_remove_id];
	};
};

_value =  [_gear, _health, _pos, _dir];
profileNamespace setVariable ["SLB_Retake_Tanoa_Player", _value];
saveProfileNamespace;

hint format ["Saved %1 in DB sucessfull!", str name vehicle player];
