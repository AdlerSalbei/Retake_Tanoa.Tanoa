diag_log format["Made it to Unit & vehicle spawn"];
if (isNil "_this") exitWith {};
_this params ["_unitArray", "_vehicleArray", "_markerArray" "_triggerArray"];

if (!isNil "_vehicleArray") then {
	_index = slb_allSpawnedVehicles pushBackUnique _vehicleArray;
	if (_index != -1) then {
		{
			_x params ["_vehType", "_vehPos", "_vehPosASL", "_vehDir", "_vehUP"];
			_vehIndex = createVehicle [_vehType, _vehPos, [], 0, "CAN_COLLIDE"];
			_vehIndex setPosASL _vehPosASL;
			_vehIndex setVectorDirAndUp [_vehDir, _vehUP]
			diag_log format ["SPAWNED VehType: %1, Pos: %2, Dir: %3, UP: %4", _vehType, _vehPosASL, _vehDir, _vehUP];
		}forEach _vehicleArray;
	};
};
	
if (!isNil "_unitArray") then {
		{
			_x params ["_groupSide", "_unit", "_groupBehaviorSetup", "_waypoints"];
			_groupUnit = createGroup _groupSide;
			
			{
				_x params ["_typeUnit", "_posUnit", "_initUnit", "_skillUnit", "_rankUnit"];
					diag_log format ["Type: %1, Pos: %2, Group: %3, Init: %4, Skill: %5, Rank: %6", _typeUnit, _posUnit, _groupUnit, _initUnit, _skillUnit, _rankUnit];
					
				_typeUnit createUnit [_posUnit, _groupUnit, _initUnit, _skillUnit, _rankUnit];
			}forEach _unit;
			
			_groupBehaviorSetup params ["_groupFormation", "_groupCombatMode", "_groupBehavior", "_groupSpeed"];
			_groupUnit setFormation _groupFormation;
			_groupUnit setCombatMode _groupCombatMode;
			_groupUnit setBehaviour _groupBehavior;
			_groupUnit setSpeedMode _groupSpeed;
						
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
		
if (!isNil "_markerArray") then {
	{
		_x params ["_marker", "_markerPos", "_markerShape", "_markerTyp", "_markerDir", "_markerColor", "_markerAlpha", "_markerSize", "_markerBrush"];
		_newMarker = createMarker [_marker, _markerPos]; 
		_newMarker setMarkerShape _markerShape; 
		_newMarker setMarkerType _markerTyp; 
		_newMarker setMarkerDir _markerDir; 
		_newMarker setMarkerColor _markerColor; 
		_newMarker setMarkerAlpha _markerAlpha; 
		_newMarker setMarkerSize _markerSize;
		_newMarker setMarkerBrush _markerBrush;
	}forEach _markerArray;
};

_triggerActivArray = [];
if (!isNil "_triggerArray") then {
	{
		_x params ["_triggerType", "_triggerPos", "_triggerActivation", "_triggerArea", "_triggerStatement", "_triggerTimeout"];
		_trigger = createTrigger [_triggerType, _triggerPos, true];
		_trigger setTriggerActivation _triggerActivation;
		_trigger setTriggerStatements _triggerStatement;
		_trigger setTriggerTimeout _triggerTimeout];
		_triggerActivArray pushBack _trigger;
	}forEach _triggerArray;
};
	
if !(_unitGroupArray == []) then {slb_SpawnedTriggerArray pushBack _triggerActivArray;};
