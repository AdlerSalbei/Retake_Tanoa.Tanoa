if (!isMultiplayer) then {
	// Editor
	{_x disableAI "MOVE"} forEach allUnits;
};

enableSentences false;
enableRadio false;

[] call rt_fnc_saveTrigger;

