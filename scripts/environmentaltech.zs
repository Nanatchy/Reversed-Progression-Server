import mods.pneumaticcraft.pressurechamber.addRecipe as chamber;

//Litherite
recipes.remove(<environmentaltech:litherite_crystal>);
chamber([<pneumaticcraft:plastic:2> * 2, <industrialforegoing:artificial_dye:5> * 2, <minecraft:flint> * 4, <avaritia:resource>], 3.0, [<environmentaltech:litherite_crystal> * 4]);

//Interconnect
recipes.removeByRecipeName('environmentaltech:m_multiblocks/interconnect');

//Photovoltaic Cell
recipes.remove(<environmentaltech:photovoltaic_cell>);
recipes.addShaped(<environmentaltech:photovoltaic_cell>, [
    [null, <actuallyadditions:item_crystal_empowered:1>, null],
    [<actuallyadditions:item_crystal_empowered:1>, <botania:quartz:5>, <actuallyadditions:item_crystal_empowered:1>],
    [null, <actuallyadditions:item_crystal_empowered:1>, null]
]);

//Connector
recipes.remove(<environmentaltech:connector>);
recipes.addShaped(<environmentaltech:connector> * 4, [
    [<minecraft:redstone>, <ore:plateIron>, <minecraft:redstone>],
    [<ore:plateIron>, <enderio:block_alloy:3>, <ore:plateIron>],
    [<minecraft:redstone>, <ore:plateIron>, <minecraft:redstone>]
]);

//Modifier Component
recipes.remove(<valkyrielib:modifier_component>);
recipes.addShaped(<valkyrielib:modifier_component> * 4, [
    [<minecraft:concrete:15>, <tp:redstone_ingot>, <minecraft:concrete:15>],
    [<tp:redstone_ingot>, <forge:bucketfilled>.withTag({FluidName: "plastic", Amount: 1000}), <tp:redstone_ingot>],
    [<minecraft:concrete:15>, <tp:redstone_ingot>, <minecraft:concrete:15>]
]);

/* Lighting Controller */
//Tier 1
recipes.remove(<environmentaltech:lightning_cont_1>);
recipes.addShaped(<environmentaltech:lightning_cont_1>, [
    [<environmentaltech:interconnect>, <environmentaltech:lightning_rod_insulated>, <environmentaltech:interconnect>],
    [<ore:blockLitherite>, <environmentaltech:lightning_rod_insulated>, <ore:blockLitherite>],
    [<botania:storage:2>, <actuallyadditions:block_crystal:5>, <botania:storage:2>]
]);

//Tier 2
recipes.remove(<environmentaltech:lightning_cont_2>);
recipes.addShaped(<environmentaltech:lightning_cont_2>, [
    [<actuallyadditions:block_crystal:5>, <environmentaltech:lightning_rod_insulated>, <actuallyadditions:block_crystal:5>],
    [<ore:blockErodium>, <environmentaltech:lightning_cont_1>.withTag({}), <ore:blockErodium>],
    [<botania:storage:2>, <minecraft:iron_block>, <botania:storage:2>]
]);

//Tier 3
recipes.remove(<environmentaltech:lightning_cont_3>);
recipes.addShaped(<environmentaltech:lightning_cont_3>, [
    [<actuallyadditions:block_crystal:5>, <environmentaltech:lightning_rod_insulated>, <actuallyadditions:block_crystal:5>],
    [<ore:blockKyronite>, <environmentaltech:lightning_cont_2>.withTag({}), <ore:blockKyronite>],
    [<botania:storage:2>, <minecraft:iron_block>, <botania:storage:2>]
]);

//Tier 4
recipes.remove(<environmentaltech:lightning_cont_4>);
recipes.addShaped(<environmentaltech:lightning_cont_4>, [
    [<actuallyadditions:block_crystal_empowered:5>, <environmentaltech:lightning_rod_insulated>, <actuallyadditions:block_crystal_empowered:5>],
    [<environmentaltech:pladium>, <environmentaltech:lightning_cont_3>.withTag({}), <environmentaltech:pladium>],
    [<botania:storage:1>, <minecraft:iron_block>, <botania:storage:1>]
]);

//Tier 5
recipes.remove(<environmentaltech:lightning_cont_5>);
recipes.addShaped(<environmentaltech:lightning_cont_5>, [
    [<actuallyadditions:block_crystal_empowered:5>, <environmentaltech:lightning_rod_insulated>, <actuallyadditions:block_crystal_empowered:5>],
    [<ore:blockIonite>, <environmentaltech:lightning_cont_4>.withTag({}), <ore:blockIonite>],
    [<botania:storage:1>, <minecraft:iron_block>, <botania:storage:1>]
]);

//Tier 6
recipes.remove(<environmentaltech:lightning_cont_6>);
recipes.addShaped(<environmentaltech:lightning_cont_6>, [
    [<actuallyadditions:block_crystal_empowered:5>, <environmentaltech:lightning_rod_insulated>, <actuallyadditions:block_crystal_empowered:5>],
    [<ore:blockAethium>, <environmentaltech:lightning_cont_5>.withTag({}), <ore:blockAethium>],
    [<botania:storage:1>, <minecraft:iron_block>, <botania:storage:1>]
]);

/* Solar Array */
//Tier 1
recipes.remove(<environmentaltech:solar_cont_1>);
recipes.addShaped(<environmentaltech:solar_cont_1>, [
    [<ore:blockLitherite>, <actuallyadditions:block_crystal_empowered:1>, <ore:blockLitherite>],
    [<actuallyadditions:block_crystal_empowered:1>, <ore:etSolarCell>, <actuallyadditions:block_crystal_empowered:1>],
    [<ore:blockLitherite>, <actuallyadditions:block_crystal_empowered:1>, <ore:blockLitherite>]
]);

//Tier 2
recipes.remove(<environmentaltech:solar_cont_2>);
recipes.addShaped(<environmentaltech:solar_cont_2>, [
    [<ore:blockErodium>, <environmentaltech:solar_cell_erodium>, <ore:blockErodium>],
    [<environmentaltech:solar_cell_erodium>, <environmentaltech:solar_cont_1>.withTag({}), <environmentaltech:solar_cell_erodium>],
    [<actuallyadditions:block_crystal_empowered:1>, <environmentaltech:solar_cell_erodium>, <actuallyadditions:block_crystal_empowered:1>]
]);

//Tier 3
recipes.remove(<environmentaltech:solar_cont_3>);
recipes.addShaped(<environmentaltech:solar_cont_3>, [
    [<ore:blockKyronite>, <environmentaltech:solar_cell_kyronite>, <ore:blockKyronite>],
    [<environmentaltech:solar_cell_kyronite>, <environmentaltech:solar_cont_2>.withTag({}), <environmentaltech:solar_cell_kyronite>],
    [<actuallyadditions:block_crystal_empowered:1>, <environmentaltech:solar_cell_kyronite>, <actuallyadditions:block_crystal_empowered:1>]
]);

//Tier 4
recipes.remove(<environmentaltech:solar_cont_4>);
recipes.addShaped(<environmentaltech:solar_cont_4>, [
    [<ore:blockPladium>, <environmentaltech:solar_cell_pladium>, <ore:blockPladium>],
    [<environmentaltech:solar_cell_pladium>, <environmentaltech:solar_cont_3>.withTag({}), <environmentaltech:solar_cell_pladium>],
    [<actuallyadditions:block_crystal_empowered:1>, <environmentaltech:solar_cell_pladium>, <actuallyadditions:block_crystal_empowered:1>]
]);

//Tier 5
recipes.remove(<environmentaltech:solar_cont_5>);
recipes.addShaped(<environmentaltech:solar_cont_5>, [
    [<ore:blockIonite>, <environmentaltech:solar_cell_ionite>, <ore:blockIonite>],
    [<environmentaltech:solar_cell_ionite>, <environmentaltech:solar_cont_4>.withTag({}), <environmentaltech:solar_cell_ionite>],
    [<actuallyadditions:block_crystal_empowered:1>, <environmentaltech:solar_cell_ionite>, <actuallyadditions:block_crystal_empowered:1>]
]);

//Tier 6
recipes.remove(<environmentaltech:solar_cont_6>);
recipes.addShaped(<environmentaltech:solar_cont_6>, [
    [<ore:blockAethium>, <environmentaltech:solar_cell_aethium>, <ore:blockAethium>],
    [<environmentaltech:solar_cell_aethium>, <environmentaltech:solar_cont_5>.withTag({}), <environmentaltech:solar_cell_aethium>],
    [<actuallyadditions:block_crystal_empowered:1>, <environmentaltech:solar_cell_aethium>, <actuallyadditions:block_crystal_empowered:1>]
]);

/* Void Ore Miner */
//Tier 1
recipes.remove(<environmentaltech:void_ore_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_1>, [
    [<ore:blockLitherite>, <actuallyadditions:block_crystal:2>, <ore:blockLitherite>],
    [<botania:storage:2>, <environmentaltech:diode>, <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 2
recipes.remove(<environmentaltech:void_ore_miner_cont_2>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_2>, [
    [<ore:blockErodium>, <actuallyadditions:block_crystal:2>, <ore:blockErodium>],
    [<botania:storage:2>, <environmentaltech:void_ore_miner_cont_1>.withTag({}), <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 3
recipes.remove(<environmentaltech:void_ore_miner_cont_3>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_3>, [
    [<ore:blockKyronite>, <actuallyadditions:block_crystal:2>, <ore:blockKyronite>],
    [<botania:storage:2>, <environmentaltech:void_ore_miner_cont_2>.withTag({}), <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 4
recipes.remove(<environmentaltech:void_ore_miner_cont_4>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_4>, [
    [<ore:blockPladium>, <actuallyadditions:block_crystal_empowered:2>, <ore:blockPladium>],
    [<botania:storage:1>, <environmentaltech:void_ore_miner_cont_3>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 5
recipes.remove(<environmentaltech:void_ore_miner_cont_5>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_5>, [
    [<ore:blockIonite>, <actuallyadditions:block_crystal_empowered:2>, <ore:blockIonite>],
    [<botania:storage:1>, <environmentaltech:void_ore_miner_cont_4>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 6
recipes.remove(<environmentaltech:void_ore_miner_cont_6>);
recipes.addShaped(<environmentaltech:void_ore_miner_cont_6>, [
    [<ore:blockAethium>, <actuallyadditions:block_crystal_empowered:2>, <ore:blockAethium>],
    [<botania:storage:1>, <environmentaltech:void_ore_miner_cont_5>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

/* Void Resource Miner */
//Tier 1
recipes.remove(<environmentaltech:void_res_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_1>, [
    [<ore:blockLitherite>, <mekanism:basicblock:2>, <ore:blockLitherite>],
    [<botania:storage:2>, <environmentaltech:diode>, <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 2
recipes.remove(<environmentaltech:void_res_miner_cont_2>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_2>, [
    [<ore:blockErodium>, <mekanism:basicblock:2>, <ore:blockErodium>],
    [<botania:storage:2>, <environmentaltech:void_res_miner_cont_1>.withTag({}), <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 3
recipes.remove(<environmentaltech:void_res_miner_cont_3>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_3>, [
    [<ore:blockKyronite>, <mekanism:basicblock:2>, <ore:blockKyronite>],
    [<botania:storage:2>, <environmentaltech:void_res_miner_cont_2>.withTag({}), <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 4
recipes.remove(<environmentaltech:void_res_miner_cont_4>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_4>, [
    [<ore:blockPladium>, <mekanism:basicblock:2>, <ore:blockPladium>],
    [<botania:storage:1>, <environmentaltech:void_res_miner_cont_3>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 5
recipes.remove(<environmentaltech:void_res_miner_cont_5>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_5>, [
    [<ore:blockIonite>, <mekanism:basicblock:2>, <ore:blockIonite>],
    [<botania:storage:1>, <environmentaltech:void_res_miner_cont_4>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 6
recipes.remove(<environmentaltech:void_res_miner_cont_6>);
recipes.addShaped(<environmentaltech:void_res_miner_cont_6>, [
    [<ore:blockAethium>, <mekanism:basicblock:2>, <ore:blockAethium>],
    [<botania:storage:1>, <environmentaltech:void_res_miner_cont_5>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

/* Void Botanic Miner */
//Tier 1
recipes.remove(<environmentaltech:void_botanic_miner_cont_1>);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_1>, [
    [<ore:blockLitherite>, <botania:specialflower>.withTag({type: "puredaisy"}), <ore:blockLitherite>],
    [<botania:storage:2>, <environmentaltech:diode>, <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 2
recipes.remove(<environmentaltech:void_botanic_miner_cont_2>);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_2>, [
    [<ore:blockErodium>, <botania:specialflower>.withTag({type: "puredaisy"}), <ore:blockErodium>],
    [<botania:storage:2>, <environmentaltech:void_botanic_miner_cont_1>.withTag({}), <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 3
recipes.remove(<environmentaltech:void_botanic_miner_cont_3>);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_3>, [
    [<ore:blockKyronite>, <botania:specialflower>.withTag({type: "puredaisy"}), <ore:blockKyronite>],
    [<botania:storage:2>, <environmentaltech:void_botanic_miner_cont_2>.withTag({}), <botania:storage:2>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 4
recipes.remove(<environmentaltech:void_botanic_miner_cont_4>);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_4>, [
    [<ore:blockPladium>, <botania:specialflower>.withTag({type: "puredaisy"}), <ore:blockPladium>],
    [<botania:storage:1>, <environmentaltech:void_botanic_miner_cont_3>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 5
recipes.remove(<environmentaltech:void_botanic_miner_cont_5>);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_5>, [
    [<ore:blockIonite>, <botania:specialflower>.withTag({type: "puredaisy"}), <ore:blockIonite>],
    [<botania:storage:1>, <environmentaltech:void_botanic_miner_cont_4>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Tier 6
recipes.remove(<environmentaltech:void_botanic_miner_cont_6>);
recipes.addShaped(<environmentaltech:void_botanic_miner_cont_6>, [
    [<ore:blockAethium>, <botania:specialflower>.withTag({type: "puredaisy"}), <ore:blockAethium>],
    [<botania:storage:1>, <environmentaltech:void_botanic_miner_cont_5>.withTag({}), <botania:storage:1>],
    [<environmentaltech:interconnect>, <ore:etLaserLens>, <environmentaltech:interconnect>]
]);

//Flight Modifier
recipes.remove(<environmentaltech:modifier_creative_flight>);
mods.extendedcrafting.TableCrafting.addShaped(2, <environmentaltech:modifier_creative_flight>, [
	[<minecraft:elytra>, <ore:blockAethium>, <enderio:item_dark_steel_upgrade:1>, <ore:blockAethium>, <minecraft:elytra>], 
	[<environmentaltech:mica>, <deepmoblearning:glitch_infused_helmet>, <rftools:flight_module>, <deepmoblearning:glitch_infused_leggings>, <environmentaltech:mica>], 
	[<environmentaltech:mica>, <deepmoblearning:glitch_infused_chestplate>, <environmentaltech:modifier_null>, <deepmoblearning:glitch_infused_boots>, <environmentaltech:mica>], 
	[<environmentaltech:mica>, <harvestcraft:hardenedleatheritem>, <ore:blockLonsdaleite>, <harvestcraft:hardenedleatheritem>, <environmentaltech:mica>], 
	[<harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>, <ore:blockLonsdaleite>, <harvestcraft:hardenedleatheritem>, <harvestcraft:hardenedleatheritem>]
]);