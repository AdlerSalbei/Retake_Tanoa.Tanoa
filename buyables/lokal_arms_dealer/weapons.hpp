class Weapons {
	displayName = "Weapons";
	kindOf = "Weapons";
	class LIB_MP40 {
		displayName = "MP40 Mashienenpistole + 2 Magazins";
		description = "The MP 40 (Maschinenpistole 40) was a submachine gun chambered for the 9×19mm Parabellum cartridge.";
		price = 550;
		stock = 20;
		code = "(_this select 0) addItemToVest 'LIB_32Rnd_9x19'; (_this select 0) addItemToVest 'LIB_32Rnd_9x19';";
	};
};
