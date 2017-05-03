class Vehicles {
    permissionLevel = 3;

    displayName = "Vehicles";
    kindOf = "Vehicles";
    spawnEmpty = 1;
	
	class LIB_Kfz1 {
        displayName = "Kfz 1";
        price = 2000;
        stock = 10;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };
	
	class LIB_Kfz1_MG42 {
        displayName = "Kfz 1 mit MG42";
        price = 4500;
        stock = 5;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };
	
	class LIB_opelblitz_open_y_camo {
        condition = "!uo_missionParam_ISWOODLAND";
        displayName = "Opelblitz";
        price = 4000;
        stock = 20;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };
	
	class LIB_opelblitz_open_g_camo {
        condition = "uo_missionParam_ISWOODLAND";
        displayName = "Opelblitz";
        price = 4000;
        stock = 20;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };
	
	class LIB_SdKfz251_FFV {
        displayName = "SdKfz 251";
		description = "SonderKraftfahrzeug 251 mit MG42.";
        price = 5000;
        stock = 10;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };
	
	/*
	class LIB_SdKfz_7_AA {
        displayName = "SdKfz 7 AA";
		description = "SonderKraftfahrzeug 7 mit Vierlingsflak 38mm.";
        price = 3000;
        stock = 5;
		code = "if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 0]; publicVariable 'VEHICLEARRAY';};";
    };
	*/
	
	class LIB_PzKpfwIV_H {
        displayName = "PzKpfw IV Ausführung H";
        price = 7000;
        stock = 3;
		code = "(_this select 2) removeMagazine 'LIB_60x_SprGr34_KWK40_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_60x_SprGr34_KWK40_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	
	class LIB_PzKpfwV {
        displayName = "PzKpfw V Panther";
        price = 8000;
        stock = 1;
		code = "(_this select 2) removeMagazine 'LIB_30x_SprGr42_KwK42_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_30x_SprGr42_KwK42_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	
	class LIB_PzKpfwVI_E {
        displayName = "PzKpfw VI Tiger";
        price = 9000;
        stock = 1;
		code = "(_this select 2) removeMagazine 'LIB_50x_SprGr_KwK36_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_50x_SprGr_KwK36_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	
	 class LIB_PzKpfwVI_B_camo {
        condition = "uo_missionParam_ISWOODLAND == 1";
        displayName = "PzKpfw VI Königstiger";
        price = 10000;
        stock = 1;
		code = "(_this select 2) removeMagazine 'LIB_40x_SprGr39_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_40x_SprGr39_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	
	class LIB_PzKpfwVI_B {
        condition = "uo_missionParam_ISWOODLAND == 0";
        displayName = "PzKpfw VI Königstiger";
        price = 10000;
        stock = 1;
		code = "(_this select 2) removeMagazine 'LIB_40x_SprGr39_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_40x_SprGr39_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	
	/*
	class LIB_StuG_III_G {
        displayName = "StuG III Ausführung G";
        price = 4000;
        stock = 2;
		code = "(_this select 2) removeMagazine 'LIB_30x_SprGr34_StuK40_HE'; if (isNil 'BLUFORSPAWN' && isServer) then {deleteVehicle (_this select 2); VEHICLEARRAY pushBack [(_this select 1), 'LIB_30x_SprGr34_StuK40_HE']; publicVariable 'VEHICLEARRAY';};";
    };
	*/
	
	class LIB_FW190F8 {
		permissionLevel = 6;
		kindOf = "Other";
        displayName = "Focke-Wulf FW190F8";
		description = "Jagdbomber mit zwei 20mm und zwei 13mm Maschinenkanonen bewaffnet.";
        price = 12000;
        stock = 1;
		code = " [(_this select 1), (getPos player)] call hp_fnc_planeSpawn;";
    };
	
	class LIB_Ju87 {
		permissionLevel = 6;
		kindOf = "Other";
        displayName = "Junkers JU87";
		description = "Sturzkampfflugzeug mit zwei 20mm Maschinenkanonen und einer 50KG Bombe bewaffnet. Desweiter Verfügt es über einen Heckschützen mit einem 7.96mm Maschiengewehr."
        price = 14000;
        stock = 1;
		code = " [(_this select 1), (getPos player)] call hp_fnc_planeSpawn;";
    };
};

		
