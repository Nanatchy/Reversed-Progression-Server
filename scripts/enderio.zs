/* Import */
import mods.enderio.AlloySmelter.addRecipe as alloy;

/* Variables */
var simpleChassis = <enderio:item_material>;
var indusChassis = <enderio:item_material:1>;
var ironAlloy = <enderio:item_alloy_ingot:9>;
var piston = <minecraft:piston>;
var infinityGear = <enderio:item_material:11>;
var redstoneFurnace = <thermalexpansion:machine>.withTag({RSControl: 0 as byte, Facing: 3 as byte, Energy: 0, SideCache: [1, 1, 2, 2, 2, 2] as byte[] as byte[], Level: 0 as byte});


/* Simple Machines */
//Simple SAG Mill
recipes.remove(<enderio:block_simple_sag_mill>);
recipes.addShaped(<enderio:block_simple_sag_mill>, [
    [<minecraft:flint>, <excompressum:compressed_block:5>, <minecraft:flint>],
    [ironAlloy, simpleChassis, ironAlloy],
    [<thermalfoundation:material:23>, piston, <thermalfoundation:material:23>]
]);

//Simple Stirling Generator
recipes.remove(<enderio:block_simple_stirling_generator>);
recipes.addShaped(<enderio:block_simple_stirling_generator>, [
    [<tp:hardened_stone_bricks>, redstoneFurnace, <tp:hardened_stone_bricks>],
    [<tp:hardened_stone_bricks>, simpleChassis, <tp:hardened_stone_bricks>],
    [infinityGear, piston, infinityGear]
]);

//Simple Wired Charger
recipes.remove(<enderio:block_simple_wired_charger>);
recipes.addShaped(<enderio:block_simple_wired_charger>, [
    [<minecraft:stone:6>, <tconstruct:large_plate>.withTag({Material: "electrical_steel"}), <minecraft:stone:6>],
    [<enderio:item_alloy_ingot>, simpleChassis, <enderio:item_alloy_ingot>],
    [<minecraft:stone:6>, <enderio:item_alloy_ingot>, <minecraft:stone:6>]
]);

//Simple Alloy Smelter
recipes.remove(<enderio:block_simple_alloy_smelter>);
recipes.addShaped(<enderio:block_simple_alloy_smelter>, [
    [<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
    [redstoneFurnace, simpleChassis, redstoneFurnace],
    [<thermalfoundation:material:23>, <minecraft:bucket>, <thermalfoundation:material:23>]
]);

//Simple Powered Furnace
recipes.remove(<enderio:block_simple_furnace>);
recipes.addShaped(<enderio:block_simple_furnace>, [
    [<enderio:item_alloy_ingot:9>, redstoneFurnace, <enderio:item_alloy_ingot:9>],
    [<tp:hardened_stone_bricks>, simpleChassis, <tp:hardened_stone_bricks>],
    [<thermalfoundation:material:23>, <minecraft:bucket>, <thermalfoundation:material:23>]
]);

//Simple Crafter
recipes.remove(<enderio:block_simple_crafter>);
recipes.addShaped(<enderio:block_simple_crafter>, [
    [<ore:itemSilicon>, <ore:itemSilicon>, <ore:itemSilicon>],
    [<enderio:item_alloy_ingot:9>, simpleChassis, <enderio:item_alloy_ingot:9>],
    [<thermalfoundation:material:23>, <avaritia:compressed_crafting_table>, <thermalfoundation:material:23>]
]);

/* Industrial Machines */
//SAG Mill
recipes.remove(<enderio:block_sag_mill>);
recipes.addShaped(<enderio:block_sag_mill>, [
    [null, <enderio:block_alloy:6>, null],
    [<moreplates:dark_steel_plate>, <enderio:block_simple_sag_mill>, <moreplates:dark_steel_plate>],
    [<enderio:item_material:73>, <enderio:item_material:1>, <enderio:item_material:73>]
]);

//Stirling Generator
recipes.remove(<enderio:block_stirling_generator>);
recipes.addShaped(<enderio:block_stirling_generator>, [
    [null, <enderio:block_alloy:6>, null],
    [<moreplates:dark_steel_plate>, <enderio:block_simple_stirling_generator>, <moreplates:dark_steel_plate>],
    [<enderio:item_material:73>, <enderio:item_material:1>, <enderio:item_material:73>]
]);

//Combustion Generator
recipes.remove(<enderio:block_combustion_generator>);
recipes.addShaped(<enderio:block_combustion_generator>, [
    [<moreplates:dark_steel_plate>, <enderio:item_alloy_ingot>, <moreplates:dark_steel_plate>],
    [<enderio:block_tank>, <enderio:item_material:1>, <enderio:block_tank>],
    [<enderio:item_material:73>, <embers:combustor>, <enderio:item_material:73>]
]);

//Wired Charger
recipes.remove(<enderio:block_wired_charger>);
recipes.addShaped(<enderio:block_wired_charger>, [
    [<enderio:item_alloy_ingot>, null, <enderio:item_alloy_ingot>],
    [null, <enderio:item_material:1>, null],
    [<moreplates:electrical_steel_plate>, <enderio:block_simple_wired_charger>, <moreplates:electrical_steel_plate>]
]);

//Alloy Smelter
recipes.remove(<enderio:block_alloy_smelter>);
recipes.addShaped(<enderio:block_alloy_smelter>, [
    [<moreplates:dark_steel_plate>, null, <moreplates:dark_steel_plate>],
    [<enderio:block_simple_alloy_smelter>, <enderio:item_material:1>, <enderio:block_simple_furnace>],
    [<enderio:item_material:73>, null, <enderio:item_material:73>]
]);

//The Vat
recipes.remove(<enderio:block_vat>);
recipes.addShaped(<enderio:block_vat>, [
    [<moreplates:electrical_steel_plate>, <minecraft:cauldron>, <moreplates:electrical_steel_plate>],
    [<enderio:block_tank>, <enderio:item_material:1>, <enderio:block_tank>],
    [<enderio:item_alloy_ingot:6>, <thermalexpansion:machine>, <enderio:item_alloy_ingot:6>]
]);

//Painting Machine
recipes.remove(<enderio:block_painter>);
recipes.addShaped(<enderio:block_painter>, [
    [<botania:quartz:1>, <avaritia:resource>, <botania:quartz:1>],
    [<enderio:item_material:11>, <enderio:item_material:1>, <enderio:item_material:11>],
    [<moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>, <moreplates:electrical_steel_plate>]
]);

//Crafter
recipes.remove(<enderio:block_crafter>);
recipes.addShaped(<enderio:block_crafter>, [
    [null, null, null],
    [<enderio:item_alloy_ingot:6>, <enderio:block_simple_crafter>, <enderio:item_alloy_ingot:6>],
    [<enderio:item_material:73>, <enderio:item_material:1>, <enderio:item_material:73>]
]);

/* Enhanced Machine */
//Alloy Smelter
recipes.remove(<enderio:block_enhanced_alloy_smelter>);
recipes.addShaped(<enderio:block_enhanced_alloy_smelter>, [
    [null, null, null],
    [<moreplates:end_steel_plate>, <enderio:block_alloy_smelter>, <moreplates:end_steel_plate>],
    [<enderio:item_material:13>, <enderio:item_material:54>, <enderio:item_material:13>]
]);

//Combustion Generator
recipes.remove(<enderio:block_enhanced_combustion_generator>);
recipes.addShaped(<enderio:block_enhanced_combustion_generator>, [
    [<moreplates:end_steel_plate>, <enderio:block_combustion_generator>, <moreplates:end_steel_plate>],
    [<enderio:block_tank:1>, <enderio:item_material:54>, <enderio:block_tank:1>],
    [<enderio:item_material:13>, null, <enderio:item_material:13>]
]);

//SAG Mill
recipes.remove(<enderio:block_enhanced_sag_mill>);
recipes.addShaped(<enderio:block_enhanced_sag_mill>, [
    [null, null, null],
    [<moreplates:end_steel_plate>, <enderio:block_sag_mill>, <moreplates:end_steel_plate>],
    [<enderio:item_material:13>, <enderio:item_material:54>, <enderio:item_material:13>]
]);

//The Vat
recipes.remove(<enderio:block_enhanced_vat>);
recipes.addShaped(<enderio:block_enhanced_vat>, [
    [<enderio:block_tank:1>, null, <enderio:block_tank:1>],
    [<moreplates:end_steel_plate>, <enderio:block_vat>, <moreplates:end_steel_plate>],
    [<enderio:item_material:13>, <enderio:item_material:54>, <enderio:item_material:13>]
]);

//Wired Charger
recipes.remove(<enderio:block_enhanced_wired_charger>);
recipes.addShaped(<enderio:block_enhanced_wired_charger>, [
    [null, <moreplates:end_steel_plate>, null],
    [null, <enderio:item_material:54>, null],
    [<enderio:item_material:13>, <enderio:block_wired_charger>, <enderio:item_material:13>]
]);

/* System Storage */
//Tiny Inventory System Storage
recipes.remove(<enderio:block_inventory_chest_tiny>);
recipes.addShaped(<enderio:block_inventory_chest_tiny>, [
    [<actuallyadditions:block_giant_chest>, <enderio:item_material:64>, null],
    [<actuallyadditions:block_giant_chest>, simpleChassis, null],
    [<actuallyadditions:block_giant_chest>, <enderio:item_basic_capacitor>, null]
]);

recipes.addShaped(<enderio:block_inventory_chest_tiny>, [
    [<actuallyadditions:block_giant_chest>, <enderio:item_material:64>, null],
    [<actuallyadditions:block_giant_chest>, simpleChassis, null],
    [<actuallyadditions:block_giant_chest>, <enderio:item_capacitor_silver>, null]
]);

//Small Inventory System Storage
recipes.remove(<enderio:block_inventory_chest_small>);
recipes.addShaped(<enderio:block_inventory_chest_small>, [
    [null, <enderio:item_material:69>, null],
    [<enderio:item_material:69>, <actuallyadditions:block_giant_chest>, <enderio:item_material:69>],
    [null, <enderio:block_inventory_chest_tiny>, null]
]);

//Medium Inventory System Storage
recipes.remove(<enderio:block_inventory_chest_medium>);
recipes.addShaped(<enderio:block_inventory_chest_medium>, [
    [null, <enderio:item_material:69>, null],
    [<enderio:item_material:69>, <actuallyadditions:block_giant_chest>, <enderio:item_material:69>],
    [null, <enderio:block_inventory_chest_small>, null]
]);

//Big Inventory System Storage
recipes.remove(<enderio:block_inventory_chest_big>);
recipes.addShaped(<enderio:block_inventory_chest_big>, [
    [<enderio:item_material:2>, <enderio:item_material:64>, <enderio:item_material:2>],
    [<actuallyadditions:block_giant_chest_medium>, <enderio:item_material:1>, null],
    [null, <enderio:block_inventory_chest_medium>, null]
]);

//Large Inventory System Storage
recipes.remove(<enderio:block_inventory_chest_large>);
recipes.addShaped(<enderio:block_inventory_chest_large>, [
    [null, <enderio:item_material:2>, null],
    [<enderio:item_material:2>, <enderio:item_material:1>, <enderio:item_material:2>],
    [<actuallyadditions:block_giant_chest_medium>, <enderio:block_inventory_chest_big>, <actuallyadditions:block_giant_chest_medium>]
]);

//Huge Inventory System Storage
recipes.remove(<enderio:block_inventory_chest_huge>);
recipes.addShaped(<enderio:block_inventory_chest_huge>, [
    [null, <enderio:item_material:2>, null],
    [<enderio:item_material:2>, <enderio:item_material:1>, <enderio:item_material:2>],
    [<actuallyadditions:block_giant_chest_medium>, <enderio:block_inventory_chest_large>, <actuallyadditions:block_giant_chest_medium>]
]);

//Enormous Inventory System Storage
recipes.remove(<enderio:block_inventory_chest_enormous>);
recipes.addShaped(<enderio:block_inventory_chest_enormous>, [
    [null, <enderio:item_material:64>, null],
    [<actuallyadditions:block_giant_chest_large>, <enderio:item_material:54>, <actuallyadditions:block_giant_chest_large>],
    [null, <enderio:block_inventory_chest_huge>, null]
]);

//Inventory System Storage Warehouse
recipes.remove(<enderio:block_inventory_chest_warehouse>);
recipes.addShaped(<enderio:block_inventory_chest_warehouse>, [
    [null, <enderio:item_material:68>, null],
    [<enderio:item_material:68>, <enderio:item_material:54>, <enderio:item_material:68>],
    [<actuallyadditions:block_giant_chest_large>, <enderio:block_inventory_chest_enormous>, <actuallyadditions:block_giant_chest_large>]
]);

//Inventory System Storage Extended Warehouse
recipes.remove(<enderio:block_inventory_chest_warehouse13>);
recipes.addShaped(<enderio:block_inventory_chest_warehouse13>, [
    [null, <enderio:item_material:68>, null],
    [<enderio:item_material:68>, <enderio:item_material:54>, <enderio:item_material:68>],
    [<actuallyadditions:block_giant_chest_large>, <enderio:block_inventory_chest_warehouse>, <actuallyadditions:block_giant_chest_large>]
]);

/* Machine Parts */
//Simple Machine Parts
recipes.remove(<enderio:item_material:69>);
recipes.addShaped(<enderio:item_material:69> * 16, [
    [<enderio:item_alloy_ingot:9>, <enderio:item_alloy_ingot:9>, <enderio:item_alloy_ingot:9>],
    [<enderio:item_alloy_ingot:9>, simpleChassis, <enderio:item_alloy_ingot:9>],
    [<enderio:item_alloy_ingot:9>, <enderio:item_alloy_ingot:9>, <enderio:item_alloy_ingot:9>]
]);

//Machine Parts
recipes.remove(<enderio:item_material:2>);
alloy(<enderio:item_material:2> * 16, [<enderio:item_material:69>*16, <enderio:item_material:1>, <moreplates:iron_alloy_plate>*8], 1000);

//Enhanced Machine Parts
recipes.remove(<enderio:item_material:68>);
alloy(<enderio:item_material:68> * 16, [<enderio:item_material:2>*16, <enderio:item_material:54>, <moreplates:iron_alloy_plate>*8], 1000);

//End Steel Chassis
recipes.remove(<enderio:item_material:66>);
alloy(<enderio:item_material:66>, [<enderio:item_alloy_ingot:8> * 4, <enderio:item_material:1>, <enderio:block_end_iron_bars> * 4], 2500);

//Enchanter
recipes.remove(<enderio:block_enchanter>);
recipes.addShaped(<enderio:block_enchanter>, [
    [<avaritia:resource>, <minecraft:book>, <avaritia:resource>],
    [<enderio:item_alloy_ingot:6>, <enderio:item_material:54>, <enderio:item_alloy_ingot:6>],
    [null, <enderio:block_alloy:6>, null]
]);

/* Capacitors */
//Grainy
recipes.remove(<enderio:item_capacitor_grainy>);
recipes.addShaped(<enderio:item_capacitor_grainy>, [
    [<moreplates:conductive_iron_plate>, <enderio:block_infinity>, <moreplates:conductive_iron_plate>]
]);

//Basic
recipes.remove(<enderio:item_basic_capacitor>);
recipes.addShaped(<enderio:item_basic_capacitor>, [
    [null, <thermalfoundation:material:225>, <enderio:item_capacitor_grainy>],
    [<thermalfoundation:material:225>, <ore:plateCopper>, null],
    [<enderio:item_capacitor_grainy>, <thermalfoundation:material:225>, <thermalfoundation:material:225>]
]);

//Double-layer
recipes.remove(<enderio:item_basic_capacitor:1>);
recipes.addShaped(<enderio:item_basic_capacitor:1>, [
    [null, <enderio:item_alloy_nugget:1>, <enderio:item_basic_capacitor>],
    [<enderio:item_alloy_nugget:1>, <moreplates:coal_plate>, <enderio:item_alloy_nugget:1>],
    [<enderio:item_basic_capacitor>, <enderio:item_alloy_nugget:1>, null]
]);

//Octadic
recipes.remove(<enderio:item_basic_capacitor:2>);
recipes.addShaped(<enderio:item_basic_capacitor:2>, [
    [null, <enderio:item_alloy_nugget:2>, <enderio:item_basic_capacitor:1>],
    [<enderio:item_alloy_nugget:2>, <moreplates:glowstone_plate>, <enderio:item_alloy_nugget:2>],
    [<enderio:item_basic_capacitor:1>, <enderio:item_alloy_nugget:2>, null]
]);

//Silver
recipes.remove(<enderio:item_capacitor_silver>);
recipes.addShaped(<enderio:item_capacitor_silver>, [
    [null, <thermalfoundation:material:194>, <enderio:item_basic_capacitor:2>],
    [<thermalfoundation:material:194>, <ore:plateLead>, <thermalfoundation:material:194>],
    [<enderio:item_basic_capacitor:2>, <thermalfoundation:material:194>, null]
]);

//Endergetic silver
recipes.remove(<enderio:item_capacitor_energetic_silver>);
recipes.addShaped(<enderio:item_capacitor_energetic_silver>, [
    [null, <enderio:item_alloy_endergy_nugget:5>, <enderio:item_capacitor_silver>],
    [<enderio:item_alloy_endergy_nugget:5>, <moreplates:coal_plate>, <enderio:item_alloy_endergy_nugget:5>],
    [<enderio:item_capacitor_silver>, <enderio:item_alloy_endergy_nugget:5>, null]
]);

//Endergised
recipes.remove(<enderio:item_capacitor_vivid>);
recipes.addShaped(<enderio:item_capacitor_vivid>, [
    [null, <enderio:item_alloy_endergy_nugget:6>, <enderio:item_capacitor_energetic_silver>],
    [<enderio:item_alloy_endergy_nugget:6>, <moreplates:glowstone_plate>, <enderio:item_alloy_endergy_nugget:6>],
    [<enderio:item_capacitor_energetic_silver>, <enderio:item_alloy_endergy_nugget:6>, null]
]);

//Crystalline
recipes.remove(<enderio:item_capacitor_crystalline>);
recipes.addShaped(<enderio:item_capacitor_crystalline>, [
    [null, <enderio:item_alloy_endergy_nugget:1>, <enderio:item_capacitor_vivid>],
    [<enderio:item_alloy_endergy_nugget:1>, <minecraft:prismarine>, <enderio:item_alloy_endergy_nugget:1>],
    [<enderio:item_capacitor_vivid>, <enderio:item_alloy_endergy_nugget:1>, null]
]);

//Melodic
recipes.remove(<enderio:item_capacitor_melodic>);
recipes.addShaped(<enderio:item_capacitor_melodic>, [
    [null, <enderio:item_alloy_endergy_nugget:2>, <enderio:item_capacitor_crystalline>],
    [<enderio:item_alloy_endergy_nugget:2>, <moreplates:end_steel_plate>, <enderio:item_alloy_endergy_nugget:2>],
    [<enderio:item_capacitor_crystalline>, <enderio:item_alloy_endergy_nugget:2>, null]
]);

//Totemic
recipes.remove(<enderio:item_capacitor_totemic>);
recipes.addShaped(<enderio:item_capacitor_totemic>, [
    [null, <enderio:item_alloy_nugget:8>, <enderio:item_capacitor_melodic>],
    [<enderio:item_alloy_nugget:8>, <minecraft:totem_of_undying>, <enderio:item_alloy_nugget:8>],
    [<enderio:item_capacitor_melodic>, <enderio:item_alloy_nugget:8>, null]
]);

//Stellar
recipes.remove(<enderio:item_capacitor_stellar>);
recipes.addShaped(<enderio:item_capacitor_stellar>, [
    [null, <enderio:item_alloy_endergy_nugget:3>, <enderio:item_capacitor_totemic>],
    [<enderio:item_alloy_endergy_nugget:3>, <deepmoblearning:pristine_matter_shulker>, <enderio:item_alloy_endergy_nugget:3>],
    [<enderio:item_capacitor_totemic>, <enderio:item_alloy_endergy_nugget:3>, null]
]);