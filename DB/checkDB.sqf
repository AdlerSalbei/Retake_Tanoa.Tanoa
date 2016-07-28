// Checking if the player exsist in the Database
	// _uidDatabase = ;
	// _playerSate = ;
	_uid = getPlayerUID player;
	diag_log format ["UID: %1", _uid];
	// if (_uid == _uidDatabase) && (_playerSate != 0) then {
		// [_unit] execVM "loadouts\getPlayerFromDB.sqf.sqf";
	//} else {
		forceRespawn player;
	// }
