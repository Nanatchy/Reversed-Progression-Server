import mods.embers.Alchemy;
import mods.embers.Mixer.add as mixer;
import mods.embers.Melter.add as melter;
import mods.embers.Stamper.add as stamper;

/* Plates */
//Iron
recipes.removeByRecipeName("embers:plate_iron");

//Copper
recipes.removeByRecipeName("embers:plate_copper");

//Lead
recipes.removeByRecipeName("embers:plate_lead");

//Silver
recipes.removeByRecipeName("embers:plate_silver");

//Dawnstone
recipes.removeByRecipeName("embers:plate_dawnstone");

//Gold
recipes.removeByRecipeName("embers:plate_gold");

//Aluminum
recipes.removeByRecipeName("embers:plate_aluminum");

//Bronze
recipes.removeByRecipeName("embers:plate_bronze");

//Electrum
recipes.removeByRecipeName("embers:plate_electrum");

//Nickel
recipes.removeByRecipeName("embers:plate_nickel");

//Tin
recipes.removeByRecipeName("embers:plate_tin");

/* Mixing recipes */
//Redstone alloy
mixer(<liquid:redstone_alloy>*288, [<liquid:redstone>*144, <liquid:iron>*144]);

/* Melting recipes */
//Molten redstone
melter(<liquid:redstone>*144, <tp:redstone_ingot>);

/* Stamping recipes */
//Redstone alloy
stamper(<enderio:item_alloy_ingot:3>, <liquid:redstone_alloy>*144, <embers:stamp_bar>, <minecraft:iron_ingot>);

//Ember Activator
recipes.remove(<embers:ember_activator>);
recipes.addShaped(<embers:ember_activator>, [
    [<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],
    [<thermalfoundation:material:128>, <thermalfoundation:material:128>, <thermalfoundation:material:128>],
    [<minecraft:iron_ingot>, <minecraft:furnace>, <minecraft:iron_ingot>]
]);

//Mechanical Core
recipes.remove(<embers:mech_core>);
recipes.addShaped(<embers:mech_core>, [
    [<minecraft:iron_ingot>, <minecraft:compass>, <minecraft:iron_ingot>],
    [null, <thermalfoundation:storage:3>, null],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>]
]);