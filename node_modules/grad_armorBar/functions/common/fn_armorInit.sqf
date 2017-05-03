player addEventHandler ["InventoryOpened", {
    ["init",_this] spawn fnc_armorCalc;
}];
player addEventHandler ["Put",{
    ["refresh"] call fnc_armorCalc;
}];
player addEventHandler ["Take",{
    ["refresh"] call fnc_armorCalc;
}];
