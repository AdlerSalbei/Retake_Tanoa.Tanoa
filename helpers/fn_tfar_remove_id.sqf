private ["_radioFixArray"];
params ["_radio"];

diag_log format ["RT: Removing Tfar radio id: %1", _radio];

_radioFixArray = _radio splitString "_";

if (count _radioFixArray > 0) then{
	if ((_radioFixArray select 0) == "tf") then{
		 _radioFixArray deleteAt ((count _radioFixArray)-1);
		 _radioFixArray joinString "_";
	};
};

diag_log format ["RT: Returning radio: %1", _radio];
_radio;
