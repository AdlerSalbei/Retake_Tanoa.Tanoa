_unit = _this select 0;
if (serverTime-joinTime < 30 && didJIP) exitWith {diag_log "Player is JIP, not executing onPlayerKilled.sqf"};

_unit setVariable ["ace_medical_medicClass",0,true];

_handle = execVM "player\createDeathCam.sqf";
waitUntil {scriptdone _handle};


