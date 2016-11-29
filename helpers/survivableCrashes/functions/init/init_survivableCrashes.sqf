params ["_isEnabled",
    "_areVfxEnabled",
    "_areSfxEnabled",
    "_areExagFxEnabled",
    "_medicalSystemUsed",
    "_crewDamageMultiplier",
    "_vehicleKindWhitelist",
    "_onCrashCode",
    "_crewPostCrashCode",
    "_vehicleRestCode"
];

missionNamespace setVariable ["survivableCrashesVar_ModEnabled", _isEnabled];
if(not _isEnabled) exitWith {};

missionNamespace setVariable ["survivableCrashesVar_VisualEffectsEnabled", _areVfxEnabled];
missionNamespace setVariable ["survivableCrashesVar_SoundEffectsEnabled", _areSfxEnabled];
missionNamespace setVariable ["survivableCrashesVar_ExaggeratedEffectsEnabled", _areExagFxEnabled];
if (_medicalSystemUsed == "AUTO") then {
	if (isClass(configFile >> "CfgPatches" >> "ace_medical")) then {
		_medicalSystemUsed = "ACE";
	} else {
		_medicalSystemUsed = "VANILLA";
	};
};
missionNamespace setVariable ["survivableCrashesVar_MedicalSystem", _medicalSystemUsed];
if(typeName _crewDamageMultiplier != "SCALAR") then {
    _crewDamageMultiplier = parseNumber _crewDamageMultiplier;
};
missionNamespace setVariable ["survivableCrashesVar_CrewDamageMultiplier", _crewDamageMultiplier];
missionNamespace setVariable ["survivableCrashesVar_VehicleKindWhitelist", _vehicleKindWhitelist];
missionNamespace setVariable ["survivableCrashesVar_OnCrashCode", _onCrashCode];
missionNamespace setVariable ["survivableCrashesVar_CrewPostCrashCode", _crewPostCrashCode];
missionNamespace setVariable ["survivableCrashesVar_VehicleRestCode", _vehicleRestCode];

if(hasInterface) then {
	[player] execVM "helpers\survivableCrashes\functions\fn_handleUnitDamage.sqf";
};
{
    _unit = _x;
    _veh = vehicle _x;
	if(_veh != _unit && not (_veh isKindOf "Man")) then {
		if(isServer or (hasInterface && _veh == vehicle player)) then {
			[_veh] call survivableCrashes_VehicleInit;
		};
	};
} forEach allUnits;
