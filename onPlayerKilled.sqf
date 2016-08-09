_unit = _this select 0;
if (serverTime-joinTime < 30 && didJIP) exitWith {diag_log "Player is JIP, not executing onPlayerKilled.sqf"};

_handle = execVM "helpers\createDeathCam.sqf";
waitUntil {scriptdone _handle};

_unit setVariable ["Ace_medical_medicClass", 0];

_value = "any";
profileNamespace setVariable ["GRAD_Retake_Tanoa_Player", _value];
