_unit = _this select 0;
_gearArray = [];
//_gearArray =      ;//get the gear out of the database

_radio = ((_gear select 9) select 2);
_radioFixArray = _radio splitString "m";
_radioFix = _radioFixArray select 0;
((_gearArray select 9) select 2) set _radioFix;
diag_log format ["Unit: %1, Radio: %2, radioFixArray: %3, RadioFix: %4", _unit, _radio, _radioFixArray, _radioFix];
_unit setUnitLoadout _gearArray;
