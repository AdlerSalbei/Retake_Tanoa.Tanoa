_name = _this select 0;
_name = _this select 1;
_value pushBack [_name ,_state];

profileNamespace setVariable ["GRAD_Retake_Tanoa_Task", _value];
saveProfileNamespace;