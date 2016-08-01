class GRAD_DeathCamDisplay
{
        idd = 7000;
        movingenable = 1;

        enableSimulation = 1;
        enableDisplay = 1;
        onLoad = "uiNamespace setVariable ['GRAD_DeathCamDisplay', (_this select 0)];";
        fadein = 0.25;
        fadeout = 0.25;

        class controlsBackground
                {
                        class GRAD_DeathCam_bg : RscStructuredText
                        {
                                    idc = -1;
                                    x = SafeZoneX;
                                    y = SafeZoneY;
                                    w = SafeZoneW + safeZoneX;
                                    h = SafeZoneH + safeZoneY;
                                    colorBackground[] = {0,0,0,0};
                                    color[] = {0,0,0,0};
                                    text = "";
                        };
                };
        class controls {
            class RscText_DeathCam_headline : RscStructuredText {
                idc = 7001;
                text = "<t size='4' shadow='0' align='center'>Du bist tot.</t>";
                color[] = {1,1,1,0};
                x = safeZoneX + (safeZoneX + safeZoneW)/5;
                y = safeZoneY + (safeZoneY + safeZoneH)/20;
                w = safeZoneX + safeZoneW;
                h = safeZoneH/10;
                colorBackground[] = {0,0,0,0};
            };
            class RscText_DeathCam_quote : RscStructuredText {
                idc = 7002;
                text = "quote";
                color[] = {1,1,1,0.8};
                x = safeZoneX + (safeZoneX + safeZoneW)/5;
                y = safeZoneY + (safeZoneH/20)*16;
                w = safeZoneX + safeZoneW;
                h = safeZoneH/10;
                colorBackground[] = {0,0,0,0};
            };
            class RscText_DeathCam_author : RscStructuredText {
                idc = 7003;
                text = "author";
                color[] = {1,1,1,0.4};
                x = safeZoneX + (safeZoneX + safeZoneW)/5;
                y = safeZoneY + (safeZoneH/20)*18;
                w = safeZoneX + safeZoneW;
                h = safeZoneH/10;
                colorBackground[] = {0,0,0,0};
            };
        };
};
