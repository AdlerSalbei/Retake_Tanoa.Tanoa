// create and fill box
_value = profileNamespace getVariable "SLB_Retake_Tanoa_Box";

_value paramo ["_boxType", "_pos", "_dir", "_gear"];

_boxName = createVehicle [_boxType, _pos, [], 0, "CAN_COLLIDE"];

_boxName setDir _dir;
_boxName setPos _pos;


if (isNil "_gear") exitWith {};

{
     if (str _x != "[[],[]]") then {   
        switch (_forEachIndex) do {
                    case 0: { {_boxName addBackpackCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
                    case 1: { {_boxName addItemCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
                    case 2: { {_boxName addMagazineCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
                    case 3: { {_boxName addWeaponCargoGlobal [_x select 0, _x select 1]; } forEach _x; };
        };
     };
} forEach _value;
