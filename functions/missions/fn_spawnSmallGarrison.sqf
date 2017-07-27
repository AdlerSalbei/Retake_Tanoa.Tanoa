params ["_flagObj"];
hint "Spawning Garrision";
diag_log format ["Garrison: %1", _flagObj];
_pos = [(getPos _flagObj), [15000, 10000], [0,360], 0, [1,200]] call SHK_pos;
RT_ID_MISSION = RT_ID_MISSION + 1;
[_pos, 2, true, 2, 50, 30, "default", nil, nil, RT_ID_MISSION, ["RHS_OPF"]] call LV_fnc_fillHouse;
