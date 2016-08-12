grad_salbeiMission_spawn = {
	_this params ["_unitArray", "_vehicleArray"];
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
		
	{
		_x params ["_vehType", "_vehPos"];
		_vehIndex = createVehicle [_vehType, _vehPos, [], 0, "CAN_COLLIDE"];
		_vehicleIndexArray pushBack _vehIndex;
	}forEach _vehicleArray;
	slb_SpawnedUnitsArray pushBack [_unitGroupArray, _vehicleIndexArray];
};
