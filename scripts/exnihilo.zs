import mods.exnihilocreatio.Sieve.addStringMeshRecipe as mesh;
import mods.exnihilocreatio.Sieve.addFlintMeshRecipe as flintMesh;
import mods.exnihilocreatio.Sieve.addIronMeshRecipe as ironMesh;
import mods.exnihilocreatio.Sieve.addDiamondMeshRecipe as diamondMesh;
import mods.exnihilocreatio.Hammer.addRecipe as hammer;
import mods.exnihilocreatio.Heat.addRecipe as heat;
import mods.exnihilocreatio.Sieve;

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
Sieve.removeAll();

//Gravel
mesh(<minecraft:gravel>, <minecraft:flint>, 0.25);
flintMesh(<minecraft:gravel>, <minecraft:flint>, 0.25);
flintMesh(<minecraft:gravel>, <minecraft:coal>, 0.125);
flintMesh(<minecraft:gravel>, <minecraft:dye:4>, 0.15);
flintMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_platinum>, 0.02);
flintMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_copper>, 0.05);
flintMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_nickel>, 0.05);
flintMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_gold>, 0.05);
flintMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_iron>, 0.1);
ironMesh(<minecraft:gravel>, <minecraft:flint>, 0.25);
ironMesh(<minecraft:gravel>, <minecraft:coal>, 0.15);
ironMesh(<minecraft:gravel>, <minecraft:dye:4>, 0.075);
ironMesh(<minecraft:gravel>, <minecraft:diamond>, 0.008);
ironMesh(<minecraft:gravel>, <minecraft:emerald>, 0.008);
ironMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_platinum>, 0.04);
ironMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_copper>, 0.075);
ironMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_nickel>, 0.075);
ironMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_gold>, 0.075);
ironMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_iron>, 0.15);
ironMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_uranium>, 0.05);
ironMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_osmium>, 0.05);
diamondMesh(<minecraft:gravel>, <minecraft:flint>, 0.25);
diamondMesh(<minecraft:gravel>, <minecraft:coal>, 0.2);
diamondMesh(<minecraft:gravel>, <minecraft:dye:4>, 0.1);
diamondMesh(<minecraft:gravel>, <minecraft:diamond>, 0.016);
diamondMesh(<minecraft:gravel>, <minecraft:emerald>, 0.016);
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_platinum>, 0.12);
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_copper>, 0.15);
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_nickel>, 0.15);
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_gold>, 0.15);
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_iron>, 0.25);
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_uranium>, 0.1);
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_osmium>, 0.1);
diamondMesh(<minecraft:gravel>, <exnihilocreatio:item_ore_lead>, 0.02);

//Sand
mesh(<minecraft:sand>, <minecraft:dye:3>, 0.03);
flintMesh(<minecraft:sand>, <minecraft:dye:3>, 0.06);
flintMesh(<minecraft:sand>, <exnihilocreatio:item_ore_aluminium>, 0.05);
flintMesh(<minecraft:sand>, <exnihilocreatio:item_ore_tin>, 0.05);
ironMesh(<minecraft:sand>, <minecraft:dye:3>, 0.09);
ironMesh(<minecraft:sand>, <exnihilocreatio:item_ore_aluminium>, 0.075);
ironMesh(<minecraft:sand>, <exnihilocreatio:item_ore_tin>, 0.075);
ironMesh(<minecraft:sand>, <actuallyadditions:item_misc:5>, 0.02);
diamondMesh(<minecraft:sand>, <minecraft:dye:3>, 0.12);
diamondMesh(<minecraft:sand>, <exnihilocreatio:item_ore_aluminium>, 0.25);
diamondMesh(<minecraft:sand>, <exnihilocreatio:item_ore_tin>, 0.25);
diamondMesh(<minecraft:sand>, <actuallyadditions:item_misc:5>, 0.05);
diamondMesh(<minecraft:sand>, <minecraft:prismarine_shard>, 0.02);

//Dust
mesh(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.2);
mesh(<exnihilocreatio:block_dust>, <minecraft:gunpowder>, 0.1);
flintMesh(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.2);
flintMesh(<exnihilocreatio:block_dust>, <minecraft:gunpowder>, 0.12);
ironMesh(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.2);
ironMesh(<exnihilocreatio:block_dust>, <minecraft:gunpowder>, 0.14);
ironMesh(<exnihilocreatio:block_dust>, <minecraft:redstone>, 0.125);
ironMesh(<exnihilocreatio:block_dust>, <minecraft:glowstone_dust>, 0.0625);
ironMesh(<exnihilocreatio:block_dust>, <minecraft:blaze_powder>, 0.05);
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:dye:15>, 0.2);
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:gunpowder>, 0.16);
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:redstone>, 0.25);
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:glowstone_dust>, 0.125);
diamondMesh(<exnihilocreatio:block_dust>, <minecraft:blaze_powder>, 0.075);
diamondMesh(<exnihilocreatio:block_dust>, <enderio:item_material:20>, 0.018);

//Crushed Netherrack
flintMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_gold>, 0.25);
flintMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_ardite>, 0.1);
flintMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_cobalt>, 0.1);
ironMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_gold>, 0.25);
ironMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_ardite>, 0.2);
ironMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_cobalt>, 0.2);
ironMesh(<exnihilocreatio:block_netherrack_crushed>, <draconicevolution:draconium_dust>, 0.02);
ironMesh(<exnihilocreatio:block_netherrack_crushed>, <minecraft:blaze_powder>, 0.05);
diamondMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_gold>, 0.4);
diamondMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_ardite>, 0.3);
diamondMesh(<exnihilocreatio:block_netherrack_crushed>, <exnihilocreatio:item_ore_cobalt>, 0.3);
diamondMesh(<exnihilocreatio:block_netherrack_crushed>, <draconicevolution:draconium_dust>, 0.03);
diamondMesh(<exnihilocreatio:block_netherrack_crushed>, <minecraft:blaze_powder>, 0.1);

//Crushed Endstone
ironMesh(<exnihilocreatio:block_endstone_crushed>, <exnihilocreatio:item_ore_aluminium>, 0.15);
ironMesh(<exnihilocreatio:block_endstone_crushed>, <exnihilocreatio:item_ore_tin>, 0.15);
ironMesh(<exnihilocreatio:block_endstone_crushed>, <draconicevolution:draconium_dust>, 0.04);
diamondMesh(<exnihilocreatio:block_endstone_crushed>, <exnihilocreatio:item_ore_aluminium>, 0.25);
diamondMesh(<exnihilocreatio:block_endstone_crushed>, <exnihilocreatio:item_ore_tin>, 0.25);
diamondMesh(<exnihilocreatio:block_endstone_crushed>, <draconicevolution:draconium_dust>, 0.08);
diamondMesh(<exnihilocreatio:block_endstone_crushed>, <astralsorcery:itemcraftingcomponent>, 0.05);

//Soul sand
mesh(<minecraft:soul_sand>, <minecraft:nether_wart>, 0.1);
flintMesh(<minecraft:soul_sand>, <minecraft:nether_wart>, 0.15);
flintMesh(<minecraft:soul_sand>, <minecraft:quartz>, 0.7);
ironMesh(<minecraft:soul_sand>, <minecraft:nether_wart>, 0.2);
ironMesh(<minecraft:soul_sand>, <minecraft:quartz>, 0.8);
diamondMesh(<minecraft:soul_sand>, <minecraft:nether_wart>, 0.25);
diamondMesh(<minecraft:soul_sand>, <minecraft:quartz>, 0.9);
diamondMesh(<minecraft:soul_sand>, <minecraft:ghast_tear>, 0.02);

//Dirt
mesh(<minecraft:dirt>, <minecraft:wheat_seeds>, 0.7);
mesh(<minecraft:dirt>, <minecraft:melon_seeds>, 0.35);
mesh(<minecraft:dirt>, <minecraft:pumpkin_seeds>, 0.35);
mesh(<minecraft:dirt>, <exnihilocreatio:item_material:3>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_material:4>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_oak>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_spruce>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_birch>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_jungle>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_acacia>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_darkoak>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_cactus>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_sugarcane>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_carrot>, 0.05);
mesh(<minecraft:dirt>, <exnihilocreatio:item_seed_potato>, 0.05);
flintMesh(<minecraft:dirt>, <minecraft:wheat_seeds>, 0.7);
flintMesh(<minecraft:dirt>, <minecraft:melon_seeds>, 0.35);
flintMesh(<minecraft:dirt>, <minecraft:pumpkin_seeds>, 0.35);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_material:3>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_material:4>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_oak>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_spruce>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_birch>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_jungle>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_acacia>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_darkoak>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_cactus>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_sugarcane>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_carrot>, 0.05);
flintMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_potato>, 0.05);
ironMesh(<minecraft:dirt>, <minecraft:wheat_seeds>, 0.7);
ironMesh(<minecraft:dirt>, <minecraft:melon_seeds>, 0.35);
ironMesh(<minecraft:dirt>, <minecraft:pumpkin_seeds>, 0.35);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_material:3>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_material:4>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_oak>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_spruce>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_birch>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_jungle>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_acacia>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_darkoak>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_cactus>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_sugarcane>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_carrot>, 0.05);
ironMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_potato>, 0.05);
diamondMesh(<minecraft:dirt>, <minecraft:wheat_seeds>, 0.7);
diamondMesh(<minecraft:dirt>, <minecraft:melon_seeds>, 0.35);
diamondMesh(<minecraft:dirt>, <minecraft:pumpkin_seeds>, 0.35);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_material:3>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_material:4>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_oak>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_spruce>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_birch>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_jungle>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_acacia>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_darkoak>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_cactus>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_sugarcane>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_carrot>, 0.05);
diamondMesh(<minecraft:dirt>, <exnihilocreatio:item_seed_potato>, 0.05);

/* Actually Seeds */
//Canola
mesh(<minecraft:dirt>, <actuallyadditions:item_canola_seed>, 0.5);

//Rice
mesh(<minecraft:dirt>, <actuallyadditions:item_rice_seed>, 0.5);

//Flax
mesh(<minecraft:dirt>, <actuallyadditions:item_flax_seed>, 0.5);

//Coffee
mesh(<minecraft:dirt>, <actuallyadditions:item_coffee_seed>, 0.5);

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

//ExCompressum Iron Mesh
recipes.remove(<excompressum:iron_mesh>);

//ExCompressum Compressed Gravel
recipes.remove(<excompressum:compressed_block:2>);

//ExCompressum Compressed Sand
recipes.remove(<excompressum:compressed_block:3>);