// load task state
_value = profileNamespace getVariable "SLB_Retake_Tanoa_Task";

if isNil "_value" exitWith {};

{
  _nameTask = ((_value select 0) select _x);
  _stateTask = ((_value select 1) select _x);
  _nameTask setTaskState _stateTask;
}forEach _value;
