/* Var */
var mirror = <solarflux:mirror>;
var cell1 = <solarflux:photovoltaic_cell_1>;
var cell2 = <solarflux:photovoltaic_cell_2>;
var cell3 = <solarflux:photovoltaic_cell_3>;
var cell4 = <solarflux:photovoltaic_cell_4>;
var cell5 = <solarflux:photovoltaic_cell_5>;
var cell6 = <solarflux:photovoltaic_cell_6>;
var panel1 = <solarflux:solar_panel_1>;
var panel2 = <solarflux:solar_panel_2>;
var panel3 = <solarflux:solar_panel_3>;
var panel4 = <solarflux:solar_panel_4>;
var panel5 = <solarflux:solar_panel_5>;
var panel6 = <solarflux:solar_panel_6>;
var panel7 = <solarflux:solar_panel_7>;
var panel8 = <solarflux:solar_panel_8>;
var insuGlass = <immersiveengineering:stone_decoration:8>;
var manaLapis = <botanicadds:mana_lapis>;

/* Cells */
//Mirror
recipes.remove(mirror);
recipes.addShaped(mirror * 3, [
    [null, null, null],
    [<embers:ingot_dawnstone>, <embers:ashen_brick>, <embers:ingot_dawnstone>],
    [null, <embers:focal_lens>, null]
]);

//Cell 1
recipes.remove(cell1);
recipes.addShaped(cell1, [
    [<botania:manaresource:8>, <botania:rune:5>, <botania:manaresource:8>],
    [manaLapis, manaLapis, manaLapis],
    [mirror, mirror, mirror]
]);

//Cell 2
recipes.remove(cell2);
recipes.addShaped(cell2, [
    [<enderio:item_basic_capacitor:1>, <enderio:item_material:18>, <enderio:item_basic_capacitor:1>],
    [<enderio:item_alloy_endergy_ingot:1>, <enderio:item_capacitor_energetic_silver>, <enderio:item_alloy_endergy_ingot:1>],
    [mirror, cell1, mirror]
]);

//Cell 3
recipes.remove(cell3);
recipes.addShaped(cell3, [
    [<astralsorcery:blockinfusedwood:6>, <astralsorcery:blockinfusedwood:6>, <astralsorcery:blockinfusedwood:6>],
    [<astralsorcery:itemcraftingcomponent:1>, <astralsorcery:itemcraftingcomponent:3>, <astralsorcery:itemcraftingcomponent:1>],
    [<astralsorcery:itemcraftingcomponent:4>, cell2, <astralsorcery:itemcraftingcomponent:4>]
]);

//Cell 4
recipes.remove(cell4);
recipes.addShaped(cell4, [
    [<industrialforegoing:plastic>, <industrialforegoing:pink_slime>, <industrialforegoing:plastic>],
    [<industrialforegoing:plastic>, <avaritia:resource>, <industrialforegoing:plastic>],
    [<industrialforegoing:pink_slime_ingot>, cell3, <industrialforegoing:pink_slime_ingot>]
]);

//Cell 5
recipes.remove(cell5);
recipes.addShaped(cell5, [
    [<bloodarsenal:base_item:4>, <bloodmagic:item_demon_crystal>, <bloodarsenal:base_item:4>],
    [<bloodarsenal:base_item:4>,<bloodmagic:path:6>, <bloodarsenal:base_item:4>],
    [<bloodmagic:decorative_brick:1>, cell4, <bloodmagic:decorative_brick:1>]
]);

//Cell 6
recipes.remove(cell6);
recipes.addShaped(cell6, [
    [<mekanism:atomicalloy>, <mekanism:energytablet>.withTag({}), <mekanism:atomicalloy>],
    [<mekanism:atomicalloy>, <mekanism:plasticblock:2>, <mekanism:atomicalloy>],
    [<mekanismgenerators:solarpanel>, cell5, <mekanismgenerators:solarpanel>]
]);

/* Solar Panel */
//Tier 1
recipes.remove(panel1);
recipes.addShaped(panel1, [
    [mirror, mirror, mirror],
    [<embers:archaic_bricks>, <tp:redstone_ingot>, <embers:archaic_bricks>],
    [<embers:block_dawnstone>, <embers:ember_cluster>, <embers:block_dawnstone>]
]);

//Tier 2
recipes.remove(panel2);
recipes.addShaped(panel2, [
    [panel1, panel1, panel1],
    [panel1, <thermalfoundation:material:1028>, panel1],
    [panel1, panel1, panel1]
]);

//Tier 3
recipes.remove(panel3);
recipes.addShaped(panel3 * 2, [
    [cell1, cell1, cell1],
    [panel2, <botania:manaresource:7>, panel2],
    [panel2, <botania:storage:1>, panel2]
]);

//Tier 4
recipes.remove(panel4);
recipes.addShaped(panel4 * 2, [
    [cell2, cell2, cell2],
    [panel3, <enderio:item_capacitor_stellar>, panel3],
    [panel3, <enderio:block_alloy_endergy:6>, panel3]
]);

//Tier 5
recipes.remove(panel5);
recipes.addShaped(panel5 * 2, [
    [cell3, cell3, cell3],
    [panel4, <forge:bucketfilled>.withTag({FluidName: "astralsorcery.liquidstarlight", Amount: 1000}), panel4],
    [panel4, <astralsorcery:blockinfusedwood>, panel4]
]);

//Tier 6
recipes.remove(panel6);
recipes.addShaped(panel6 * 2, [
    [cell4, cell4, cell4],
    [panel5, <industrialforegoing:laser_lens>, panel5],
    [panel5, <industrialforegoing:pink_slime_ingot>, panel5]
]);

//Tier 7
recipes.remove(panel7);
recipes.addShaped(panel7 * 2, [
    [cell5, cell5, cell5],
    [panel6, <bloodarsenal:blood_diamond:2>, panel6],
    [panel6, <bloodarsenal:slate:4>, panel6]
]);

//Tier 8
recipes.remove(panel8);
recipes.addShaped(panel8 * 2, [
    [cell6, cell6, cell6],
    [panel7, <mekanism:atomicalloy>, panel7],
    [panel7, <mekanism:basicblock:2>, panel7]
]);