private ["_radioFixArray"];
params ["_radio"];

_radioFixArray = _radio splitString "_";

if (count _radioFixArray > 0) exitWith {
 _radioFixArray deleteAt ((count _radioFixArray)-1);
 _radioFixArray joinString "_";

};

_radio;
