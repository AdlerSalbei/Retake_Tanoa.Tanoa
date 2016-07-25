// Checking if the player exsist in the Database
	// _uidDatabase = ;
	// _playerSate = ;
	_uid = getPlayerUID player;
	diag_log format ["UID: %1", _uid];
	// if (_uid == _uidDatabase) && (_playerSate != 0) then {
//		removeAllWeapons this;
//		removeGoggles this;
//		removeHeadgear this;
//		removeVest this;
//		removeUniform this;
//		removeAllAssignedItems this;
//		removeBackpack this;
		// [_unit] execVM "loadouts\getGearFromDB.sqf";
	//} else {
		player setDammage 1;
	// }
