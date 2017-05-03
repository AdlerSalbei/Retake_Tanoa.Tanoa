private ["_radioFixArray"];
params ["_radio"];

_radioFixArray = _radio splitString "_";

if (count _radioFixArray > 0) then{
	if ((_radioFixArray select 0) == "tf") then{
		 _radioFixArray deleteAt ((count _radioFixArray)-1);
		 _radioFixArray joinString "_";
	};
};
_radio;
