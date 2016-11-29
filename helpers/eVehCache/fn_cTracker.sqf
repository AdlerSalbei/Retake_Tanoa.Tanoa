/// Empty vehicle caching tracker - based on F3 Caching - modified by McDiod
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// DECLARE VARIABLES AND FUNCTIONS
private ["_range","_vehicles","_debug"];

_range = _this select 0;
_debug = if (f_param_debugMode == 1) then [{true},{false}];

// ====================================================================================

// BEGIN THE TRACKING LOOP
[{
  params ["_args", "_handle"];
  _args params ["_range", "_debug"];

  if (_debug) then{diag_log format ["f_fnc_cache DBG: Tracking %1 vehicles",count _vehicles]};
  _vehicles = vehicles;
  {          
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
                                          _x enableSimulationGlobal true;
                                          _x hideObjectGlobal false;
                                  };
                          } else {
                                  if !([_x, _range * 1.1] call f_fnc_nearPlayer) then {
                                          if ((count (crew _x)) == 0) then {
                                            if (_debug) then {diag_log format ["f_fnc_cache DBG: Caching: %1",_x]};

                                            _x setvariable ["f_cached", true];
                                            _x enableSimulationGlobal false;
                                            _x hideObjectGlobal true;
                                          };
                                  };
                          };
                  } else {
                    if (_debug) then {diag_log format ["f_fnc_cache DBG: Vehicle is excluded: %1",_x]};
                  };
          };
  } foreach _vehicles;

  if (!f_var_cacheRun) exitWith {
    diag_log "f_fnc_cache DBG: Tracking terminated. Uncaching all vehicles.";
    {
            if (_x getvariable ["f_cached", false]) then {
                    _x enableSimulationGlobal true;
                    _x hideObjectGlobal false;
                    _x setvariable ["f_cached", false];
            };
    } forEach vehicles;
    [_handle] call CBA_fnc_removePerFrameHandler;
  };
}, f_var_cacheSleep, [_range,_debug]] call CBA_fnc_addPerFrameHandler;
