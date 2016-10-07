_this params ["_name", "_state"];

_value = profileNamespace getVariable ["SLB_Retake_Tanoa_Task"];
_index = _value pushBackUnique [_name ,_state];

if (_index == -1) then {
	_indexFind = _value find [_name ,_state];
	_value set [_indexFind,[_name ,_state]];
}

profileNamespace setVariable ["SLB_Retake_Tanoa_Task", _value];
saveProfileNamespace;
