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
    [insuGlass, insuGlass, insuGlass],
    [null, <pneumaticcraft:ingot_iron_compressed>, null]
]);

//Cell 1
recipes.remove(cell1);
recipes.addShaped(cell1, [
    [insuGlass, insuGlass, insuGlass],
    [manaLapis, manaLapis, manaLapis],
    [mirror, mirror, mirror]
]);

//Cell 2
recipes.remove(cell2);
recipes.addShaped(cell2, [
    [<deepmoblearning:polymer_clay>, manaLapis, <deepmoblearning:polymer_clay>],
    [manaLapis, <deepmoblearning:polymer_clay>, manaLapis],
    [mirror, cell1, mirror]
]);

//Cell 3
recipes.remove(cell3);
recipes.addShaped(cell3, [
    [insuGlass, insuGlass, insuGlass],
    [<enderio:item_material:76>, <enderio:item_material:76>, <enderio:item_material:76>],
    [<bloodmagic:path:6>, cell2, <bloodmagic:path:6>]
]);

//Cell 4
recipes.remove(cell4);
recipes.addShaped(cell4, [
    [<botania:quartz:2>, <mysticalagriculture:blaze_essence>, <botania:quartz:2>],
    [<enderio:item_material:76>, <avaritia:resource>, <enderio:item_material:76>],
    [<botania:quartztypeelf>, cell3, <botania:quartztypeelf>]
]);

//Cell 5
recipes.remove(cell5);
recipes.addShaped(cell5, [
    [<botania:blazeblock>, <mysticalagriculture:blaze_seeds>, <botania:blazeblock>],
    [<mekanism:basicblock:4>, <botania:storage:3>, <mekanism:basicblock:4>],
    [<refinedstorage:quartz_enriched_iron_block>, cell4, <refinedstorage:quartz_enriched_iron_block>]
]);

//Cell 6
recipes.remove(cell6);
recipes.addShaped(cell6, [
    [<actuallyadditions:block_crystal_empowered:4>, <dankstorage:dank_6>    , <actuallyadditions:block_crystal_empowered:4>],
    [<bloodarsenal:blood_infused_glowstone>, <botania:storage:3>, <bloodarsenal:blood_infused_glowstone>],
    [<botanicadds:elven_lapis_block>, cell5, <botanicadds:elven_lapis_block>]
]);

/* Solar Panel */
//Tier 1
recipes.remove(panel1);
recipes.addShaped(panel1, [
    [mirror, mirror, mirror],
    [<tconstruct:firewood>, <tp:redstone_ingot>, <tconstruct:firewood>],
    [<tconstruct:firewood>, <tconstruct:firewood>, <tconstruct:firewood>]
]);

//Tier 2
recipes.remove(panel2);
recipes.addShaped(panel2, [
    [panel1, panel1, panel1],
    [panel1, <botania:pistonrelay>, panel1],
    [panel1, panel1, panel1]
]);

//Tier 3
recipes.remove(panel3);
recipes.addShaped(panel3 * 2, [
    [cell1, cell1, cell1],
    [panel2, <randomthings:advancedredstonerepeater>, panel2],
    [panel2, <minecraft:iron_block>, panel2]
]);

//Tier 4
recipes.remove(panel4);
recipes.addShaped(panel4 * 2, [
    [cell2, cell2, cell2],
    [panel3, <embers:clockwork_attenuator>, panel3],
    [panel3, <pneumaticcraft:compressed_iron_block>, panel3]
]);

//Tier 5
recipes.remove(panel5);
recipes.addShaped(panel5 * 2, [
    [cell3, cell3, cell3],
    [panel4, <enderio:block_holier_fog>, panel4],
    [panel4, <enderio:block_alloy:1>, panel4]
]);

//Tier 6
recipes.remove(panel6);
recipes.addShaped(panel6 * 2, [
    [cell4, cell4, cell4],
    [panel5, <randomthings:rainbowlamp>, panel5],
    [panel5, <actuallyadditions:block_crystal_empowered:2>, panel5]
]);

//Tier 7
recipes.remove(panel7);
recipes.addShaped(panel7 * 2, [
    [cell5, cell5, cell5],
    [panel6, <minecraft:dragon_breath>, panel6],
    [panel6, <botania:storage:4>, panel6]
]);

//Tier 8
recipes.remove(panel8);
recipes.addShaped(panel8 * 2, [
    [cell6, cell6, cell6],
    [panel7, <deepmoblearning:pristine_matter_dragon>, panel7],
    [panel7, <draconicevolution:dragon_heart>, panel7]
]);