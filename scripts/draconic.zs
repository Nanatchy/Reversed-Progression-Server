/* Import */
import mods.extendedcrafting.CompressionCrafting.addRecipe as compression;

/* Var */
var basicCrafting = <draconicevolution:crafting_injector>;
var draconicCore = <draconicevolution:draconic_core>;

/* Crafting Injector */
recipes.remove(basicCrafting);
recipes.addShaped(<draconicevolution:crafting_injector>, [
    [<botania:manaresource:2>, draconicCore, <botania:manaresource:2>],
    [<bloodmagic:decorative_brick:1>, <tconstruct:metal:4>, <bloodmagic:decorative_brick:1>],
    [<bloodmagic:decorative_brick:1>, <bloodmagic:decorative_brick:1>, <bloodmagic:decorative_brick:1>]
]);

/* ----- */

/* Cores */
//Draconic
recipes.remove(draconicCore);
recipes.addShaped(draconicCore, [
    [<moreplates:draconium_plate>, <botania:manaresource:14>, <moreplates:draconium_plate>],
    [<minecraft:gold_ingot>, <avaritia:resource>, <minecraft:gold_ingot>],
    [<moreplates:draconium_plate>, <minecraft:gold_ingot>, <moreplates:draconium_plate>]
]);

//Wyvern
recipes.remove(<draconicevolution:wyvern_core>);
recipes.addShaped(<draconicevolution:wyvern_core>, [
    [<draconicevolution:draconium_ingot>, <draconicevolution:draconic_core>, <draconicevolution:draconium_ingot>],
    [<draconicevolution:draconic_core>, <botanicadds:gaiasteel_ingot>, <draconicevolution:draconic_core>],
    [<draconicevolution:draconium_ingot>, <draconicevolution:draconic_core>, <draconicevolution:draconium_ingot>]
]);

//Draconium
recipes.removeByRecipeName("thermalfoundation:draconium_ingot");
recipes.removeByRecipeName("thermalfoundation:draconium_ingot_1");
recipes.removeByRecipeName("thermalfoundation:draconium_ingot_2");

//Chaotic
compression(<draconicevolution:chaos_shard:3>, <mysticalcreations:chaotic_essence>, 16, <extendedcrafting:material:13>, 500000, 10000);