Enhanced Arma 3 Inventory 
=====
by Aaron Clark - http://www.epochmod.com
modified by Salbei for Gruppe Adler
for Arma 3 version 1.66+

Modifikation:
=====
Made it into a skript version and reduced it to an Armor Bar only.

Features:
=====
##### - Armor Stats
Adds visual representation to inventory (progress bars) that show armor levels of Uniform, Vests, and Headgear as well as total armor at bottom. When selecting or dragging the total armor bar shows a preview to show if you are gaining or reducing armor. Max armor levels are dynamically calculated from all available armor bearing items.

Installation:
=====
Manually

1. Create a folder in your mission root folder and name it modules. Then create one inside there and call it grad-loadout. If you want change the containing directory name you will have to adjust the MODULES_DIRECTORY definition, see Configuration
2. Download the contents of this repository ( there's a download link at the side ) and put it into the directory you just created.
3. Append the following lines of code to the description.ext:
```
#define MODULES_DIRECTORY node_modules

#include "node_modules\grad-armorBar\grad_armorBar.hpp"

class CfgFunctions {
    #include "node_modules\grad-armorBar\cfgFunctions.hpp"
};
```
Licence:
=====
Arma Public License Share Alike (APL-SA) - https://www.bistudio.com/community/licenses/arma-public-license-share-alike

Pictures:
=====
![](http://i.imgur.com/WxYJX50.jpg)

