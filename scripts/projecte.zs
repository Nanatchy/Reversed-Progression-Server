/* Import */
import mods.thermalexpansion.InductionSmelter.addRecipe as smelter;
//mods.thermalexpansion.InductionSmelter.addRecipe(IItemStack primaryOutput, IItemStack primaryInput, IItemStack secondaryInput, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
import mods.immersiveengineering.MetalPress.addRecipe as press;
//mods.immersiveengineering.MetalPress.addRecipe(IItemStack output, IIngredient input, IItemStack mold, int energy, @Optional int inputSize);

/* Var */
var darkMatter = <projecte:item.pe_matter>;
var redMatter = <projecte:item.pe_matter:1>;
var magentaMatter = <projectex:matter>;
var pinkMatter = <projectex:matter:1>;
var purpleMatter = <projectex:matter:2>;
var violetMatter = <projectex:matter:3>;
var blueMatter = <projectex:matter:4>;
var cyanMatter = <projectex:matter:5>;
var greenMatter = <projectex:matter:6>;
var limeMatter = <projectex:matter:7>;
var yellowMatter = <projectex:matter:8>;
var orangeMatter = <projectex:matter:9>;
var whiteMatter = <projectex:matter:10>;
var fadingMatter = <projectex:matter:11>;
var aeternalis = <projecte:item.pe_fuel:2>;

var basicCollector = <projectex:collector>;
var darkCollector = <projectex:collector:1>;
var redCollector = <projectex:collector:2>;
var magentaCollector = <projectex:collector:3>;
var pinkCollector = <projectex:collector:4>;
var purpleCollector = <projectex:collector:5>;
var violetCollector = <projectex:collector:6>;
var blueCollector = <projectex:collector:7>;
var cyanCollector = <projectex:collector:8>;
var greenCollector = <projectex:collector:9>;
var limeCollector = <projectex:collector:10>;
var yellowCollector = <projectex:collector:11>;
var orangeCollector = <projectex:collector:12>;
var whiteCollector = <projectex:collector:13>;
var fadingCollector = <projectex:collector:14>;
var finalCollector = <projectex:collector:15>;

var basicRelay = <projectex:relay>;
var darkRelay = <projectex:relay:1>;
var redRelay = <projectex:relay:2>;
var magentaRelay = <projectex:relay:3>;
var pinkRelay = <projectex:relay:4>;
var purpleRelay = <projectex:relay:5>;
var violetRelay = <projectex:relay:6>;
var blueRelay = <projectex:relay:7>;
var cyanRelay = <projectex:relay:8>;
var greenRelay = <projectex:relay:9>;
var limeRelay = <projectex:relay:10>;
var yellowRelay = <projectex:relay:11>;
var orangeRelay = <projectex:relay:12>;
var whiteRelay = <projectex:relay:13>;
var fadingRelay = <projectex:relay:14>;

var starShard = <projectex:final_star_shard>;
var finalStar = <projectex:final_star>;
var alchemicalChest = <projecte:alchemical_chest>;
var energyCondenser = <projecte:condenser_mk1>;
var energyCondenser2 = <projecte:condenser_mk2>;
var transmuTable = <projecte:transmutation_table>;


//Philosopher Stone
recipes.remove(<projecte:item.pe_philosophers_stone>);
mods.extendedcrafting.TableCrafting.addShaped(4, <projecte:item.pe_philosophers_stone>, [
	[null, null, <ore:ingotCrystallinePinkSlime>, <ore:ingotCrystallinePinkSlime>, <ore:ingotCrystallinePinkSlime>, <ore:ingotCrystallinePinkSlime>, <ore:ingotCrystallinePinkSlime>, null, null], 
	[null, <ore:ingotCrystallinePinkSlime>, <ore:ingotGaia>, <ore:ingotGaia>, <ore:ingotGaia>, <ore:ingotGaia>, <ore:ingotGaia>, <ore:ingotCrystallinePinkSlime>, null], 
	[<ore:ingotCrystallinePinkSlime>, <ore:ingotGaia>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotCrystalMatrix>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotGaia>, <ore:ingotCrystallinePinkSlime>], 
	[<ore:ingotCrystallinePinkSlime>, <ore:ingotGaia>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotGaiasteel>, <ore:ingotCosmicNeutronium>, <ore:ingotGaiasteel>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotGaia>, <ore:ingotCrystallinePinkSlime>], 
	[<ore:ingotCrystallinePinkSlime>, <ore:ingotGaia>, <ore:ingotCrystalMatrix>, <ore:ingotCosmicNeutronium>, <extendedcrafting:singularity_ultimate>, <ore:ingotCosmicNeutronium>, <ore:ingotCrystalMatrix>, <ore:ingotGaia>, <ore:ingotCrystallinePinkSlime>], 
	[<ore:ingotCrystallinePinkSlime>, <ore:ingotGaia>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotGaiasteel>, <ore:ingotCosmicNeutronium>, <ore:ingotGaiasteel>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotGaia>, <ore:ingotCrystallinePinkSlime>], 
	[<ore:ingotCrystallinePinkSlime>, <ore:ingotGaia>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotCrystalMatrix>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <ore:ingotGaia>, <ore:ingotCrystallinePinkSlime>], 
	[null, <ore:ingotCrystallinePinkSlime>, <ore:ingotGaia>, <ore:ingotGaia>, <ore:ingotGaia>, <ore:ingotGaia>, <ore:ingotGaia>, <ore:ingotCrystallinePinkSlime>, null], 
	[null, null, <ore:ingotCrystallinePinkSlime>, <ore:ingotCrystallinePinkSlime>, <ore:ingotCrystallinePinkSlime>, <ore:ingotCrystallinePinkSlime>, <ore:ingotCrystallinePinkSlime>, null, null]
]);

/* Matters */
//Dark
recipes.removeByRecipeName("projecte:item.pe_matter_0");
smelter(darkMatter, <minecraft:diamond_block>, aeternalis * 9, 10000);

//Red
recipes.remove(redMatter);
smelter(redMatter, darkMatter, aeternalis * 6, 10000);

//Magenta
recipes.remove(magentaMatter);
smelter(magentaMatter, redMatter, aeternalis * 6, 10000);

//Pink
recipes.remove(pinkMatter);
smelter(pinkMatter, magentaMatter, aeternalis * 6, 10000);

//Purple
recipes.remove(purpleMatter);
smelter(purpleMatter, pinkMatter, aeternalis * 6, 10000);

//Violet
recipes.remove(violetMatter);
smelter(violetMatter, purpleMatter, aeternalis * 6, 10000);

//Blue
recipes.remove(blueMatter);
smelter(blueMatter, violetMatter, aeternalis * 6, 10000);

//Cyan
recipes.remove(cyanMatter);
smelter(cyanMatter, blueMatter, aeternalis * 6, 10000);

//Green
recipes.remove(greenMatter);
smelter(greenMatter, cyanMatter, aeternalis * 6, 10000);

//Lime
recipes.remove(limeMatter);
smelter(limeMatter, greenMatter, aeternalis * 6, 10000);

//Yellow
recipes.remove(yellowMatter);
smelter(yellowMatter, limeMatter, aeternalis * 6, 10000);

//Orange
recipes.remove(orangeMatter);
smelter(orangeMatter, yellowMatter, aeternalis * 6, 10000);

//White
recipes.remove(whiteMatter);
smelter(whiteMatter, orangeMatter, aeternalis * 6, 10000);

//Fading
recipes.remove(fadingMatter);
smelter(fadingMatter, whiteMatter, aeternalis * 6, 10000);

/* ----- */
/* Collectors */
//Basic
recipes.remove(basicCollector);
recipes.addShaped(basicCollector, [
	[<mekanism:basicblock:4>, <ore:blockGlass>, <mekanism:basicblock:4>],
	[<mekanism:basicblock:4>, <projecte:fuel_block:2>, <mekanism:basicblock:4>],
	[<mekanism:basicblock:4>, <mysticalagriculture:ultimate_furnace>, <mekanism:basicblock:4>]
]);

//Dark
recipes.remove(darkCollector);
press(darkCollector, basicCollector, darkMatter, 15000);

//Red
recipes.remove(redCollector);
press(redCollector, darkCollector, redMatter, 15000);

//Magenta
recipes.remove(magentaCollector);
press(magentaCollector, redCollector, magentaMatter, 15000);

//Pink
recipes.remove(pinkCollector);
press(pinkCollector, magentaCollector, pinkMatter, 15000);

//Purple
recipes.remove(purpleCollector);
press(purpleCollector, pinkCollector, purpleMatter, 15000);

//Violet
recipes.remove(violetCollector);
press(violetCollector, purpleCollector, violetMatter, 15000);

//Blue
recipes.remove(blueCollector);
press(blueCollector, violetCollector, blueMatter, 15000);

//Cyan
recipes.remove(cyanCollector);
press(cyanCollector, blueCollector, cyanMatter, 15000);

//Green
recipes.remove(greenCollector);
press(greenCollector, cyanCollector, greenMatter, 15000);

//Lime
recipes.remove(limeCollector);
press(limeCollector, greenCollector, limeMatter, 15000);

//Yellow
recipes.remove(yellowCollector);
press(yellowCollector, limeCollector, yellowMatter, 15000);

//Orange
recipes.remove(orangeCollector);
press(orangeCollector, yellowCollector, orangeMatter, 15000);

//White
recipes.remove(whiteCollector);
press(whiteCollector, orangeCollector, whiteMatter, 15000);

//Fading
recipes.remove(fadingCollector);
press(fadingCollector, whiteCollector, fadingMatter, 15000);

/* ----- */

/* Relays */
//Basic
recipes.remove(basicRelay);
recipes.addShaped(basicRelay, [
	[<mekanism:basicblock:2>, <ore:blockGlass>, <mekanism:basicblock:2>],
	[<mekanism:basicblock:2>, <projecte:fuel_block:2>, <mekanism:basicblock:2>],
	[<mekanism:basicblock:2>, <mekanism:basicblock:2>, <mekanism:basicblock:2>]
]);

//Dark
recipes.remove(darkRelay);
press(darkRelay, basicRelay, darkMatter, 15000);

//Red
recipes.remove(redRelay);
press(redRelay, darkRelay, redMatter, 15000);

//Magenta
recipes.remove(magentaRelay);
press(magentaRelay, redRelay, magentaMatter, 15000);

//Pink
recipes.remove(pinkRelay);
press(pinkRelay, magentaRelay, pinkMatter, 15000);

//Purple
recipes.remove(purpleRelay);
press(purpleRelay, pinkRelay, purpleMatter, 15000);

//Violet
recipes.remove(violetRelay);
press(violetRelay, purpleRelay, violetMatter, 15000);

//Blue
recipes.remove(blueRelay);
press(blueRelay, violetRelay, blueMatter, 15000);

//Cyan
recipes.remove(cyanRelay);
press(cyanRelay, blueRelay, cyanMatter, 15000);

//Green
recipes.remove(greenRelay);
press(greenRelay, cyanRelay, greenMatter, 15000);

//Lime
recipes.remove(limeRelay);
press(limeRelay, greenRelay, limeMatter, 15000);

//Yellow
recipes.remove(yellowRelay);
press(yellowRelay, limeRelay, yellowMatter, 15000);

//Orange
recipes.remove(orangeRelay);
press(orangeRelay, yellowRelay, orangeMatter, 15000);

//White
recipes.remove(whiteRelay);
press(whiteRelay, orangeRelay, whiteMatter, 15000);

//Fading
recipes.remove(fadingRelay);
press(fadingRelay, whiteRelay, fadingMatter, 15000);

/* ----- */

/* Collectors + Relays Mk. */
//Collectors
//Mk1
recipes.remove(<projecte:collector_mk1>);

//Mk2
recipes.remove(<projecte:collector_mk2>);

//Mk3
recipes.remove(<projecte:collector_mk3>);

//Relays
//Mk1
recipes.remove(<projecte:relay_mk1>);

//Mk2
recipes.remove(<projecte:relay_mk2>);

//Mk3
recipes.remove(<projecte:relay_mk3>);

/* Final Star */
//Star Shard
recipes.remove(starShard);
mods.extendedcrafting.TableCrafting.addShaped(2, starShard, [
	[<ore:ingotCosmicNeutronium>, <projectex:colossal_star_omega>, <ore:ingotCosmicNeutronium>, <projectex:colossal_star_omega>, <ore:ingotCosmicNeutronium>], 
	[<projectex:colossal_star_omega>, <tp:netherstar_block>, <tp:netherstar_block>, <tp:netherstar_block>, <projectex:colossal_star_omega>], 
	[<ore:ingotCosmicNeutronium>, <tp:netherstar_block>, <bloodmagic:blood_shard>, <tp:netherstar_block>, <ore:ingotCosmicNeutronium>], 
	[<projectex:colossal_star_omega>, <tp:netherstar_block>, <tp:netherstar_block>, <tp:netherstar_block>, <projectex:colossal_star_omega>], 
	[<ore:ingotCosmicNeutronium>, <projectex:colossal_star_omega>, <ore:ingotCosmicNeutronium>, <projectex:colossal_star_omega>, <ore:ingotCosmicNeutronium>]
]);

//Final Star
recipes.remove(finalStar);
mods.extendedcrafting.TableCrafting.addShaped(3, finalStar, [
	[null, null, <projectex:final_star_shard>, <projectex:final_star_shard>, <projectex:final_star_shard>, null, null], 
	[null, <projectex:final_star_shard>, <projectex:power_flower:15>, <projectex:power_flower:15>, <projectex:power_flower:15>, <projectex:final_star_shard>, null], 
	[<projectex:final_star_shard>, <projectex:power_flower:15>, <ore:netherStar>, <ore:blockCosmicNeutronium>, <ore:netherStar>, <projectex:power_flower:15>, <projectex:final_star_shard>], 
	[<projectex:final_star_shard>, <projectex:power_flower:15>, <ore:blockCosmicNeutronium>, <draconicevolution:chaos_shard>, <ore:blockCosmicNeutronium>, <projectex:power_flower:15>, <projectex:final_star_shard>], 
	[<projectex:final_star_shard>, <projectex:power_flower:15>, <ore:netherStar>, <ore:blockCosmicNeutronium>, <ore:netherStar>, <projectex:power_flower:15>, <projectex:final_star_shard>], 
	[null, <projectex:final_star_shard>, <projectex:power_flower:15>, <projectex:power_flower:15>, <projectex:power_flower:15>, <projectex:final_star_shard>, null], 
	[null, null, <projectex:final_star_shard>, <projectex:final_star_shard>, <projectex:final_star_shard>, null, null]
]);

/* Condensers */
//Mk1
recipes.remove(energyCondenser);
mods.extendedcrafting.TableCrafting.addShaped(2, energyCondenser, [
	[<ore:obsidian>, <ore:obsidian>, <actuallyadditions:block_giant_chest_large>, <ore:obsidian>, <ore:obsidian>], 
	[<ore:obsidian>, <draconicevolution:draconium_chest>, <projecte:matter_block>, <draconicevolution:draconium_chest>, <ore:obsidian>], 
	[<actuallyadditions:block_giant_chest_large>, <projecte:matter_block>, <projecte:alchemical_chest>, <projecte:matter_block>, <actuallyadditions:block_giant_chest_large>], 
	[<ore:obsidian>, <draconicevolution:draconium_chest>, <projecte:matter_block>, <draconicevolution:draconium_chest>, <ore:obsidian>], 
	[<ore:obsidian>, <ore:obsidian>, <actuallyadditions:block_giant_chest_large>, <ore:obsidian>, <ore:obsidian>]
]);

//Mk2
recipes.remove(energyCondenser2);
mods.extendedcrafting.TableCrafting.addShaped(3, energyCondenser2, [
	[null, <ore:blockCosmicNeutronium>, <actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_large>, <ore:blockCosmicNeutronium>, null], 
	[<ore:blockCosmicNeutronium>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block>, <projecte:matter_block:1>, <projecte:matter_block:1>, <ore:blockCosmicNeutronium>], 
	[<actuallyadditions:block_giant_chest_large>, <projecte:matter_block:1>, <projecte:matter_block>, <projecte:condenser_mk1>, <projecte:matter_block>, <projecte:matter_block:1>, <actuallyadditions:block_giant_chest_large>], 
	[<actuallyadditions:block_giant_chest_large>, <projecte:matter_block>, <projecte:condenser_mk1>, <draconicevolution:chaos_shard>, <projecte:condenser_mk1>, <projecte:matter_block>, <actuallyadditions:block_giant_chest_large>], 
	[<actuallyadditions:block_giant_chest_large>, <projecte:matter_block:1>, <projecte:matter_block>, <projecte:condenser_mk1>, <projecte:matter_block>, <projecte:matter_block:1>, <actuallyadditions:block_giant_chest_large>], 
	[<ore:blockCosmicNeutronium>, <projecte:matter_block:1>, <projecte:matter_block:1>, <projecte:matter_block>, <projecte:matter_block:1>, <projecte:matter_block:1>, <ore:blockCosmicNeutronium>], 
	[null, <ore:blockCosmicNeutronium>, <actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_large>, <actuallyadditions:block_giant_chest_large>, <ore:blockCosmicNeutronium>, null]
]);

/* Transmutation */
//Table
recipes.remove(transmuTable);
mods.extendedcrafting.TableCrafting.addShaped(4, transmuTable, [
	[null, null, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, null, null], 
	[null, <ore:blockRefinedObsidian>, <draconicevolution:chaos_shard:1>, <projectex:matter>, <projectex:matter>, <projectex:matter>, <draconicevolution:chaos_shard:1>, <ore:blockRefinedObsidian>, null], 
	[<ore:blockRefinedObsidian>, <draconicevolution:chaos_shard:1>, <projectex:matter:11>, <projectex:matter:4>, <projectex:matter:4>, <projectex:matter:4>, <projectex:matter:11>, <draconicevolution:chaos_shard:1>, <ore:blockRefinedObsidian>], 
	[<ore:blockRefinedObsidian>, <projectex:matter:3>, <projectex:matter:7>, <projectex:matter:8>, <projectex:matter:8>, <projectex:matter:8>, <projectex:matter:5>, <projectex:matter:1>, <ore:blockRefinedObsidian>], 
	[<ore:blockRefinedObsidian>, <projectex:matter:3>, <projectex:matter:7>, <projectex:matter:10>, <projecte:item.pe_philosophers_stone>, <projectex:matter:9>, <projectex:matter:5>, <projectex:matter:1>, <ore:blockRefinedObsidian>], 
	[<ore:blockRefinedObsidian>, <projectex:matter:3>, <projectex:matter:7>, <projectex:matter:10>, <projectex:matter:9>, <projectex:matter:9>, <projectex:matter:5>, <projectex:matter:1>, <ore:blockRefinedObsidian>], 
	[<ore:blockRefinedObsidian>, <draconicevolution:chaos_shard:1>, <projectex:matter:11>, <projectex:matter:6>, <projectex:matter:6>, <projectex:matter:6>, <projectex:matter:11>, <draconicevolution:chaos_shard:1>, <ore:blockRefinedObsidian>], 
	[null, <ore:blockRefinedObsidian>, <draconicevolution:chaos_shard:1>, <projectex:matter:2>, <projectex:matter:2>, <projectex:matter:2>, <draconicevolution:chaos_shard:1>, <ore:blockRefinedObsidian>, null], 
	[null, null, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, <ore:blockRefinedObsidian>, null, null]
]);

//Arcane
recipes.remove(<projectex:arcane_tablet>);

//Final Collector
recipes.remove(<projectex:collector:15>);

//Final Relay
recipes.remove(<projectex:relay:15>);