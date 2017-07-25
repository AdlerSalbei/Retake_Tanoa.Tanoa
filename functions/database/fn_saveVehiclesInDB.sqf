private ["_value","_vehicles","_vehType","_pos","_dir","_health","_gear","_fuel"];

_value = [];
_vehicles = vehicles;

if (isNil "_vehicles") exitWith {};
{
	if(!isNull _x && alive _x ) then {

		_vehType = typeOf _x;
		if (str _vehType != "WeaponHolderSimulated") then {
			
			//base
			_pos = getPos _x;
			_dir = getDir _x;
			_health = getAllHitPointsDamage _x;
	
			//cargo
			_gear = [(getBackpackCargo _x), (getItemCargo _x), (getMagazineCargo _x), (getWeaponCargo _x)];
			_fuel = getFuelCargo _x;
			
			//Vehicle spezifics
			_varName = vehicleVarName _x;
			_killTimer = _x getVariable "SLB_KILLTIMER";
			if (isNil "_killTimer") then {_killTimer = 5};
			_var1 = profileNamespace getVariable "SLB_Retake_Tanoa_Vehicle";
			if !(isNil "_var1") then {
				_var1 params ["", "_oldPos", "_oldDir"];
				diag_log format ["Retake: %1/%3, %2/%4", _pos, _dir, _oldPos, _oldDir];
				if (_oldPos != _pos || _oldDir != _dir || _pos inArea RT_BASE_MARKER) then {
					_x setVariable ["SLB_KILLTIMER", 5];
				}else{
					_killTimer = _killTimer -1;
				};
			};
			
			//save array composition
			if (_killTimer > 0) then {
				_value pushback [_vehType, _pos, _dir, _health, _gear, _fuel, _varName, _killTimer];
			};
		};
	};
} forEach _vehicles;

profileNamespace setVariable ["SLB_Retake_Tanoa_Vehicle", _value];
saveProfileNamespace;
