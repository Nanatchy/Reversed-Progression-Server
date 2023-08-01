/* Import */
import mods.industrialforegoing.SludgeRefiner.add as refiner; 

/* Var */
var case = <teslacorelib:machine_case>;
var plastic = <industrialforegoing:plastic>;
var book = <minecraft:book>;

/* Machines */
//Petrified Fuel Generator
recipes.remove(<industrialforegoing:petrified_fuel_generator>);
recipes.addShaped(<industrialforegoing:petrified_fuel_generator>, [
    [plastic, <botania:manaresource:2>, plastic],
    [<thermalfoundation:material:25>, case, <thermalfoundation:material:25>],
    [plastic, <minecraft:furnace>, plastic]
]);

//Enchantment Sorter
recipes.remove(<industrialforegoing:enchantment_refiner>);
recipes.addShaped(<industrialforegoing:enchantment_refiner>, [
    [plastic, <rftools:infused_enderpearl>, plastic],
    [<minecraft:book>, case, <minecraft:enchanted_book>],
    [plastic, <thermalfoundation:material:26>, plastic]
]);

//Enchantment Extractor
recipes.remove(<industrialforegoing:enchantment_extractor>);
recipes.addShaped(<industrialforegoing:enchantment_extractor>, [
    [plastic, <quark:charred_nether_bricks>, plastic],
    [<minecraft:book>, case, <minecraft:book>],
    [<botania:manaresource:2>, <thermalfoundation:material:25>, <botania:manaresource:2>]
]);

//Enchantment Applicator
recipes.remove(<industrialforegoing:enchantment_aplicator>);
recipes.addShaped(<industrialforegoing:enchantment_aplicator>, [
    [plastic, plastic, plastic],
    [<enderio:block_dark_steel_anvil>, case, <enderio:block_dark_steel_anvil>],
    [<moreplates:quartz_enriched_iron_gear>, <woot:anvil>, <moreplates:quartz_enriched_iron_gear>]
]);

//Mob Crusher
recipes.remove(<industrialforegoing:mob_relocator>);
recipes.addShaped(<industrialforegoing:mob_relocator>, [
    [plastic, <minecraft:diamond_sword>, plastic],
    [book, case, book],
    [<thermalfoundation:material:25>, <enderio:item_alloy_ingot:3>, <thermalfoundation:material:25>]
]);

//Potion Brewer
recipes.removeByRecipeName("industrialforegoing:potion_enervator_thermal");
recipes.removeByRecipeName("industrialforegoing:potion_enervator_mekanism");
recipes.removeByRecipeName("industrialforegoing:potion_enervator_enderio");

//Animal Baby Separator
recipes.remove(<industrialforegoing:animal_independence_selector>);
recipes.addShaped(<industrialforegoing:animal_independence_selector>, [
    [plastic, <minecraft:emerald>, plastic],
    [<moreplates:emerald_plate>, case, <moreplates:emerald_plate>],
    [<ore:dyePurple>, <thermalfoundation:material:25>, <ore:dyePurple>]
]);

//Animal Feeder
recipes.remove(<industrialforegoing:animal_stock_increaser>);
recipes.addShaped(<industrialforegoing:animal_stock_increaser>, [
    [plastic, <minecraft:golden_apple:1>, plastic],
    [<minecraft:golden_carrot>, case, <minecraft:golden_carrot>],
    [<ore:dyePurple>, <moreplates:quartz_enriched_iron_gear>, <ore:dyePurple>]
]);

//Plant Sower
recipes.remove(<industrialforegoing:crop_sower>);
recipes.addShaped(<industrialforegoing:crop_sower>, [
    [plastic, <bonsaitrees:bonsaipot:1>, plastic],
    [<minecraft:piston>, case, <minecraft:piston>],
    [<moreplates:quartz_enriched_iron_gear>, <enderio:item_alloy_ingot:3>, <moreplates:quartz_enriched_iron_gear>]
]);

//Plant Fertilizer
recipes.remove(<industrialforegoing:crop_enrich_material_injector>);
recipes.addShaped(<industrialforegoing:crop_enrich_material_injector>, [
    [plastic, <minecraft:potion>.withTag({Potion: "minecraft:water"}), plastic],
    [<harvestcraft:hardenedleatheritem>, case, <harvestcraft:hardenedleatheritem>],
    [<moreplates:quartz_enriched_iron_gear>, <enderio:item_alloy_ingot:3>, <moreplates:quartz_enriched_iron_gear>]
]);

//Plant Gatherer
recipes.remove(<industrialforegoing:crop_recolector>);
recipes.addShaped(<industrialforegoing:crop_recolector>, [
    [plastic, <minecraft:diamond_hoe>, plastic],
    [<minecraft:diamond_axe>, case, <minecraft:diamond_axe>],
    [<moreplates:insanium_gear>, <enderio:item_alloy_ingot:3>, <moreplates:insanium_gear>]
]);

//Black Hole Unit
recipes.remove(<industrialforegoing:black_hole_unit>);
recipes.addShaped(<industrialforegoing:black_hole_unit>, [
    [plastic, plastic, plastic],
    [<extrautils2:ingredients:2>, <botania:manaresource:1>, <extrautils2:ingredients:2>],
    [<actuallyadditions:block_giant_chest_large>, case, <actuallyadditions:block_giant_chest_large>]
]);

//Black Hole Tank
recipes.remove(<industrialforegoing:black_hole_tank>);
recipes.addShaped(<industrialforegoing:black_hole_tank>, [
    [plastic, plastic, plastic],
    [<mob_grinding_utils:tank>, <botania:manaresource:1>, <mob_grinding_utils:tank>],
    [<actuallyadditions:block_giant_chest_large>, case, <actuallyadditions:block_giant_chest_large>]
]);

//Water Condensator
recipes.removeByRecipeName("industrialforegoing:water_condensator_thermal");
recipes.removeByRecipeName("industrialforegoing:water_condensator_mekanism");
recipes.removeByRecipeName("industrialforegoing:water_condensator_enderio");

//Resources Fisher
recipes.removeByRecipeName("industrialforegoing:water_resources_collector_thermal");
recipes.removeByRecipeName("industrialforegoing:water_resources_collector_mekanism");
recipes.removeByRecipeName("industrialforegoing:water_resources_collector_enderio");

//Animal Rancher
recipes.removeByRecipeName("industrialforegoing:animal_resource_harvester_thermal");
recipes.removeByRecipeName("industrialforegoing:animal_resource_harvester_mekanism");
recipes.removeByRecipeName("industrialforegoing:animal_resource_harvester_enderio");

//Mob Slaughter Factory
recipes.remove(<industrialforegoing:mob_slaughter_factory>);
recipes.addShaped(<industrialforegoing:mob_slaughter_factory>, [
    [plastic, <moreplates:empowered_enori_gear>, plastic],
    [<minecraft:diamond_sword>, case, <minecraft:diamond_sword>],
    [<minecraft:diamond_axe>, <enderio:item_alloy_ingot:3>, <minecraft:diamond_axe>]
]);

//Mob Duplicator
recipes.remove(<industrialforegoing:mob_duplicator>);
recipes.addShaped(<industrialforegoing:mob_duplicator>, [
    [plastic, <minecraft:nether_wart_block>, plastic],
    [<tconstruct:materials:11>, case, <tconstruct:materials:11>],
    [<moreplates:emerald_plate>, <enderio:item_alloy_ingot:3>, <moreplates:emerald_plate>]
]);

//Block Breaker
recipes.remove(<industrialforegoing:block_destroyer>);
recipes.addShaped(<industrialforegoing:block_destroyer>, [
    [plastic, <thermalfoundation:material:25>, plastic],
    [<minecraft:diamond_pickaxe>, case, <minecraft:diamond_shovel>  ],
    [<moreplates:quartz_enriched_iron_gear>, <enderio:item_alloy_ingot:3>, <moreplates:quartz_enriched_iron_gear>]
]);

//Block Placer
recipes.remove(<industrialforegoing:block_placer>);
recipes.addShaped(<industrialforegoing:block_placer>, [
    [plastic, <minecraft:dropper>, plastic],
    [<minecraft:dropper>, case, <minecraft:dropper>],
    [plastic, <enderio:item_alloy_ingot:3>, plastic]
]);

//Tree Fluid Extractor
recipes.remove(<industrialforegoing:tree_fluid_extractor>);
recipes.addShaped(<industrialforegoing:tree_fluid_extractor>, [
    [<botania:manaresource:8>, <enderio:item_alloy_ingot:3>, <botania:manaresource:8>],
    [<botania:shimmerrock>, <thermalexpansion:machine>, <botania:shimmerrock>],
    [<botania:shimmerrock>, <moreplates:quartz_enriched_iron_gear>, <botania:shimmerrock>]
]);

//Latex Processing Unit
recipes.remove(<industrialforegoing:latex_processing_unit>);
recipes.addShaped(<industrialforegoing:latex_processing_unit>, [
    [<extendedcrafting:material>, <enderio:item_alloy_ingot:3>, <extendedcrafting:material>],
    [<thermalexpansion:machine>, case, <thermalexpansion:machine>],
    [<extendedcrafting:material>, <moreplates:quartz_enriched_iron_gear>, <extendedcrafting:material>]
]);

//Sewage Composter
recipes.remove(<industrialforegoing:sewage_composter_solidifier>);
recipes.addShaped(<industrialforegoing:sewage_composter_solidifier>, [
    [plastic, <thermalexpansion:machine>, plastic],
    [<minecraft:piston>, case, <minecraft:piston>],
    [<embers:archaic_brick>, <enderio:item_alloy_ingot:3>, <embers:archaic_brick>]
]);

//Animal Sewer
recipes.remove(<industrialforegoing:animal_byproduct_recolector>);
recipes.addShaped(<industrialforegoing:animal_byproduct_recolector>, [
    [plastic, <minecraft:bucket>, plastic],
    [<embers:archaic_brick>, case, <embers:archaic_brick>],
    [<embers:archaic_brick>, <enderio:item_alloy_ingot:3>, <embers:archaic_brick>]
]);

//Sludge Refiner
recipes.remove(<industrialforegoing:sludge_refiner>);
recipes.addShaped(<industrialforegoing:sludge_refiner>, [
    [<pneumaticcraft:plastic>, <minecraft:bucket>, <pneumaticcraft:plastic>],
    [<thermalexpansion:machine>, case, <thermalexpansion:machine>],
    [<moreplates:quartz_enriched_iron_gear>, <thermalfoundation:material:295>, <moreplates:quartz_enriched_iron_gear>]
]);

//Mob Detector
recipes.removeByRecipeName("industrialforegoing:mob_detector_thermal");
recipes.removeByRecipeName("industrialforegoing:mob_detector_mekanism");
recipes.removeByRecipeName("industrialforegoing:mob_detector_enderio");

//Lava Fabricator
recipes.removeByRecipeName("industrialforegoing:lava_fabricator_thermal");
recipes.removeByRecipeName("industrialforegoing:lava_fabricator_mekanism");
recipes.removeByRecipeName("industrialforegoing:lava_fabricator_enderio");

//Bioreactor
recipes.removeByRecipeName("industrialforegoing:bioreactor_thermal");
recipes.removeByRecipeName("industrialforegoing:bioreactor_mekanism");
recipes.removeByRecipeName("industrialforegoing:bioreactor_enderio");

//Biofuel Generator
recipes.removeByRecipeName("industrialforegoing:biofuel_generator_thermal");
recipes.removeByRecipeName("industrialforegoing:biofuel_generator_mekanism");
recipes.removeByRecipeName("industrialforegoing:biofuel_generator_enderio");

//Laser Base
recipes.remove(<industrialforegoing:laser_base>);
recipes.addShaped(<industrialforegoing:laser_base>, [
    [plastic, <mekanism:ingot:3>, plastic],
    [<thermalfoundation:material:25>, <mekanism:ingot:3>, <thermalfoundation:material:25>],
    [<moreplates:empowered_diamatine_gear>, case, <moreplates:empowered_diamatine_gear>]
]);

//Laser Drill
recipes.remove(<industrialforegoing:laser_drill>);
recipes.addShaped(<industrialforegoing:laser_drill>, [
    [plastic, <industrialforegoing:laser_lens>, plastic],
    [<ore:blockGlassColorless>, <mekanism:ingot:3>, <ore:blockGlassColorless>],
    [<moreplates:empowered_diamatine_gear>, case, <moreplates:empowered_diamatine_gear>]
]);

//Ore Processor
recipes.removeByRecipeName("industrialforegoing:ore_processor_thermal");
recipes.removeByRecipeName("industrialforegoing:ore_processor_mekanism");
recipes.removeByRecipeName("industrialforegoing:ore_processor_enderio");

//Black Hole Controller V2
recipes.removeByRecipeName("industrialforegoing:black_hole_controller_reworked_thermal");
recipes.removeByRecipeName("industrialforegoing:black_hole_controller_reworked_mekanism");
recipes.removeByRecipeName("industrialforegoing:black_hole_controller_reworked_enderio");

//Dye Mixer
recipes.removeByRecipeName("industrialforegoing:dye_mixer_thermal");
recipes.removeByRecipeName("industrialforegoing:dye_mixer_mekanism");
recipes.removeByRecipeName("industrialforegoing:dye_mixer_enderio");

//Enchantment Factory
recipes.removeByRecipeName("industrialforegoing:enchantment_invoker_thermal");
recipes.removeByRecipeName("industrialforegoing:enchantment_invoker_mekanism");
recipes.removeByRecipeName("industrialforegoing:enchantment_invoker_enderio");

//Spores Recreator
recipes.removeByRecipeName("industrialforegoing:spores_recreator_thermal");
recipes.removeByRecipeName("industrialforegoing:spores_recreator_mekanism");
recipes.removeByRecipeName("industrialforegoing:spores_recreator_enderio");

//Animal Grower
recipes.removeByRecipeName("industrialforegoing:animal_growth_increaser_thermal");
recipes.removeByRecipeName("industrialforegoing:animal_growth_increaser_mekanism");
recipes.removeByRecipeName("industrialforegoing:animal_growth_increaser_enderio");

//Material Stonework Factory
recipes.remove(<industrialforegoing:material_stonework_factory>);
recipes.addShaped(<industrialforegoing:material_stonework_factory>, [
    [plastic, <avaritia:compressed_crafting_table>, plastic],
    [<minecraft:diamond_pickaxe>, case, <thermalexpansion:machine>],
    [<bloodmagic:sigil_lava>, <industrialforegoing:pink_slime>, <bloodmagic:sigil_water>]
]);

//Black Hole Tank
recipes.removeByRecipeName("industrialforegoing:black_hole_tank_thermal");
recipes.removeByRecipeName("industrialforegoing:black_hole_tank_mekanism");
recipes.removeByRecipeName("industrialforegoing:black_hole_tank_enderio");

//Resourceful Generator
recipes.removeByRecipeName("industrialforegoing:resourceful_furnace_thermal");
recipes.removeByRecipeName("industrialforegoing:resourceful_furnace_mekanism");
recipes.removeByRecipeName("industrialforegoing:resourceful_furnace_enderio");

//Villager Trade Exchanger
recipes.removeByRecipeName("industrialforegoing:villager_trade_exchanger_thermal");
recipes.removeByRecipeName("industrialforegoing:villager_trade_exchanger_mekanism");
recipes.removeByRecipeName("industrialforegoing:villager_trade_exchanger_enderio");

//Energy Field Provider
recipes.removeByRecipeName("industrialforegoing:energy_field_provider_thermal");
recipes.removeByRecipeName("industrialforegoing:energy_field_provider_mekanism");
recipes.removeByRecipeName("industrialforegoing:energy_field_provider_enderio");

//Ore Dictionary Converter
recipes.removeByRecipeName("industrialforegoing:oredictionary_converter_thermal");
recipes.removeByRecipeName("industrialforegoing:oredictionary_converter_mekanism");
recipes.removeByRecipeName("industrialforegoing:oredictionary_converter_enderio");

//Protein Reactor
recipes.removeByRecipeName("industrialforegoing:protein_reactor_thermal");
recipes.removeByRecipeName("industrialforegoing:protein_reactor_mekanism");
recipes.removeByRecipeName("industrialforegoing:protein_reactor_enderio");

//Hydrator
recipes.remove(<industrialforegoing:hydrator>);
recipes.addShaped(<industrialforegoing:hydrator>, [
    [plastic, <bloodmagic:sigil_water>, plastic],
    [<industrialforegoing:fertilizer>, case, <industrialforegoing:fertilizer>],
    [<moreplates:quartz_enriched_iron_gear>, <minecraft:piston>, <moreplates:quartz_enriched_iron_gear>]
]);

//Wither Builder
recipes.removeByRecipeName("industrialforegoing:wither_builder_thermal");
recipes.removeByRecipeName("industrialforegoing:wither_builder_mekanism");
recipes.removeByRecipeName("industrialforegoing:wither_builder_enderio");

//Fluid Pump
recipes.removeByRecipeName("industrialforegoing:fluid_pump_thermal");
recipes.removeByRecipeName("industrialforegoing:fluid_pump_mekanism");
recipes.removeByRecipeName("industrialforegoing:fluid_pump_enderio");

//Fluid Crafter
recipes.removeByRecipeName("industrialforegoing:fluid_crafter_thermal");
recipes.removeByRecipeName("industrialforegoing:fluid_crafter_mekanism");
recipes.removeByRecipeName("industrialforegoing:fluid_crafter_enderio");

//Plant Interactor
recipes.remove(<industrialforegoing:plant_interactor>);
recipes.addShaped(<industrialforegoing:plant_interactor>, [
    [plastic, <enderio:block_farm_station>.withTag({}), plastic],
    [<minecraft:diamond_hoe>, case, <minecraft:diamond_hoe>],
    [<moreplates:insanium_gear>, <enderio:item_alloy_ingot:3>, <moreplates:insanium_gear>]
]);

//Item Splitter
recipes.removeByRecipeName("industrialforegoing:item_splitter_thermal");
recipes.removeByRecipeName("industrialforegoing:item_splitter_mekanism");
recipes.removeByRecipeName("industrialforegoing:item_splitter_enderio");

//Fluid Dictionary Converter
recipes.removeByRecipeName("industrialforegoing:fluiddictionary_converter_thermal");
recipes.removeByRecipeName("industrialforegoing:fluiddictionary_converter_mekanism");
recipes.removeByRecipeName("industrialforegoing:fluiddictionary_converter_enderio");

//Froster
recipes.removeByRecipeName("industrialforegoing:froster_thermal");
recipes.removeByRecipeName("industrialforegoing:froster_mekanism");
recipes.removeByRecipeName("industrialforegoing:froster_enderio");

//Washing Factory
recipes.removeByRecipeName("industrialforegoing:ore_washer_thermal");
recipes.removeByRecipeName("industrialforegoing:ore_washer_mekanism");
recipes.removeByRecipeName("industrialforegoing:ore_washer_enderio");

//Fermentation Station
recipes.removeByRecipeName("industrialforegoing:ore_fermenter_thermal");
recipes.removeByRecipeName("industrialforegoing:ore_fermenter_mekanism");
recipes.removeByRecipeName("industrialforegoing:ore_fermenter_enderio");

//Fluid Sieving Machine
recipes.removeByRecipeName("industrialforegoing:ore_sieve_thermal");
recipes.removeByRecipeName("industrialforegoing:ore_sieve_mekanism");
recipes.removeByRecipeName("industrialforegoing:ore_sieve_enderio");

//Pitiful Fuel Generator
recipes.remove(<industrialforegoing:pitiful_fuel_generator>);

/* Recipes */
//Bedrock (Sludge Refiner)
refiner(<minecraft:bedrock>, 2);