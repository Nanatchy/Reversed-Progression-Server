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

//Ceramics
recipes.remove(<ceramics:unfired_clay:4>);

//Astral marble
recipes.addShaped(<astralsorcery:blockmarble> * 8, [
    [<ore:blockQuartz>, <astralsorcery:itemcraftingcomponent>, <ore:blockQuartz>],
    [<astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>],
    [<ore:blockQuartz>, <astralsorcery:itemcraftingcomponent>, <ore:blockQuartz>]
]);