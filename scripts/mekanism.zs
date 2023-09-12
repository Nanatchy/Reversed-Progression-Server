//Var
var redAlloy = <enderio:item_alloy_ingot:3>;
var cirBasic = <mekanism:controlcircuit>;
var cirAdvanced = <mekanism:controlcircuit:1>;
var cirElite = <mekanism:controlcircuit:2>;
var cirUltimate = <mekanism:controlcircuit:3>;
var alloyEnriched = <mekanism:enrichedalloy>;
var alloyReinforced = <mekanism:reinforcedalloy>;
var alloyUltimate = <mekanism:atomicalloy>;
var casing = <mekanism:basicblock:8>;
var ironAlloy = <enderio:item_alloy_ingot:9>;

//Steel casing
recipes.remove(<mekanism:basicblock:8>);

//Energy Tablet
recipes.remove(<mekanism:energytablet>);
recipes.addShaped(<mekanism:energytablet>, [
    [<enderio:item_alloy_ingot:3>, <ore:plateGold>, <enderio:item_alloy_ingot:3>],
    [<mekanism:enrichedalloy>, <ore:dustGold>, <mekanism:enrichedalloy>],
    [<enderio:item_alloy_ingot:3>, <ore:plateGold>, <enderio:item_alloy_ingot:3>]
]);

//Metallurgic Infuser - Recipes
//Enriched Alloy
mods.mekanism.infuser.removeRecipe(<mekanism:enrichedalloy>, <minecraft:iron_ingot>, "REDSTONE");
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <deepmoblearning:glitch_infused_ingot>, <mekanism:enrichedalloy>);

//Reinforced Alloy
mods.mekanism.infuser.removeRecipe(<mekanism:reinforcedalloy>, <mekanism:enrichedalloy>, "DIAMOND");
mods.mekanism.infuser.addRecipe("DIAMOND", 10, <tconstruct:materials:14>, <mekanism:reinforcedalloy>);

//Atomic Alloy
mods.mekanism.infuser.removeRecipe(<mekanism:atomicalloy>, <mekanism:reinforcedalloy>, "OBSIDIAN");
mods.mekanism.infuser.addRecipe("OBSIDIAN", 10, <pneumaticcraft:advanced_pcb>, <mekanism:atomicalloy>);

//Basic Control Circuit
mods.mekanism.infuser.removeRecipe(<mekanism:controlcircuit>, <ore:ingotOsmium>, "REDSTONE");
mods.mekanism.infuser.addRecipe("REDSTONE", 10, <mysticalagriculture:osmium_essence> * 10, <mekanism:controlcircuit>);

/* Machines */
//Enrichment Chamber
recipes.remove(<mekanism:machineblock>);
recipes.addShaped(<mekanism:machineblock>, [
    [redAlloy, cirBasic, redAlloy],
    [ironAlloy, casing, ironAlloy],
    [redAlloy, cirBasic, redAlloy]
]);

//Crusher
recipes.remove(<mekanism:machineblock:3>);
recipes.addShaped(<mekanism:machineblock:3>, [
    [redAlloy, cirBasic, redAlloy],
    [<minecraft:lava_bucket>, casing, <minecraft:lava_bucket>],
    [redAlloy, cirBasic, redAlloy]
]);

//Electrolytic Separator
recipes.remove(<mekanism:machineblock2:4>);
recipes.addShaped(<mekanism:machineblock2:4>, [
    [ironAlloy, redAlloy, ironAlloy],
    [alloyEnriched, <mekanism:electrolyticcore>, alloyEnriched],
    [ironAlloy, redAlloy, ironAlloy]
]);

//Pressurized Reaction Chamber
recipes.remove(<mekanism:machineblock2:10>);
recipes.addShaped(<mekanism:machineblock2:10>, [
    [<botanicadds:gaiasteel_ingot>, alloyEnriched, <botanicadds:gaiasteel_ingot>],
    [cirUltimate, <mekanism:machineblock>, cirUltimate],
    [<mekanism:gastank>.withTag({tier: 3}), <mekanism:basicblock:9>, <mekanism:gastank>.withTag({tier: 3})]
]);

//Heat Generator
recipes.remove(<mekanismgenerators:generator>);
recipes.addShaped(<mekanismgenerators:generator>, [
    [ironAlloy, ironAlloy, ironAlloy],
    [<ore:plankTreatedWood>, <mekanism:ingot:1>, <ore:plankTreatedWood>],
    [<ore:plateCopper>, <minecraft:furnace>, <ore:plateCopper>]
]);

//Thermal Evaporation Block
recipes.remove(<mekanism:basicblock2>);
recipes.addShaped(<mekanism:basicblock2> * 4, [
    [null, <enderio:item_alloy_endergy_ingot>, null],
    [<enderio:item_alloy_endergy_ingot>, <ore:plateCopper>, <enderio:item_alloy_endergy_ingot>],
    [null, <enderio:item_alloy_endergy_ingot>, null]
]);

/* Fusion Crafting Core - Draconic Evolution */
recipes.remove(<draconicevolution:fusion_crafting_core>);
mods.mekanism.reaction.addRecipe(<astralsorcery:blockaltar:3>, <liquid:liquidhydrogenchloride> * 5000, <gas:fusionfuel> * 5000, <draconicevolution:fusion_crafting_core>, <gas:sulfuricacid> * 1000, 50000, 6000);

//Metallurgic Infuser
recipes.remove(<mekanism:machineblock:8>);
recipes.addShaped(<mekanism:machineblock:8>, [
    [<enderio:item_alloy_ingot:4>, <minecraft:furnace>, <enderio:item_alloy_ingot:4>],
    [<tp:redstone_ingot>, <mekanism:basicblock:8>, <tp:redstone_ingot>],
    [<enderio:item_alloy_ingot:4>, <minecraft:furnace>, <enderio:item_alloy_ingot:4>]
]);

//Basic Fluid Tank
recipes.remove(<mekanism:machineblock2:11>.withTag({tier: 0}));
recipes.addShaped(<mekanism:machineblock2:11>.withTag({tier: 0}), [
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:9>, <tp:redstone_ingot>],
    [<enderio:item_alloy_ingot:9>, <extrautils2:decorativeglass>, <enderio:item_alloy_ingot:9>],
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:9>, <tp:redstone_ingot>]
]);