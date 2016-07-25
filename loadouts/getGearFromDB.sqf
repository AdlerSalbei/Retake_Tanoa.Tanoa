_unit = _this select 0;
_gearArray = [];
_gearArray =      //get the gear out of the database

_radio = ((_gearArray select 9) select 2);
_radioFixArray = _radio splitString "m";
_radioFix = _radioFixArray select 0;
_geararray set [9,(_geararray select 9) set [2,radioFix];
_unit setUnitLoadout _gearArray;
