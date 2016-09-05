slb_Mission_spawn = {
	if (isNil "_this") exitWith {};
	_this params ["_unitArray", "_vehicleArray"];
	
	if (!isNil "_unitArray") then {
		{
			_x params ["_typeUnit", "_posUnit", "_groupUnit", "_initUnit", "_skillUnit", "_rankUnit"];
			diag_log format ["Type: %1, Pos: %2, Group: %3, Init: %4, Skill: %5, Rank: %6", _typeUnit, _posUnit, _groupUnit, _initUnit, _skillUnit, _rankUnit];
			
			_groupArray = allGroups;
			_groupIndex = _groupArray pushBackUnique _groupUnit;
			if (_groupIndex != -1) then {
				createGroup _groupUnit;
			};
			diag_log format ["GoupUnit: 51, GroupIndex: %2, AllGroups: %3", _groupUnit, _groupIndex, _groupArray];
				
			_typeUnit createUnit [_posUnit, _groupUnit, _initUnit, _skillUnit, _rankUnit];
			_unitGroupArray pushBackUnique _groupUnit;
		}forEach _unitArray;
	};
	
	if (!isNil "_vehicleArray") then {
		{
			_x params ["_vehType", "_vehPos", "_vehDir"];
			_vehIndex = createVehicle [_vehType, _vehPos, [], 0, "CAN_COLLIDE"];
			_vehIndex setDir _vehDir;
			diag_log format ["VehType: %1, Pos: %2, Dir: %3", _vehType, _vehPos, vehDir];
		}forEach _vehicleArray;
	};
	
	if (!isNil "_unitGroupArray") then {slb_SpawnedUnitsArray pushBack _unitGroupArray;};
};
