diag_log format ["Setting up Leader."];
player addEventHandler ["TaskSetAsCurrent",{[[[_this], "helpers\EH_TaskSetAsCurrent.sqf"],"BIS_fnc_execVM",false,true ] call BIS_fnc_MP;}];
