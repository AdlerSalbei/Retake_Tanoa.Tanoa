// Start with a silent black screen.
titleCut ["", "BLACK FADED", 999];
0 fadeSound 0;

// Spawn text effects.
_this spawn {

	params[
		["_missionName", "An Arma 3 mission"],
		["_missionAuthor", "by a Community Author"],
		["_missionVersion", "Version 1.0"],
		["_quote", "Not so long ago, not so far away...\n\n-A quote"]
	];
	
	// Starting quote as volume fades in.
	titleText [_quote,"PLAIN"];
	waitUntil {!isNil "LOADSETUPDONE"};
	
	titleFadeOut 5;
	5 fadeSound 1;
	sleep 3;

	// New "sitrep style" text in bottom right corner, typed out over time.
	[ 
		[_missionName,"font = 'PuristaSemiBold'"],
		["","<br/>"],
		[_missionAuthor,"font = 'PuristaMedium'"],
		["","<br/>"],
		[_missionVersion,"font = 'PuristaLight'"]
	]  execVM "\a3\missions_f_bootcamp\Campaign\Functions\GUI\fn_SITREP.sqf";

	// Fade from black, to blur, to clear as text types.
	sleep 3;
	"dynamicBlur" ppEffectEnable true;   
	"dynamicBlur" ppEffectAdjust [6];   
	"dynamicBlur" ppEffectCommit 0;     
	"dynamicBlur" ppEffectAdjust [0.0];  
	"dynamicBlur" ppEffectCommit 5;  
	titleCut ["", "BLACK IN", 5];
};
