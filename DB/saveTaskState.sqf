_this params ["_name", "_state"];

_value = profileNamespace getVariable ["SLB_Retake_Tanoa_Task"];
_value pushBack [_name ,_state];

profileNamespace setVariable ["SLB_Retake_Tanoa_Task", _value];
saveProfileNamespace;
