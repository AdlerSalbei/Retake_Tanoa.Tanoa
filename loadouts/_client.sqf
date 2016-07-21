_unit = _this select 0;

waitUntil {!isNull _unit };

call compile preprocessFile "server\random_Loadout.sqf";
waitUntil {!isNil "WEAPONSETUPDONE"};

call compile preprocessFile "loadouts\loadouts_standart.sqf";
call compile preprocessFile "loadouts\loadout_fillfunctions.sqf";

if (local _unit) then {
	// Checking if the player exsist in the Database
	// _uidDatabase = ;
	_uid = getPlayerUID player;
	diag_log format ["UID: %1", _uid];
	// if (_uid == _uidDatabase) then {
		// _playerSate = ;
		//if (_playerSate != 0) then {
		
		// } else {
		//	[_unit] call gear_basic;
		//	diag_log format ["loadouts processed for _unit %1, becouse he died!",typeOf _unit];
		// };
	//} else {
		[_unit] call gear_basic;
		diag_log format ["loadouts processed for _unit %1, becouse he didn't exsist in the database!",typeOf _unit];
	//};
} else {diag_log format ["player %1 is not local to itself -.-", _unit];};

if ((str player) == "fraggi") then {hint format ["You are a Grumpy Old Man %1! Gruß Salbei", player];};
if ((str player) == "Nomisum") then {hint format ["All praise %1! Gruß Salbei", player];};
if ((str player) == "Xivid") then {hint format ["Hey %1, Fraggi braucht dringend mal wieder einen Strich auf seiner Liste! Gruß Salbei", player];};
if ((str player) == "Salbei") then {hint format ["Welcome %1, have a nice stay!", player];};
if ((str player) == "Fusselwurm") then {hint format ["All praise %1! Gruß Salbei!", player];};
