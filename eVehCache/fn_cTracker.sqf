// Empty vehicle caching tracker - based on F3 Caching - modified by McDiod
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS
private ["_range","_vehicles","_debug"];

_range = _this select 0;
_vehicles = vehicles;
_debug = if (f_param_debugMode == 1) then [{true},{false}];

// ====================================================================================

// BEGIN THE TRACKING LOOP
While {f_var_cacheRun} do {
        {
                _vehicles = vehicles;

                if (_debug) then{diag_log format ["f_fnc_cache DBG: Tracking %1 vehicles",count _vehicles]};

                if (isnull _x) then {
                        _vehicles = _vehicles - [_x];

                        if (_debug) then{diag_log format ["f_fnc_cache DBG: Vehicle is null, deleting: %1",_x,count _vehicles]};

                } else {
                        _exclude = _x getvariable ["f_cacheExcl",false];
                        _cached = _x getvariable ["f_cached", false];

                        if (!_exclude) then {
                                if (_cached) then {

                                        if (_debug) then {diag_log format ["f_fnc_cache DBG: Checking vehicle: %1",_x]};

                                        if ([_x, _range] call f_fnc_nearPlayer) then {

                                                if (_debug) then {diag_log format ["f_fnc_cache DBG: Decaching: %1",_x]};

                                                _x setvariable ["f_cached", false];
                                                _x spawn f_fnc_gUncache;

                                        };
                                } else {
                                        if !([_x, _range * 1.1] call f_fnc_nearPlayer) then {
                                                if ((count (crew _x)) == 0) then {
                                                  if (_debug) then {diag_log format ["f_fnc_cache DBG: Caching: %1",_x]};

                                                  _x setvariable ["f_cached", true];
                                                  [_x] spawn f_fnc_gCache;
                                                };
                                        };
                                };
                        } else {
                          if (_debug) then {diag_log format ["f_fnc_cache DBG: Vehicle is excluded: %1",_x]};
                        };
                };
        } foreach _vehicles;

        sleep f_var_cacheSleep;
};

// If the caching loop is terminated, uncache all cached vehicles
{
        if (_x getvariable ["f_cached", false]) then {
                _x spawn f_fnc_gUncache;
                _x setvariable ["f_cached", false];
        };
} forEach vehicles;
