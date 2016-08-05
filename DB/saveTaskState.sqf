_this params ["_name", "_state"];

_value = profileNamespace getVariable ["GRAD_Retake_Tanoa_Task"];
_value pushBack [_name ,_state];

profileNamespace setVariable ["GRAD_Retake_Tanoa_Task", _value];
saveProfileNamespace;
