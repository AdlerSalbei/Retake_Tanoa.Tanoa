slb_Mission_spawn = {
	if (isNil "_this") exitWith {};
	_this params ["_unitArray", "_vehicleArray"];
	
	if (!isNil "_unitArray") then {
		{
			_x params ["_typeUnit", "_posUnit", "_groupUnit", "_initUnit", "_skillUnit", "_rankUnit"];
			
			_groupArray = allGroups;
			_groupIndex = _groupArray pushBackUnique _groupUnit;
			if (_groupIndex != -1) then {
				createGroup _groupUnit;
			};
				
			_typeUnit createUnit [_posUnit, _groupUnit, _initUnit, _skillUnit, _rankUnit];
			_unitGroupArray pushBackUnique _groupUnit;
		}forEach _unitArray;
	};
	
	if (!isNil "_vehicleArray") then {
		{
			_x params ["_vehType", "_vehPos"];
			_vehIndex = createVehicle [_vehType, _vehPos, [], 0, "CAN_COLLIDE"];
		}forEach _vehicleArray;
	};
	
	if (!isNil "_unitGroupArray") then {slb_SpawnedUnitsArray pushBack _unitGroupArray;};
};
