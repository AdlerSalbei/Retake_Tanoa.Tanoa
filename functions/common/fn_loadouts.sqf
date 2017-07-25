switch () do {
	case "Rifleman" : {_loadout = [
						["","","","",[],[],""],
						[],
						["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],
						["rhs_uniform_g3_rgr",[["rhsusf_mag_15Rnd_9x19_JHP",2,15]]],
						["V_TacChestrig_oli_F", [[]]],
						["B_ViperLightHarness_oli_F",[["ACE_fieldDressing",10],["ACE_epinephrine",3],["ACE_morphine",4]]],
						"rhsusf_opscore_fg","",["","","","",[],[],""],["ItemMap","","tf_anprc148jem","ItemCompass","ItemWatch",""]
						];
					};
	case "Medic" : {_loadout = [
						["","","","",[],[],""],
						[],
						["rhsusf_weap_m9","","","",["rhsusf_mag_15Rnd_9x19_JHP",15],[],""],
						["rhs_uniform_g3_rgr",[["rhsusf_mag_15Rnd_9x19_JHP",2,15]]],
						["V_TacChestrig_oli_F", [[]]],
						["B_ViperLightHarness_oli_F",[["ACE_fieldDressing",10],["ACE_epinephrine",3],["ACE_morphine",4]]],
						"rhsusf_opscore_fg","",["","","","",[],[],""],["ItemMap","","tf_anprc148jem","ItemCompass","ItemWatch",""]
						];
					};
		
player setUnitLoadout _loadout;
LOADSETUPDONE = true;
