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
    [<moreplates:draconium_plate>, <botanicadds:gaiasteel_ingot>, <moreplates:draconium_plate>],
    [<minecraft:gold_ingot>, <avaritia:resource>, <minecraft:gold_ingot>],
    [<moreplates:draconium_plate>, <minecraft:gold_ingot>, <moreplates:draconium_plate>]
]);

//Draconium
recipes.removeByRecipeName("thermalfoundation:draconium_ingot");
recipes.removeByRecipeName("thermalfoundation:draconium_ingot_1");
recipes.removeByRecipeName("thermalfoundation:draconium_ingot_2");