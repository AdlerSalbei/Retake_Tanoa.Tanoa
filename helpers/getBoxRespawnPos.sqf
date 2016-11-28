private ["_box", "_boxValue", "_oldPos", "_pos", "_id"];
_box = "respawnbox";

_loop = {
    params ["_box"];
    _oldPos = _box getVariable ["grad_oldpos",[]];
    _id = _box getVariable ["grad_id", -1];
    _pos = getPos _box;
	
	diag_log format ["%1 old pos: %2 new pos: %3", _box, _oldPos, _pos];

    if !(_pos isEqualTo _oldPos) then {
	    if (_id != -1) then {
	        [west, _id] call BIS_fnc_removeRespawnPosition;
	    };
	
	    _id = [west, _pos, "Rebell FOB"] call BIS_fnc_addRespawnPosition;
    };
    _box setVariable ["grad_oldpos",_pos,false];
    _box setVariable ["grad_id",_id,false];
};

[_loop, 60, [_boxValue]] call CBA_fnc_addPerFrameHandler;
