slb_Mission_spawn = {
	diag_log format["Made it to Unit & vehicle spawn"];

	if (isNil "_this") exitWith {};
	_this params [["_unitArray", Nil], ["_vehicleArray", Nil], ["_triggerArray", Nil]];
	
	if (!isNil "_unitArray") then {
		{
			_x params ["_groupUnit", "_unit", "_waypoints"];
			
			_groupArray = allGroups;
			_groupIndex = _groupArray pushBackUnique _groupUnit;
			if (_groupIndex != -1) then {
				_groupUnit = createGroup west;
			};
			
			{
				_x params ["_typeUnit", "_posUnit", "_initUnit", "_skillUnit", "_rankUnit"];
				diag_log format ["Type: %1, Pos: %2, Group: %3, Init: %4, Skill: %5, Rank: %6", _typeUnit, _posUnit, _groupUnit, _initUnit, _skillUnit, _rankUnit];
					
				_typeUnit createUnit [_posUnit, _groupUnit, _initUnit, _skillUnit, _rankUnit];
			}forEach _unit;
			
			{
				_x params ["_waypointPos", "_waypointTyp", "_waypointBehavior", "_waypointCombatmode", "_waypointCompletionRadius", "_waypointFormation", "_waypointSpeed"];
				_waypointIndex = _groupUnit addWaypoint [_waypointPos, 0];
				[_groupUnit, _waypointIndex] setWaypointType _waypointTyp;
				[_groupUnit, _waypointIndex] setWaypointBehaviour _waypointBehavior;
				[_groupUnit, _waypointIndex] setWaypointCombatMode _waypointCombatmode;
				[_groupUnit, _waypointIndex] setWaypointCompletionRadius _waypointCompletionRadius;
				[_groupUnit, _waypointIndex] setWaypointFormation _waypointFormation;
				[_groupUnit, _waypointIndex] setWaypointSpeed _waypointSpeed;	
			}forEach _waypoints;
			
			slb_SpawnedUnitsArray pushBackUnique _groupUnit;
			
		}forEach _unitArray;
	};
	
	if (!isNil "_vehicleArray") then {
		_index = slb_allSpawnedVehicles pushBackUnique _vehicleArray;
		if (_index != -1) then {
			{
				_x params ["_vehType", "_vehPos", "_vehDir"];
				_vehIndex = createVehicle [_vehType, _vehPos, [], 0, "CAN_COLLIDE"];
				_vehIndex setDir _vehDir;
				diag_log format ["SPAWNED VehType: %1, Pos: %2, Dir: %3", _vehType, _vehPos, _vehDir];
			}forEach _vehicleArray;
		};
	};
	
	if (!isNil "_triggerArray") then {
		{
			_x params ["_triggerPos", "_triggerType", "_triggerWho", "_triggerHow", "_triggerCycle", "_triggerCondition", "_triggerActivation", "_triggerDeactivation", "_triggerAx", "_triggerBx", "_triggerCx", "_triggerRotaion", "_triggerIsRectangle", ["_timeoutMin", Nil], ["_timoutMid", Nil], ["_timeoutMax", Nil], "_timeoutInterruptable"];
			_trigger = createTrigger [_triggerType, _triggerPos, false];
			sleep 1;
			_trigger setTriggerActivation [_triggerWho, _triggerHow, _triggerCycle];
			_trigger setTriggerStatements [_triggerCondition, _triggerActivation, _triggerDeactivation];
			_trigger setTriggerArea [_triggerAx, _triggerBx, _triggerRotaion, _triggerIsRectangle, _triggerCx];
			if (!isNil "_timeoutMin" && !isNil "_timoutMid" && !isNil "_timeoutMax") then {
				_trigger setTriggerTimeout [_timeoutMin, _timoutMid, _timeoutMax, _timeoutInterruptable];
			};
			diag_log format ["Spawned Trigger: %1 as %2 at %3", _trigger, _triggerType, _triggerPos];
		}forEach _triggerArray;
	};
	
	if (!isNil "_unitGroupArray") then {slb_SpawnedUnitsArray pushBack _unitGroupArray;};
};
