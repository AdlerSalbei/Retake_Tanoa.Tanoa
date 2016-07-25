_gear = 
_brokenTFAR =((_gear select 2) select 2);
_fixTFAR = _brokenTFAR splitString "m";
((_gear select 2) select 2) set _fixTFAR;