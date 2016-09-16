private ["_box", "_oldPos", "_pos", "_id"];
_box = "RespawnBox";
_oldPos = [];

_loop = {
	_loop params ["_box", "_oldPos"];
	_pos = getPos _box;
	if (_pos != _oldPos) then {
		if (!isNil "_id") then {
			[west, _id] call BIS_fnc_removeRespawnPosition;
		};
		_id = [west, _pos, "Rebell FOB"] call BIS_fnc_addRespawnPosition;
	};
	_oldPos = _pos;
};

[_loop, 60, [_box, _oldPos]] call CBA_fnc_addPerFrameHandler;
