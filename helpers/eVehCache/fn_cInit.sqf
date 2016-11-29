// Empty vehicle caching script init - based on F3 Caching - modified by McDiod
// Credits: Please see the F3 online manual (http://www.ferstaberinde.com/f3/en/)
// ====================================================================================

// Wait for the mission to have launched before starting to cache.
sleep 0.1;
if !(isServer) exitWith {};
waitUntil {time > (_this select 0)};

// Make sure script is only run once
if (missionNameSpace getVariable ["f_cInit", false]) exitWith {};
f_cInit = true;

// ====================================================================================

// Define parameters
_range = f_param_caching;	// The range outside of which to cache vehicles
f_var_cacheRun = true;

[_range] spawn f_fnc_cTracker;

// Start the debug tracker
if (f_param_debugMode == 1) then {
	diag_log format ["f_fnc_cInit DBG: Starting to track %1 vehicles, %2 range, %3 sleep",count vehicles,_range,f_var_cacheSleep];

	[] spawn {

	// Giving the tracker a head start
	sleep (f_var_cacheSleep * 1.1);

		while {f_var_cacheRun} do {
			_str1 = "f_fnc_cache DBG:";
			_str2 = format["Total vehicles: %1<br/>",count vehicles];
			_str3 = format ["Cached vehicles:%1<br/>",{_x getvariable "f_cached"} count vehicles];
			_str4 = format ["Activated vehicles:%1<br/>",{!(_x getvariable "f_cached")} count vehicles];
			_str5 = format ["Excluded vehicles:%1<br/>",{(_x getvariable "f_cacheExcl")} count vehicles];

			diag_log (_str1+_str2+_str3+_str4+_str5);

			sleep f_var_cacheSleep;
		};
	};
};
