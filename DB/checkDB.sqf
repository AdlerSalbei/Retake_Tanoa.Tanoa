// Checking if the player exsist in the Database
	// _uidDatabase = ;
	_uid = getPlayerUID player;
	diag_log format ["UID: %1", _uid];
	// if (_uid == _uidDatabase) then {
		// [_unit] execVM "loadouts\getPlayerFromDB.sqf.sqf";
	//} else {
		forceRespawn player;
	// }
