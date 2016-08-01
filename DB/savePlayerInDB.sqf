// Sets gear in Database
_uID = getPlayerUID player;
_gear = getUnitLoadout player;
_pos = getPos player;
_health = [];
_health = getAllHitPointsDamage player;

diag_log format ["UID: %1, Gear: %2, Health: %3", _uID, _gear, _health];
