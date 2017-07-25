params ["_flagObj"];
_pos = [(getPos _flagObj), [15000, 10000], [0,360], 0, [1,200]] call SHK_pos;
RT_ID_MISSION = RT_ID_MISSION + 1;
[_pos, 2, 150, [true,false], [true,false,false], true, 0.5, 0.05, "default", nil, nil, RT_ID_MISSION, true, true, ["OPF_F"]] call LV_fnc_militarize;