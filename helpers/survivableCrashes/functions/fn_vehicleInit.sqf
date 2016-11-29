params ["_veh"];
if (!(missionNamespace getVariable ["survivableCrashesVar_ModEnabled", true])) exitWith {};
_vehKindWhitelist = missionNamespace getVariable ["survivableCrashesVar_VehicleKindWhitelist", true];
if (_veh getVariable ["survivableCrashes", false]) exitWith {};

private ["_isAllowed"];
_isAllowed = false;
{
    _vehType = _x;
    if (_veh isKindOf _vehType) then {
        _isAllowed = true;
    };
} forEach _vehKindWhitelist;
if (!(_isAllowed)) exitWith {};

_veh setVariable ["survivableCrashes", true];
_veh setVariable ["survivableCrashes_NotShotDown", true];

_veh addEventHandler ["HandleDamage", {
	private ["_veh", "_part", "_dmg", "_index", "_health","_returnVal", "_isCrash"];
	_veh 	= _this select 0;
	_part 	= _this select 1;
	_dmg 	= _this select 2;
	_index 	= _this select 5;
	_isCrash = false;
	_returnVal = _dmg;
	_health = 0;
	
	
	if(_index == -1) then { 
		_health = damage _veh;
	} else { 
		_health = _veh getHit _part; 
	};
	if(_health == 1) exitWith {};
	if (_health + _dmg > 0.88) then { // this is wrong and needs to be fixed
		if (_index == -1 or _part == "hull_hit") then {
			_returnVal = 0;
			_isCrash = true;
		};
		if(_isCrash) then {
			if (_veh getVariable "survivableCrashes_NotShotDown") then {
				_veh setVariable ["survivableCrashes_NotShotDown", false];
				[_veh, _this] call survivableCrashes_OnVehicleCrash;
			};
		};
	};
	_returnVal
}];
