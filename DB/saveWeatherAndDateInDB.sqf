private ["_weather", "_date"];

//get weather
 _weather = overcast;

//get Date & Time
 _date = date;

//set value
_value = [_date, _weather];
diag_log format ["D&W: %1", _value];
profileNamespace setVariable ["SLB_Retake_Tanoa_Time_Weather", _value];
saveProfileNamespace;
