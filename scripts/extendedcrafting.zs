/* Import */

import mods.pneumaticcraft.pressurechamber.addRecipe as chamber;
//chamber([Inputs], Int Pressure, [Output]);
import mods.enderio.AlloySmelter.addRecipe as alloy;
//alloy(Output, [Inputs], Energy);
import mods.thermalexpansion.InductionSmelter.addRecipe as smelter;
//smelter(Output, Input, Input, Energy);

/* ----- */

/* var */

var basicTable = <extendedcrafting:table_basic>;
var advancedTable = <extendedcrafting:table_advanced>;
var eliteTable = <extendedcrafting:table_elite>;
var ultimateTable = <extendedcrafting:table_ultimate>;
var blackIron = <extendedcrafting:material>;
var blackSlate = <extendedcrafting:material:2>;
var basicComponent = <extendedcrafting:material:14>;
var basicCatalyst = <extendedcrafting:material:8>;
var advancedComponent = <extendedcrafting:material:15>;
var advancedCatalyst = <extendedcrafting:material:9>;
var eliteComponent = <extendedcrafting:material:16>;
var eliteCatalyst = <extendedcrafting:material:10>;
var ultimateComponent = <extendedcrafting:material:17>;
var ultimateCatalyst = <extendedcrafting:material:11>;
var crystalComponent = <extendedcrafting:material:18>;
var crystalCatalyst = <extendedcrafting:material:12>;
var luminessence = <extendedcrafting:material:7>;
var blackIronTrim = <extendedcrafting:trimmed>;
var blackGoldTrim = <extendedcrafting:trimmed:1>;
var blackDiamondTrim = <extendedcrafting:trimmed:2>;
var blackEmeraldTrim = <extendedcrafting:trimmed:3>;
var blackCrystalTrim = <extendedcrafting:trimmed:4>;
var blackUltimateTrim = <extendedcrafting:trimmed:5>;
var crystaltine = <extendedcrafting:material:24>;
var ultimateIngot = <extendedcrafting:material:32>;
var theUltimateComponent = <extendedcrafting:material:19>;
var theUltimateCatalyst = <extendedcrafting:material:13>;
var infinityCatalyst = <avaritia:resource:5>;

/* ----- */

//Black Iron
recipes.remove(blackIron);
chamber([<pneumaticcraft:plastic> * 4, <extrautils2:ingredients:17>, <actuallyadditions:block_crystal_empowered:3>], 4.5, [blackIron * 2]);

/* Tables */
//Basic
recipes.remove(basicTable);

//Advanced
recipes.remove(advancedTable);

//Elite
recipes.remove(eliteTable);

//Ultimate
recipes.remove(ultimateTable);

//Luminessence
recipes.remove(luminessence);
recipes.addShaped(luminessence * 2, [
    [<mysticalagradditions:stuff:69>, <enderio:block_holier_fog>, <mysticalagradditions:stuff:69>],
    [<enderio:block_holier_fog>, <enderio:item_material:37>, <enderio:block_holier_fog>],
    [<mysticalagradditions:stuff:69>, <enderio:block_holier_fog>, <mysticalagradditions:stuff:69>]
]);

/* Components */
//Basic
recipes.remove(basicComponent);
alloy(basicComponent, [<tconstruct:ingots:4> * 2, luminessence, blackSlate], 5000);

//Advanced
recipes.remove(advancedComponent);
alloy(advancedComponent, [<extrautils2:ingredients:11> * 2, luminessence, basicComponent], 10000);

//Elite
recipes.remove(eliteComponent);
alloy(eliteComponent, [<bloodarsenal:blood_diamond:2> * 2, luminessence, advancedComponent], 15000);

//Ultimate
recipes.remove(ultimateComponent);
alloy(ultimateComponent, [<actuallyadditions:item_crystal_empowered:4> * 2, luminessence, eliteComponent], 20000);

//Crystaltine
recipes.remove(crystalComponent);
alloy(crystalComponent, [crystaltine * 2, luminessence, ultimateComponent], 25000);

//TheUltimate
recipes.remove(theUltimateComponent);
alloy(theUltimateComponent, [ultimateIngot * 2, luminessence, crystalComponent], 30000);

/* ----- */

/* Catalysts */
//Basic
recipes.remove(basicCatalyst);
smelter(basicCatalyst, blackIronTrim, basicComponent * 4, 5000);

//Advanced
recipes.remove(advancedCatalyst);
smelter(advancedCatalyst, blackGoldTrim, advancedComponent * 4, 10000);

//Elite
recipes.remove(eliteCatalyst);
smelter(eliteCatalyst, blackDiamondTrim, eliteComponent * 4, 15000);

//Ultimate
recipes.remove(ultimateCatalyst);
smelter(ultimateCatalyst, blackEmeraldTrim, ultimateComponent * 4, 20000);

//Crystaltine
recipes.remove(crystalCatalyst);
smelter(crystalCatalyst, blackCrystalTrim, crystalComponent * 4, 25000);

//The Ultimate
recipes.remove(theUltimateCatalyst);
smelter(theUltimateCatalyst, blackUltimateTrim, theUltimateComponent * 4, 30000);

/* ----- */

//Crystaltine
mods.extendedcrafting.TableCrafting.remove(crystaltine);
mods.extendedcrafting.TableCrafting.addShaped(3, crystaltine * 2, [
	[<ore:manaDiamond>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <mysticalagradditions:nether_star_essence>, <ore:ingotEnchantedMetal>, <ore:ingotGaiasteel>, <ore:ingotEnchantedMetal>, <mysticalagradditions:nether_star_essence>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <mysticalagradditions:nether_star_essence>, <ore:ingotEnchantedMetal>, <ore:ingotGaiasteel>, <ore:ingotEnchantedMetal>, <mysticalagradditions:nether_star_essence>, <ore:manaDiamond>], 
	[<ore:manaDiamond>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <ore:manaDiamond>], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null]
]);

/* Singularity */
//Remove
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:*>);

//Coal
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity>, <minecraft:coal_block>, 10000, crystalCatalyst, 50000000);

//Iron
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:1>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:1>, <minecraft:iron_block>, 10000, crystalCatalyst, 50000000);

//Lapis
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:2>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:2>, <minecraft:lapis_block>, 10000, crystalCatalyst, 50000000);

//Redstone
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:3>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:3>, <minecraft:redstone_block>, 10000, crystalCatalyst, 50000000);

//Glowstone
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:4>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:4>, <minecraft:glowstone>, 10000, crystalCatalyst, 50000000);

//Gold
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:5>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:5>, <minecraft:gold_block>, 10000, crystalCatalyst, 50000000);

//Diamond
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:6>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:6>, <minecraft:diamond_block>, 10000, crystalCatalyst, 50000000);

//Emerald
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:7>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:7>, <minecraft:emerald_block>, 10000, crystalCatalyst, 50000000);

//Aluminum
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:16>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:16>, <thermalfoundation:storage:4>, 10000, crystalCatalyst, 50000000);

//Copper
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:17>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:17>, <thermalfoundation:storage>, 10000, crystalCatalyst, 50000000);

//Tin
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:18>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:18>, <thermalfoundation:storage:1>, 10000, crystalCatalyst, 50000000);

//Bronze
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:19>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:19>, <thermalfoundation:storage_alloy:3>, 10000, crystalCatalyst, 50000000);

//Silver
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:22>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:22>, <thermalfoundation:storage:2>, 10000, crystalCatalyst, 50000000);

//Lead
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:23>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:23>, <thermalfoundation:storage:3>, 10000, crystalCatalyst, 50000000);

//Steel
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:24>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:24>, <thermalfoundation:storage_alloy>, 10000, crystalCatalyst, 50000000);

//Nickel
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:25>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:25>, <thermalfoundation:storage:5>, 10000, crystalCatalyst, 50000000);

//Constantan
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:26>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:26>, <thermalfoundation:storage_alloy:4>, 10000, crystalCatalyst, 50000000);

//Electrum
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:27>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:27>, <thermalfoundation:storage_alloy:1>, 10000, crystalCatalyst, 50000000);

//Invar
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:28>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:28>, <thermalfoundation:storage_alloy:2>, 10000, crystalCatalyst, 50000000);

//Mithril
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:29>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:29>, <thermalfoundation:storage:8>, 10000, crystalCatalyst, 50000000);

//Uranium
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:32>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:32>, <immersiveengineering:storage:5>, 10000, crystalCatalyst, 50000000);

//Platinum
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:34>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:34>, <thermalfoundation:storage:6>, 10000, crystalCatalyst, 50000000);

//Iridium
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:35>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:35>, <thermalfoundation:storage:7>, 10000, crystalCatalyst, 50000000);

//Signalum
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:48>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:48>, <thermalfoundation:storage_alloy:5>, 10000, crystalCatalyst, 50000000);

//Lumium
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:49>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:49>, <thermalfoundation:storage_alloy:6>, 10000, crystalCatalyst, 50000000);

//Enderium
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:50>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:50>, <thermalfoundation:storage_alloy:7>, 10000, crystalCatalyst, 50000000);

//Ardite
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:64>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:64>, <tconstruct:metal:1>, 10000, crystalCatalyst, 50000000);

//Cobalt
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:65>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:65>, <chisel:blockcobalt>, 10000, crystalCatalyst, 50000000);

//Manyullyn
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:66>);
mods.extendedcrafting.CompressionCrafting.addRecipe(<extendedcrafting:singularity:66>, <tconstruct:metal:2>, 10000, crystalCatalyst, 50000000);

//Zinc
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:20>);

//Brass
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:21>);

//Tungsten
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:30>);

//Titanium
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:31>);

//Chrome
mods.extendedcrafting.CompressionCrafting.remove(<extendedcrafting:singularity:33>);

//Ultimate Singularity
mods.extendedcrafting.TableCrafting.remove(<extendedcrafting:singularity_ultimate>);
mods.extendedcrafting.TableCrafting.addShaped(4, <extendedcrafting:singularity_ultimate>, [
	[<extendedcrafting:singularity>, <extendedcrafting:singularity:1>, <extendedcrafting:singularity:2>, <extendedcrafting:singularity:3>, <extendedcrafting:singularity:4>, <extendedcrafting:singularity:5>, <extendedcrafting:singularity:6>, <extendedcrafting:singularity:7>, <extendedcrafting:singularity:16>], 
	[<extendedcrafting:singularity:17>, <extendedcrafting:singularity:18>, <extendedcrafting:singularity:19>, <extendedcrafting:singularity:22>, <extendedcrafting:singularity:23>, <extendedcrafting:singularity:24>, <extendedcrafting:singularity:25>, <extendedcrafting:singularity:26>, <extendedcrafting:singularity:27>], 
	[<extendedcrafting:singularity:28>, <extendedcrafting:singularity:29>, <extendedcrafting:singularity:32>, <extendedcrafting:singularity:34>, <extendedcrafting:singularity:35>, <extendedcrafting:singularity:48>, <extendedcrafting:singularity:49>, <extendedcrafting:singularity:50>, <extendedcrafting:singularity:64>], 
	[<extendedcrafting:singularity:65>, <extendedcrafting:singularity:66>, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

//Ultimate Ingot
mods.extendedcrafting.TableCrafting.remove(ultimateIngot);
mods.extendedcrafting.TableCrafting.addShaped(4, ultimateIngot, [
	[<ore:ingotIron>, <ore:ingotGold>, <ore:ingotAstralStarmetal>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, <bloodarsenal:base_item:3>, <ore:ingotBloodInfusedIron>, <ore:ingotManasteel>, <ore:ingotTerrasteel>], 
	[<ore:ingotElvenElementium>, <ore:ingotGaia>, <ore:ingotGaiasteel>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotDraconium>, <ore:ingotDraconiumAwakened>, <ore:ingotDawnstone>, <ore:ingotElectricalSteel>, <ore:ingotEnergeticAlloy>], 
	[<ore:ingotVibrantAlloy>, <ore:ingotRedstoneAlloy>, <ore:ingotConductiveIron>, <ore:ingotPulsatingIron>, <ore:ingotDarkSteel>, <ore:ingotSoularium>, <ore:ingotEndSteel>, <ore:ingotConstructionAlloy>, <ore:ingotEnderiumBase>], 
	[<ore:ingotBrickNetherGlazed>, <ore:ingotCrudeSteel>, <ore:ingotCrystallineAlloy>, <ore:ingotMelodicAlloy>, <ore:ingotStellarAlloy>, <ore:ingotCrystallinePinkSlime>, <ore:ingotEnergeticSilver>, <ore:ingotVividAlloy>, <ore:ingotBlackIron>], 
	[<ore:ingotCrystaltine>, <extendedcrafting:material:36>, <extendedcrafting:material:48>, <ore:ingotDemonicMetal>, <ore:ingotEnchantedMetal>, <ore:ingotEvilMetal>, <ore:ingotHOPGraphite>, <ore:ingotUranium>, <industrialforegoing:pink_slime_ingot>], 
	[<ore:ingotRefinedObsidian>, <ore:ingotOsmium>, <ore:ingotRefinedGlowstone>, <ore:ingotInsanium>, <ore:ingotBaseEssence>, <ore:ingotInferium>, <ore:ingotPrudentium>, <ore:ingotIntermedium>, <ore:ingotSuperium>], 
	[<ore:ingotSupremium>, <ore:ingotSoulium>, <ore:ingotIronCompressed>, <randomthings:ingredient:3>, <ore:ingotIronwood>, <ore:ingotFiery>, <ore:ingotKnightmetal>, <ore:ingotCopper>, <ore:ingotTin>], 
	[<ore:ingotSilver>, <ore:ingotLead>, <ore:ingotAluminum>, <ore:ingotNickel>, <ore:ingotPlatinum>, <ore:ingotIridium>, <ore:ingotMithril>, <ore:ingotSteel>, <ore:ingotElectrum>], 
	[<ore:ingotInvar>, <ore:ingotBronze>, <ore:ingotConstantan>, <ore:ingotSignalum>, <ore:ingotLumium>, <ore:ingotEnderium>, <ore:ingotCobalt>, <ore:ingotArdite>, <ore:ingotManyullyn>]
]);

//Infinity Catalyst
mods.extendedcrafting.TableCrafting.remove(infinityCatalyst);
mods.extendedcrafting.TableCrafting.addShaped(4, infinityCatalyst, [
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, <ore:blockGaiasteel>, <avaritia:cosmic_meatballs>, <ore:blockNetherStar>, null, null, null], 
	[null, null, <extendedcrafting:storage:6>, null, <ore:ingotUltimate>, null, <ore:blockBlackIron>, null, null], 
	[null, null, <avaritia:endest_pearl>, <ore:ingotUltimate>, <extendedcrafting:singularity_ultimate>, <ore:ingotUltimate>, <avaritia:ultimate_stew>, null, null], 
	[null, null, <extendedcrafting:storage:7>, null, <ore:ingotUltimate>, null, <environmentaltech:aethium>, null, null], 
	[null, null, null, <ore:blockCrystalMatrix>, <avaritia:resource:7>, <ore:blockCosmicNeutronium>, null, null, null], 
	[null, null, null, null, null, null, null, null, null], 
	[null, null, null, null, null, null, null, null, null]
]);

//Quantum Compressor
recipes.remove(<extendedcrafting:compressor>);
mods.extendedcrafting.TableCrafting.addShaped(4, <extendedcrafting:compressor>, [
	[<extendedcrafting:material:13>, <extendedcrafting:material:13>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <extendedcrafting:material:13>, <extendedcrafting:material:13>], 
	[<extendedcrafting:material:13>, <ore:ingotBlackIron>, <extendedcrafting:material:8>, <extendedcrafting:material:8>, <ore:ingotBlackIron>, <extendedcrafting:material:9>, <extendedcrafting:material:9>, <ore:ingotBlackIron>, <extendedcrafting:material:13>], 
	[<ore:ingotBlackIron>, <extendedcrafting:material:8>, <extendedcrafting:material:12>, <bloodmagic:slate:4>, <ore:ingotBlackIron>, <bloodmagic:slate:4>, <extendedcrafting:material:12>, <extendedcrafting:material:9>, <ore:ingotBlackIron>], 
	[<ore:ingotBlackIron>, <extendedcrafting:material:8>, <bloodmagic:slate:4>, <bloodmagic:slate:4>, <ore:ingotBlackIron>, <bloodmagic:slate:4>, <bloodmagic:slate:4>, <extendedcrafting:material:9>, <ore:ingotBlackIron>], 
	[<ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:compressed8xCobblestone>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>], 
	[<ore:ingotBlackIron>, <extendedcrafting:material:11>, <bloodmagic:slate:4>, <bloodmagic:slate:4>, <ore:ingotBlackIron>, <bloodmagic:slate:4>, <bloodmagic:slate:4>, <extendedcrafting:material:10>, <ore:ingotBlackIron>], 
	[<ore:ingotBlackIron>, <extendedcrafting:material:11>, <extendedcrafting:material:12>, <bloodmagic:slate:4>, <ore:ingotBlackIron>, <bloodmagic:slate:4>, <extendedcrafting:material:12>, <extendedcrafting:material:10>, <ore:ingotBlackIron>], 
	[<extendedcrafting:material:13>, <ore:ingotBlackIron>, <extendedcrafting:material:11>, <extendedcrafting:material:11>, <ore:ingotBlackIron>, <extendedcrafting:material:10>, <extendedcrafting:material:10>, <ore:ingotBlackIron>, <extendedcrafting:material:13>], 
	[<extendedcrafting:material:13>, <extendedcrafting:material:13>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <ore:ingotBlackIron>, <extendedcrafting:material:13>, <extendedcrafting:material:13>]
]);

//Ender Ingot
recipes.remove(<extendedcrafting:material:36>);
recipes.addShaped(<extendedcrafting:material:36>, [
	[<extrautils2:ingredients:17>, <botania:manaresource:1>]
]);

//Ender Star
mods.extendedcrafting.EnderCrafting.remove(<extendedcrafting:material:40>);
mods.extendedcrafting.EnderCrafting.addShaped(<extendedcrafting:material:40>, [
	[null, <botania:foresteye>, null], 
	[<botania:foresteye>, <woot:shard:3>, <botania:foresteye>], 
	[null, <botania:foresteye>, null]], 
	30);

//Ender Crafter
recipes.remove(<extendedcrafting:ender_crafter>);
recipes.addShaped(<extendedcrafting:ender_crafter>, [
	[<extrautils2:ingredients:2>, <extrautils2:ingredients:2>, <extrautils2:ingredients:2>],
	[<extendedcrafting:material:36>, <avaritia:double_compressed_crafting_table>, <extendedcrafting:material:36>],
	[<extendedcrafting:material:36>, <thermalfoundation:storage_alloy:7>, <extendedcrafting:material:36>]
]);

//Ender Alternator
recipes.remove(<extendedcrafting:ender_alternator>);
mods.extendedcrafting.EnderCrafting.addShaped(<extendedcrafting:material:40> * 2, [
	[null, <extrautils2:ingredients:2>, null], 
	[null, <enderio:item_material:39>, null], 
	[<enderio:item_material:39>, <enderio:item_material:39>, <enderio:item_material:39>]], 
	30);