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
