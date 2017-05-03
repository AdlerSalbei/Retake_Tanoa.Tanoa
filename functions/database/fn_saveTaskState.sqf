_this params ["_name"];

_state = taskState _name;

_saveTask = {
	_this params ["_name", "_state"];
	_value = profileNamespace getVariable ["SLB_Retake_Tanoa_Task"];

	{
		_valueName = _x select 0;
		if ( _name == _valueName) then {
			_value set [_forEachIndex,[_name ,_state]];
		};
	} forEach _value;

	_value pushBackUnique [_name ,_state];

	profileNamespace setVariable ["SLB_Retake_Tanoa_Task", _value];
	saveProfileNamespace;
};

switch (_state) do {
	case "Assigned": {};
	case "Canceled": {[_name, _state] call _saveTask;};
	case "Created": {};
	case "Failed": {[_name, _state] call _saveTask;};
	case "Succeeded": {[_name, _state] call _saveTask;};
	default: {diag_log format ["Unkown Task state: %1 for %2", _state, _name];};
};
