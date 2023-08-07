//Sandstone to Cobble
recipes.removeByRecipeName("simplerecipes:cobblestone_sandstone");

//Furnace
recipes.remove(<minecraft:furnace>);
recipes.addShaped(<minecraft:furnace>, [
    [<ore:cobblestone>, <extrautils2:compressedcobblestone>, <ore:cobblestone>],
    [<ore:cobblestone>, <botania:manaresource:21>, <ore:cobblestone>],
    [<ore:cobblestone>, <ore:cobblestone>, <ore:cobblestone>]
]);

/* Planks */
recipes.remove(<ore:plankWood>);

//Oak
recipes.addShapeless(<minecraft:planks>*2, [<minecraft:log>]);

//Spruce
recipes.addShapeless(<minecraft:planks:1>*2, [<minecraft:log:1>]);

//Birch
recipes.addShapeless(<minecraft:planks:2>*2, [<minecraft:log:2>]);

//Jungle
recipes.addShapeless(<minecraft:planks:3>*2, [<minecraft:log:3>]);

//Acacia
recipes.addShapeless(<minecraft:planks:4>*2, [<minecraft:log2>]);

//Dark oak
recipes.addShapeless(<minecraft:planks:5>*2, [<minecraft:log2:1>]);

//Spectre
recipes.addShapeless(<randomthings:spectreplank>*2, [<randomthings:spectrelog>]);

//Twlight Oak
recipes.addShapeless(<twilightforest:twilight_oak_planks>*2, [<twilightforest:twilight_log>]);

//Canopy
recipes.addShapeless(<twilightforest:canopy_planks>*2, [<twilightforest:twilight_log:1>]);

//Mangrove
recipes.addShapeless(<twilightforest:mangrove_planks>*2, [<twilightforest:twilight_log:2>]);

//Transwood
recipes.addShapeless(<twilightforest:trans_planks>*2, [<twilightforest:magic_log:1>]);

//Minewood
recipes.addShapeless(<twilightforest:mine_planks>*2, [<twilightforest:magic_log:2>]);

//Sortingwood
recipes.addShapeless(<twilightforest:sort_planks>*2, [<twilightforest:magic_log:3>]);

//Darkwood
recipes.addShapeless(<twilightforest:dark_planks>*2, [<twilightforest:twilight_log:3>]);

//Timewood
recipes.addShapeless(<twilightforest:time_planks>*2, [<twilightforest:magic_log>]);

//Chest
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest>, [
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
    [<ore:plankWood>, null, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

//Chest
recipes.remove(<minecraft:chest>);
recipes.addShaped(<minecraft:chest> * 4, [
    [<ore:logWood>, <ore:logWood>, <ore:logWood>],
    [<ore:logWood>, null, <ore:logWood>],
    [<ore:logWood>, <ore:logWood>, <ore:logWood>]
]);

//Hopper
recipes.remove(<minecraft:hopper>);
recipes.addShaped(<minecraft:hopper>, [
    [<ore:plateIron>, null, <ore:plateIron>],
    [<ore:plateIron>, <tconstruct:wooden_hopper>, <ore:plateIron>],
    [null, <ore:plateIron>, null]
]);

//Piston
recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
    [<ore:logWood>, <ore:plankWood>, <ore:logWood>],
    [<minecraft:stone>, <immersiveengineering:material:1>, <minecraft:stone>],
    [<minecraft:stone>, <tp:redstone_ingot>, <minecraft:stone>]
]);

//Stick
recipes.remove(<minecraft:stick>);
recipes.removeByRecipeName("extrautils2:shortcut_stick");
recipes.removeByRecipeName("enderio:tweak_stick_from_wood");
recipes.removeByRecipeName("simplerecipe:stick_sapling");
recipes.removeByRecipeName("simplerecipe:stick_bone");
recipes.addShaped(<minecraft:stick> * 8, [
    [<ore:logWood>], 
    [<ore:logWood>]
]);
recipes.addShaped(<minecraft:stick> * 4, [
    [<ore:plankWood>],
    [<ore:plankWood>]
]);

//Totem of Undying
recipes.addShaped(<minecraft:totem_of_undying>, [
    [<actuallyadditions:block_crystal_empowered>, <actuallyadditions:block_crystal_empowered:1>, <actuallyadditions:block_crystal_empowered:2>],
    [null, <projecte:item.pe_repair_talisman>, null],
    [<actuallyadditions:block_crystal_empowered:3>, <actuallyadditions:block_crystal_empowered:4>, <actuallyadditions:block_crystal_empowered:5>]
]);

/* RANDOM */
//Ceramics
recipes.remove(<ceramics:unfired_clay:4>);

//Astral marble
recipes.addShaped(<astralsorcery:blockmarble> * 8, [
    [<ore:blockQuartz>, <astralsorcery:itemcraftingcomponent>, <ore:blockQuartz>],
    [<astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>],
    [<ore:blockQuartz>, <astralsorcery:itemcraftingcomponent>, <ore:blockQuartz>]
]);

//Clay ball
recipes.removeByRecipeName('ceramics:uncrafting/clay_block');

//Bucket
recipes.remove(<minecraft:bucket>);
recipes.addShaped(<minecraft:bucket>, [
    [null, null, null],
    [<ore:plateIron>, null, <ore:plateIron>],
    [null, <ore:plateIron>, null]
]);

//Aroma Mining Multitool
recipes.remove(<aroma1997sdimension:miningmultitool>);
recipes.addShaped(<aroma1997sdimension:miningmultitool>, [
    [null, <randomthings:ingredient:3>, null],
    [<botania:storage:4>, <botania:dreamwood>, <botania:storage:4>],
    [null, <botania:dreamwood>, null]
]);

//Aroma Mining Portal
recipes.remove(<aroma1997sdimension:portalframe>);
recipes.addShaped(<aroma1997sdimension:portalframe>, [
    [<aroma1997sdimension:miningmultitool:*>, <botania:shimmerrock>]
]);

//Deep Dark Portal
recipes.remove(<extrautils2:teleporter:1>);
mods.extendedcrafting.TableCrafting.addShaped(1, <extrautils2:teleporter:1>, [
	[<ore:compressed1xCobblestone>, <ore:compressed2xCobblestone>, <ore:compressed3xCobblestone>], 
	[<ore:compressed8xCobblestone>, null, <ore:compressed4xCobblestone>], 
	[<ore:compressed7xCobblestone>, <ore:compressed6xCobblestone>, <ore:compressed5xCobblestone>]
]);

/* Snad */
//Red snad
recipes.remove(<snad:snad:1>);

//Snad
recipes.remove(<snad:snad>);
recipes.addShaped(<snad:snad>, [
    [null, <extrautils2:compressedsand:1>, null],
    [null, <randomthings:timeinabottle>.withTag({}), null],
    [null, <extrautils2:compressedsand:1>, null]
]);

//Singularity tank
recipes.remove(<mob_grinding_utils:tank>);
recipes.addShaped(<mob_grinding_utils:tank>, [
    [<minecraft:iron_block>, <extrautils2:decorativeglass>, <minecraft:iron_block>],
    [<extrautils2:decorativeglass>, <extrautils2:decorativeglass>, <extrautils2:decorativeglass>],
    [<minecraft:iron_ingot>, <extrautils2:decorativeglass>, <minecraft:iron_ingot>]
]);

//Time in a bottle
recipes.remove(<randomthings:timeinabottle>);
recipes.addShaped(<randomthings:timeinabottle>, [
    [<thermalfoundation:material:161>, <thermalfoundation:material:161>, <thermalfoundation:material:161>],
    [<avaritia:resource>, <embers:clockwork_attenuator>, <avaritia:resource>],
    [<minecraft:lapis_block>, <minecraft:glass_bottle>, <minecraft:lapis_block>]
]);

//Portal to the Void
recipes.remove(<simplevoidworld:portal>);
recipes.addShaped(<simplevoidworld:portal>, [
    [<mekanism:basicblock:2>, <extrautils2:ingredients:2>, <mekanism:basicblock:2>],
    [<extrautils2:ingredients:2>, <bloodarsenal:blood_diamond:2>, <extrautils2:ingredients:2>],
    [<mekanism:basicblock:2>, <extrautils2:ingredients:2>, <mekanism:basicblock:2>]
]);

//Peace Candle
recipes.addShaped(<randomthings:peacecandle>, [
    [null, null, null],
    [<embers:ashen_stone>, <harvestcraft:candledeco1>, <embers:ashen_stone>],
    [<embers:ashen_stone>, <embers:ashen_stone>, <embers:ashen_stone>]
]);

//Uncrafting Table
recipes.remove(<twilightforest:uncrafting_table>);

//Toast
furnace.addRecipe(<harvestcraft:toastitem>, <minecraft:bread>);