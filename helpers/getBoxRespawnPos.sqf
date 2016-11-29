private ["_box", "_boxValue", "_oldPos", "_pos", "_id"];
_box = "respawnbox";

_loop = {
    _box = _this select 0;
    _oldPos = _box getVariable ["grad_oldpos",[]];
    _id = _box getVariable ["grad_id", -1];
    _pos = getPos _box;
	
	diag_log format ["%1 old pos: %2, new pos: %3, id: %4", _box, _oldPos, _pos, _id];

    if !(_pos isEqualTo _oldPos) then {
	    if (_id != -1) then {
	        [west, _id] call BIS_fnc_removeRespawnPosition;
	    };
	
	    _id = [west, _pos, "Rebell FOB"] call BIS_fnc_addRespawnPosition;
    };
    _box setVariable ["grad_oldpos",_pos,false];
    _box setVariable ["grad_id",_id,false];
};

[_loop, 60, [_box]] call CBA_fnc_addPerFrameHandler;
