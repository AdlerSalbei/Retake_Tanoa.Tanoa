

if (not isnull _name) then{
    _virtualBackpacks = [_name] call BIS_fnc_getVirtualBackpackCargo;
    _virtualItems = [_name] call BIS_fnc_getVirtualItemCargo;
    _virtualMagazines = [_name] call BIS_fnc_getVirtualMagazineCargo;
    _virtualWeapons = [_name] call BIS_fnc_getVirtualWeaponCargo;
    _backpacks = getBackpackCargo _name;
    _items = getItemCargo _name;
    _magazines = getMagazineCargo _name;
    _weapons = getWeaponCargo _name;

    _stringData = format ["[%1,%2,%3,%4,%5,%6,%7,%8]",str(_virtualBackpacks), str(_virtualItems), str(_virtualMagazines), str(_virtualWeapons), str(_backpacks), str(_items), str(_magazines), str(_weapons)];
};
