if (!isMultiplayer) then { 
	// Editor
	{_x disableAI "MOVE"} forEach allUnits;
};

enableSentences false;
enableRadio false;

[] execVM "DB\saveTrigger.sqf";
