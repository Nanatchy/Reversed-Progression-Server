//Basic drawers
recipes.remove(<ore:drawerBasic>);

//Compacting drawer
recipes.remove(<storagedrawers:compdrawers>);

//Drawer controller
recipes.remove(<storagedrawers:controller>);

//Controller slave
recipes.remove(<storagedrawers:controllerslave>);

//Drawer trim
recipes.remove(<ore:drawerTrim>);

//Framed drawer
recipes.remove(<storagedrawers:customdrawers>);

//Framed 1x2
recipes.remove(<storagedrawers:customdrawers:1>);

//Framed 2x2
recipes.remove(<storagedrawers:customdrawers:2>);

//Framed half 1x2
recipes.remove(<storagedrawers:customdrawers:3>);

//Framed half 2x2
recipes.remove(<storagedrawers:customdrawers:4>);

//Framed trim
recipes.remove(<storagedrawers:customtrim>);

//Framing table
recipes.remove(<storagedrawers:framingtable>);

//Upgrade Template
recipes.remove(<storagedrawers:upgrade_template>);
recipes.addShaped(<storagedrawers:upgrade_template> * 2, [
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>],
    [<immersiveengineering:material>, <ore:chestWood>, <immersiveengineering:material>],
    [<immersiveengineering:material>, <immersiveengineering:material>, <immersiveengineering:material>]
]);