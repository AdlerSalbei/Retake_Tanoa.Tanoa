class tanks{
    permissionLevel = 3;

    displayName = "Tanks";
    kindOf = "Vehicles";
    spawnEmpty = 1;
	
	class LIB_Kfz1 {
        displayName = "Kfz 1";
        price = 2000;
        stock = 10;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };
};

		
