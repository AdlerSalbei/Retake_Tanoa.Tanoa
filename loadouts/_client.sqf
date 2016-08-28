_unit = _this select 0;

waitUntil {!isNull _unit };

call compile preprocessFile "server\random_Loadout.sqf";
waitUntil {!isNil "WEAPONSETUPDONE"};

call compile preprocessFile "loadouts\loadouts_standart.sqf";
call compile preprocessFile "loadouts\rolle.sqf";
call compile preprocessFile "loadouts\loadout_fillfunctions.sqf";

if (local _unit) then {

	removeAllWeapons _unit;
	removeGoggles _unit;
	removeHeadgear _unit;
	removeVest _unit;
	removeUniform _unit;
	removeAllAssignedItems _unit;
	removeBackpack _unit;

	[_unit] call gear_basic;
	diag_log format ["New loadout created for %1", _unit];
} else {diag_log format ["player %1 is not local to itself -.-", _unit];};
