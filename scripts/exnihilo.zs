import mods.exnihilocreatio.Sieve.addStringMeshRecipe as mesh;
import mods.exnihilocreatio.Sieve.addFlintMeshRecipe as flintMesh;
import mods.exnihilocreatio.Sieve.addIronMeshRecipe as ironMesh;
import mods.exnihilocreatio.Sieve.addDiamondMeshRecipe as diamondMesh;
import mods.exnihilocreatio.Hammer.addRecipe as hammer;
import mods.exnihilocreatio.Heat.addRecipe as heat;

/* Hammers */
mods.exnihilocreatio.Hammer.removeAll();
hammer(<ore:cobblestone>, <minecraft:dirt>, 0, 1, 0); //Cobble to Dirt
hammer(<minecraft:dirt>, <minecraft:gravel>, 0, 1, 0); //Dirt to Gravel
hammer(<minecraft:gravel>, <minecraft:sand>, 0, 1, 0); //Gravel to Sand
hammer(<minecraft:sand>, <exnihilocreatio:block_dust>, 0, 1, 0); //Sand to Dust
hammer(<ore:endstone>, <exnihilocreatio:block_endstone_crushed>, 0, 1, 0); //Endstone to Crushed
hammer(<ore:netherrack>, <exnihilocreatio:block_netherrack_crushed>, 0, 1, 0); //Netherrack to Crushed
hammer(<ore:stoneAndesite>, <exnihilocreatio:block_andesite_crushed>, 0, 1, 0); //Andesite to Crushed
hammer(<ore:stoneGranite>, <exnihilocreatio:block_granite_crushed>, 0, 1, 0); //Granite to Crushed
hammer(<ore:stoneDiorite>, <exnihilocreatio:block_diorite_crushed>, 0, 1, 0); //Diorite to Crushed

//Compressed
// hammer(<extrautils2:compressedcobblestone>, <extrautils2:compresseddirt>, 0, 1, 0); //Cobble to Dirt
// hammer(<extrautils2:compresseddirt>, <extrautils2:compressedgravel>, 0, 1, 0); //Dirt to Gravel
// hammer(<extrautils2:compressedgravel>, <extrautils2:compressedsand>, 0, 1, 0); //Gravel to Sand
// hammer(<extrautils2:compressedsand>, <exnihilocreatio:block_dust> * 9, 0, 1, 0); //Sand to Dust

/* Removing ExCompressum Items */
//Cobblestone
recipes.remove(<excompressum:compressed_block:1>);
recipes.remove(<excompressum:compressed_block:4>);
recipes.remove(<excompressum:compressed_block:2>);
recipes.remove(<excompressum:compressed_block:3>);
//recipes.remove(<excompressum:compressed_block>);

//Osmium Ingot
furnace.remove(<exnihilocreatio:item_ore_osmium:3>, <exnihilocreatio:item_ore_osmium:1>);
furnace.addRecipe(<mekanism:ingot:1>, <exnihilocreatio:item_ore_osmium:1>);

/* Sieves */
//Hemp Seed
mesh(<minecraft:dirt:1>, <immersiveengineering:seed>, 0.02);

//Aquamarine
diamondMesh(<exnihilocreatio:block_endstone_crushed>, <astralsorcery:itemcraftingcomponent>, 0.05);

//Coal
ironMesh(<minecraft:gravel>, <minecraft:coal>, 0.15);
diamondMesh(<minecraft:gravel>, <minecraft:coal>, 0.20);

//Flint
ironMesh(<minecraft:gravel>, <minecraft:flint>, 0.25);
diamondMesh(<minecraft:gravel>, <minecraft:flint>, 0.25);

//Copper chunk
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_copper>, 0.1);

//Nether wart
diamondMesh(<minecraft:soul_sand>, <minecraft:nether_wart>, 0.25);

//Gunpowder
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:gunpowder>, 0.16);

//Bone Meal
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.20);

//Glowstone
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:glowstone_dust>, 0.08);

//Blaze Powder
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:blaze_powder>, 0.075);
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:blaze_powder>, 0.075);

//Lapis
ironMesh(<minecraft:gravel>, <minecraft:dye:4>, 0.075);
diamondMesh(<minecraft:gravel>, <minecraft:dye:4>, 0.1);

//Cocoa Beans
flintMesh(<minecraft:sand>, <minecraft:dye:3>, 0.06);
ironMesh(<minecraft:sand>, <minecraft:dye:3>, 0.09);
diamondMesh(<minecraft:sand>, <minecraft:dye:3>, 0.12);

//Lead chunk
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_lead>, 0.02);
diamondMesh(<exnihilocreatio:block_diorite_crushed>, <exnihilocreatio:item_ore_lead>, 0.5);

/* Meshs */
//String
recipes.remove(<exnihilocreatio:item_mesh:1>);
recipes.addShaped(<exnihilocreatio:item_mesh:1>, [
    [<minecraft:string>, <minecraft:stick>, <minecraft:string>],
    [<minecraft:stick>, <minecraft:string>, <minecraft:stick>],
    [<minecraft:string>, <minecraft:stick>, <minecraft:string>]
]);

//Flint
recipes.remove(<exnihilocreatio:item_mesh:2>);
recipes.addShaped(<exnihilocreatio:item_mesh:2>, [
    [<minecraft:flint>, <excompressum:compressed_block:5>, <minecraft:flint>],
    [<minecraft:flint>, <exnihilocreatio:item_mesh:1>, <minecraft:flint>],
    [<minecraft:flint>, <excompressum:compressed_block:5>, <minecraft:flint>]
]);

//Iron
recipes.remove(<exnihilocreatio:item_mesh:3>);
recipes.addShaped(<exnihilocreatio:item_mesh:3>, [
    [<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <exnihilocreatio:item_mesh:2>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_block>, <minecraft:iron_ingot>]
]);

//Diamond
recipes.remove(<exnihilocreatio:item_mesh:4>);
recipes.addShaped(<exnihilocreatio:item_mesh:4>, [
    [<minecraft:diamond>, <minecraft:diamond_block>, <minecraft:diamond>],
    [<minecraft:diamond>, <exnihilocreatio:item_mesh:3>, <minecraft:diamond>],
    [<minecraft:diamond>, <minecraft:diamond_block>, <minecraft:diamond>]
]);

/* Crucible Heat Sources */
mods.exnihilocreatio.Heat.removeAll();

//Magma Block
heat(<minecraft:magma>, 2);

//Glowstone
heat(<minecraft:glowstone>, 2);

//Flint & Steel
heat(<minecraft:flint_and_steel>, 4);

//Flint & Steel
heat(<botania:blazeblock>, 10);

/*
//Lava
heat(<minecraft:lava_bucket>, 3);

//Blazing Pyrotheum
heat(<forge:bucketfilled>.withTag({FluidName: "pyrotheum"}), 15);

//Fire Water
heat(<forge:bucketfilled>.withTag({FluidName: "fire_water"}), 5);
*/

//Torch
heat(<minecraft:torch>, 1);

//Superheating Element
heat(<mekanism:basicblock2:5>, 50);

//Awakened Draconium Block
heat(<draconicevolution:draconic_block>, 100);

//Infinity Block
heat(<avaritia:block_resource:1>, 500);