//To exclude an object use:
//obj setVariable ["f_cacheExcl",true,true];

//Settings:
f_param_debugMode = 0;       //caching debug mode - 0: off, 1: on
f_param_caching = 1500       //range in m at which vehicles are cached
f_var_cacheSleep = 10;      //sleep time between two tracking cycles
_startDelay = 30;           //time in s after mission start at which caching is initialized

//Spawn actual init
[_startDelay] spawn f_fnc_cInit;
