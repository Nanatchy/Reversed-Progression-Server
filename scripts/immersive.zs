/* Import */
import mods.immersiveengineering.MetalPress.addRecipe as press;
//mods.immersiveengineering.MetalPress.addRecipe(Output, Input, Mold, Energy, InputSize);
import mods.immersiveengineering.BlastFurnace.addRecipe as blast;
import mods.immersiveengineering.AlloySmelter.addRecipe as kiln;

/* Var */
var moldPack = <immersiveengineering:mold:5>;

//Coke bricks
recipes.remove(<immersiveengineering:stone_decoration>);

//Blast Brick
recipes.remove(<immersiveengineering:stone_decoration:1>);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [
    [<embers:archaic_brick>, <tconstruct:materials:2>, <embers:archaic_brick>],
    [<tconstruct:materials:2>, <minecraft:blaze_powder>, <tconstruct:materials:2>],
    [<embers:archaic_brick>, <tconstruct:materials:2>, <embers:archaic_brick>]
]);

//Kiln Brick
recipes.remove(<immersiveengineering:stone_decoration:10>);
recipes.addShaped(<immersiveengineering:stone_decoration:10> * 2, [
    [<quark:soul_sandstone>, <embers:brick_caminite>],
    [<embers:brick_caminite>, <quark:soul_sandstone>],
]);

//Water Wheel
recipes.remove(<immersiveengineering:wooden_device1>);
recipes.addShaped(<immersiveengineering:wooden_device1>, [
    [null, <immersiveengineering:material:10>, null],
    [<immersiveengineering:material:10>, <ore:plateSteel>, <immersiveengineering:material:10>],
    [null, <immersiveengineering:material:10>, null]
]);

//Windmill
recipes.remove(<immersiveengineering:wooden_device1:1>);
recipes.addShaped(<immersiveengineering:wooden_device1:1>, [
    [<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>],
    [<immersiveengineering:material:11>, <ore:plateIron>, <immersiveengineering:material:11>],
    [<immersiveengineering:material:11>, <immersiveengineering:material:11>, <immersiveengineering:material:11>]
]);

//Conveyor
recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [
    [null, null, null],
    [<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>],
    [<pneumaticcraft:ingot_iron_compressed>, <enderio:item_alloy_ingot:3>, <pneumaticcraft:ingot_iron_compressed>]
]);

recipes.remove(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}));
recipes.addShaped(<immersiveengineering:conveyor>.withTag({conveyorType: "immersiveengineering:conveyor"}) * 8, [
    [null, null, null],
    [<industrialforegoing:plastic>, <industrialforegoing:plastic>, <industrialforegoing:plastic>],
    [<pneumaticcraft:ingot_iron_compressed>, <enderio:item_alloy_ingot:3>, <pneumaticcraft:ingot_iron_compressed>]
]);

/* Sheetmetal */
//Copper
recipes.remove(<immersiveengineering:sheetmetal>);
press(<immersiveengineering:sheetmetal>, <ore:plateCopper>, moldPack, 1000, 4);

//Iron
recipes.remove(<immersiveengineering:sheetmetal:9>);
press(<immersiveengineering:sheetmetal:9>, <ore:plateIron>, moldPack, 1000, 4);

//Aluminum
recipes.remove(<immersiveengineering:sheetmetal:1>);
press(<immersiveengineering:sheetmetal:1>, <ore:plateAluminum>, moldPack, 1000, 4);

//Lead
recipes.remove(<immersiveengineering:sheetmetal:2>);
press(<immersiveengineering:sheetmetal:2>, <ore:plateLead>, moldPack, 1000, 4);

//Silver
recipes.remove(<immersiveengineering:sheetmetal:3>);
press(<immersiveengineering:sheetmetal:3>, <ore:plateSilver>, moldPack, 1000, 4);

//Nickel
recipes.remove(<immersiveengineering:sheetmetal:4>);
press(<immersiveengineering:sheetmetal:4>, <ore:plateNickel>, moldPack, 1000, 4);

//Uranium
recipes.remove(<immersiveengineering:sheetmetal:5>);
press(<immersiveengineering:sheetmetal:5>, <ore:plateUranium>, moldPack, 1000, 4);

//Constantan
recipes.remove(<immersiveengineering:sheetmetal:6>);
press(<immersiveengineering:sheetmetal:6>, <ore:plateConstantan>, moldPack, 1000, 4);

//Electrum
recipes.remove(<immersiveengineering:sheetmetal:7>);
press(<immersiveengineering:sheetmetal:7>, <ore:plateElectrum>, moldPack, 1000, 4);

//Steel
recipes.remove(<immersiveengineering:sheetmetal:8>);
press(<immersiveengineering:sheetmetal:8>, <ore:plateSteel>, moldPack, 1000, 4);

//Gold
recipes.remove(<immersiveengineering:sheetmetal:10>);
press(<immersiveengineering:sheetmetal:10>, <ore:plateGold>, moldPack, 1000, 4);

/* Wires - Wire Connectors - Wire Relays */
//LV Wire Connector
recipes.remove(<immersiveengineering:connector>);
recipes.addShaped(<immersiveengineering:connector> * 2, [
    [null, <ore:nuggetGold>, null],
    [<minecraft:hardened_clay>, <immersiveengineering:wirecoil>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <ore:nuggetGold>, <minecraft:hardened_clay>]
]);

//LV Wire Relay
recipes.remove(<immersiveengineering:connector:1>);
recipes.addShaped(<immersiveengineering:connector:1> * 4, [
    [null, null, null],
    [null, <immersiveengineering:material:20>, null],
    [<minecraft:hardened_clay>, <ore:nuggetGold>, <minecraft:hardened_clay>]
]);

//MV Wire Connector
recipes.remove(<immersiveengineering:connector:2>);
recipes.addShaped(<immersiveengineering:connector:2> *2, [
    [null, <ore:nuggetIron>, null],
    [<minecraft:hardened_clay>, <immersiveengineering:wirecoil:1>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <ore:nuggetIron>, <minecraft:hardened_clay>]
]);

//MV Wire Relay
recipes.remove(<immersiveengineering:connector:3>);
recipes.addShaped(<immersiveengineering:connector:3> * 4, [
    [null, null, null],
    [null, <immersiveengineering:material:21>, null],
    [<minecraft:hardened_clay>, <ore:nuggetIron>, <minecraft:hardened_clay>]
]);

//HV Wire Connector
recipes.remove(<immersiveengineering:connector:4>);
recipes.addShaped(<immersiveengineering:connector:4> * 2, [
    [null, <ore:nuggetAluminum>, null],
    [<minecraft:hardened_clay>, <immersiveengineering:wirecoil:2>, <minecraft:hardened_clay>],
    [<minecraft:hardened_clay>, <ore:nuggetAluminum>, <minecraft:hardened_clay>]
]);

//HV Wire Relay
recipes.remove(<immersiveengineering:connector:5>);
recipes.addShaped(<immersiveengineering:connector:5> * 4, [
    [null, <immersiveengineering:material:23>, null],
    [<immersiveengineering:stone_decoration:8>, <ore:nuggetAluminum>, <immersiveengineering:stone_decoration:8>],
    [<immersiveengineering:stone_decoration:8>, <immersiveengineering:material:22>, <immersiveengineering:stone_decoration:8>]
]);

//Steel Ingot
blast(<thermalfoundation:material:160>, <minecraft:iron_ingot>, 600);

//Electrum
kiln(<thermalfoundation:material:161> * 2, <minecraft:gold_ingot>, <thermalfoundation:material:130>, 600);
kiln(<thermalfoundation:material:97>, <ore:dustGold>, <thermalfoundation:material:66>, 300);

//Garden Cloche
recipes.remove(<immersiveengineering:metal_device1:13>);
recipes.addShaped(<immersiveengineering:metal_device1:13>, [
    [<botania:elfglass>, <immersiveengineering:toolupgrade:10>, <botania:elfglass>],
    [<botania:elfglass>, null, <botania:elfglass>],
    [<ore:plankTreatedWood>, <immersiveengineering:material:9>, <ore:plankTreatedWood>]
]);