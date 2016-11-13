private ["_box", "_boxValue", "_oldPos", "_pos", "_id"];
_boxValue = 0;

_loop = {
    _loop params ["_boxValue"];
	_box = _boxValue getVariable ["grad_name","RespawnBox"];
    _oldPos = _boxValue getVariable ["grad_oldpos",[]];
    _id = _boxValue getVariable ["grad_id", -1];
    _pos = getPos _box;
	
	diag_log format ["%1 old pos: %2 new pos: %3", _box, _oldPos, _pos];

    if !(_pos isEqualTo _oldPos) then {
	    if (_id != -1) then {
	        [west, _id] call BIS_fnc_removeRespawnPosition;
	    };
	
	    _id = [west, _pos, "Rebell FOB"] call BIS_fnc_addRespawnPosition;
    };
	_boxValue setVariable ["grad_name",_box,false];
    _boxValue setVariable ["grad_oldpos",_pos,false];
    _boxValue setVariable ["grad_id",_id,false];
};

[_loop, 60, [_boxValue]] call CBA_fnc_addPerFrameHandler;
