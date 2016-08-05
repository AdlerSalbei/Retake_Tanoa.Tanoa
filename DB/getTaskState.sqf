// load task state

_value = profileNamespace getVariable ["GRAD_Retake_Tanoa_Task"];
_count = ((count _value)-1);

for [{_i=0}, {_i<_count}, {_i=_i+1}] do {
_nameTask = ((_value select 0) select _i);
_stateTask = ((_value select 1) select _i);
_nameTask setTaskState _stateTask;
};
