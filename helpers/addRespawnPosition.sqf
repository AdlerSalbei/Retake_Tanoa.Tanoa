_pos = _this select 0;
_name = _this select 1;

if (!isNil "_pos") then {
	if (!isNil "_name") then {
		[west, _pos, _name] call BIS_fnc_addRespawnPosition;
	}else{
		[west, _pos] call BIS_fnc_addRespawnPosition;
	};
}else {
	diag_log format ["No Respawn Pso given."];
};
