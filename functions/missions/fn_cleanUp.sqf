if (RT_ID_MISSION <= 0) exitWith {};
for _i from 1 to RT_ID_MISSION do {
	_id = format ["LVgroup%1", _i];
	[_id] call LV_fnc_removeGroup;
};