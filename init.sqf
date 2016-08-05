// read parameters
TIME_OF_DAY = "TimeOfDay" call BIS_fnc_getParamValue;
WEATHER_SETTING = "WeatherSetting" call BIS_fnc_getParamValue;
TIME_ACCELERATION = "Zeitbeschleunigung" call BIS_fnc_getParamValue;
//DEBUG = ("Debug_Mode" call BIS_fnc_getParamValue;) == 1;

setCustomWeather = {
	skipTime -24;
	0 setOvercast (_this select 0);
	setViewDistance 5000;
	skipTime 24;
};

switch (WEATHER_SETTING) do {
	case 0: {[0] call setCustomWeather;};
	case 1: {[0.4] call setCustomWeather;};
	case 2: {[1] call setCustomWeather;};
	case 3: {[random 1] call setCustomWeather;};
	default {[0] call setCustomWeather;};
};


if (!isMultiplayer) then { // Editor
	{_x disableAI "MOVE"} forEach allUnits;
};

enableSentences false;
enableRadio false;

[] call "DB\saveTrigger.sqf";
