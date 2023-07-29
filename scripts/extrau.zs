/* Var */
var survival = <extrautils2:machine>.withTag({Type: "extrautils2:generator_survival"});
var furnace = <extrautils2:machine>.withTag({Type: "extrautils2:furnace"});
var heated = <extrautils2:machine>.withTag({Type: "extrautils2:generator_redstone"});
var halitosis = <extrautils2:machine>.withTag({Type: "extrautils2:generator_dragonsbreath"});
var netherstar = <extrautils2:machine>.withTag({Type: "extrautils2:generator_netherstar"});
var overclocked = <extrautils2:machine>.withTag({Type: "extrautils2:generator_overclock"});
var culinary = <extrautils2:machine>.withTag({Type: "extrautils2:generator_culinary"});
var magmatic = <extrautils2:machine>.withTag({Type: "extrautils2:generator_lava"});
var frosty = <extrautils2:machine>.withTag({Type: "extrautils2:generator_ice"});
var ender = <extrautils2:machine>.withTag({Type: "extrautils2:generator_ender"});
var dischantment = <extrautils2:machine>.withTag({Type: "extrautils2:generator_enchant"});
var explosive = <extrautils2:machine>.withTag({Type: "extrautils2:generator_tnt"});
var pink = <extrautils2:machine>.withTag({Type: "extrautils2:generator_pink"});
var slimey = <extrautils2:machine>.withTag({Type: "extrautils2:generator_slime"});
var death = <extrautils2:machine>.withTag({Type: "extrautils2:generator_death"});
var potion = <extrautils2:machine>.withTag({Type: "extrautils2:generator_potion"});
var enchanter = <extrautils2:machine>.withTag({Type: "extrautils2:enchanter"});
var crusher = <extrautils2:machine>.withTag({Type: "extrautils2:crusher"});
var furnaceGenerator = <extrautils2:machine>.withTag({Type: "extrautils2:generator"});

/* Planks */
//Ferrous-Juniper
recipes.addShapeless(<extrautils2:ironwood_planks>*2, [<extrautils2:ironwood_log>]);

//Raw Ferrous-Juniper
recipes.addShapeless(<extrautils2:ironwood_planks:1>*2, [<extrautils2:ironwood_log:1>]);

//Watering can
recipes.remove(<extrautils2:wateringcan:979>);
recipes.remove(<extrautils2:wateringcan>);

//Angel ring
recipes.remove(<extrautils2:angelring>);
recipes.addShaped(<extrautils2:angelring>, [
    [<ore:blockGlassHardened>, <extendedcrafting:singularity:5>, <ore:blockGlassHardened>],
    [<minecraft:gold_block>, <extrautils2:chickenring:1>, <minecraft:gold_block>],
    [<extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}, No_Place: 1 as byte}), <minecraft:gold_block>, <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}, No_Place: 1 as byte})]
]);

/* Mills */
//Lava
recipes.remove(<extrautils2:passivegenerator:2>);
recipes.addShaped(<extrautils2:passivegenerator:2>, [
    [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
    [<extrautils2:decorativesolid:3>, <extrautils2:passivegenerator:7>, <extrautils2:decorativesolid:3>],
    [<extrautils2:decorativesolid:3>, <minecraft:gold_block>, <extrautils2:decorativesolid:3>]
]);

//Water
recipes.remove(<extrautils2:passivegenerator:3>);
recipes.addShaped(<extrautils2:passivegenerator:3>, [
    [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
    [<tp:redstone_ingot>, <extrautils2:passivegenerator:7>, <tp:redstone_ingot>],
    [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]
]);

//Wind
recipes.remove(<extrautils2:passivegenerator:4>);
recipes.addShaped(<extrautils2:passivegenerator:4>, [
    [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
    [null, <tp:redstone_ingot>, <extrautils2:passivegenerator:7>],
    [<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]
]);

//Fire
recipes.remove(<extrautils2:passivegenerator:5>);
recipes.addShaped(<extrautils2:passivegenerator:5>, [
    [<extrautils2:decorativesolid:3>, <extrautils2:passivegenerator:7>, <extrautils2:decorativesolid:3>],
    [<extrautils2:decorativesolid:3>, <tp:redstone_ingot>, <extrautils2:decorativesolid:3>],
    [<extrautils2:decorativesolid:3>, <minecraft:nether_brick_fence>, <extrautils2:decorativesolid:3>]
]);

//Dragon Egg
recipes.remove(<extrautils2:passivegenerator:8>);
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:passivegenerator:8>, [
	[<extrautils2:passivegenerator:2>, <ore:netherStar>, <ore:pearlEnderEye>, <ore:netherStar>, <extrautils2:passivegenerator:3>], 
	[<ore:netherStar>, <mysticalagradditions:dragon_egg_essence>, <mysticalagradditions:dragon_egg_essence>, <mysticalagradditions:dragon_egg_essence>, <ore:netherStar>], 
	[<ore:eyeofredstone>, <mysticalagradditions:dragon_egg_essence>, <extrautils2:passivegenerator:7>, <mysticalagradditions:dragon_egg_essence>, <ore:eyeofredstone>], 
	[<ore:netherStar>, <mysticalagradditions:dragon_egg_essence>, <mysticalagradditions:dragon_egg_essence>, <mysticalagradditions:dragon_egg_essence>, <ore:netherStar>], 
	[<extrautils2:passivegenerator:5>, <ore:netherStar>, <ore:eyeofredstone>, <ore:netherStar>, <extrautils2:passivegenerator:4>]
]);

//Machine block
recipes.remove(<extrautils2:machine>);
recipes.addShaped(<extrautils2:machine>, [
    [<pneumaticcraft:ingot_iron_compressed>, <enderio:item_alloy_ingot:3>, <pneumaticcraft:ingot_iron_compressed>],
    [<enderio:item_alloy_ingot:3>, <actuallyadditions:block_giant_chest_large>, <enderio:item_alloy_ingot:3>],
    [<pneumaticcraft:ingot_iron_compressed>, <enderio:item_alloy_ingot:3>, <pneumaticcraft:ingot_iron_compressed>]
]);

//Resonator
recipes.remove(<extrautils2:resonator>);
recipes.addShaped(<extrautils2:resonator>, [
    [<immersiveengineering:wirecoil:5>, <mysticalagriculture:coal_block>, <immersiveengineering:wirecoil:5>],
    [<minecraft:iron_ingot>, <extrautils2:ingredients>, <minecraft:iron_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

/* Angel Ring */
recipes.remove(<extrautils2:angelring:5>);
recipes.remove(<extrautils2:angelring:4>);
recipes.remove(<extrautils2:angelring:3>);
recipes.remove(<extrautils2:angelring:2>);
recipes.remove(<extrautils2:angelring:1>);

//Quantum Quarry
recipes.remove(<extrautils2:quarry>);
recipes.remove(<extrautils2:quarryproxy>);

/* Generators */
//Survival
recipes.addShaped(survival, [
    [<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>],
    [<extrautils2:compressedcobblestone>, <minecraft:coal_block>, <extrautils2:compressedcobblestone>],
    [<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>]
]);

//Furnace
recipes.addShaped(furnace, [
    [<minecraft:coal>, <minecraft:furnace>, <minecraft:coal>],
    [<minecraft:coal>, <extrautils2:machine>, <minecraft:coal>],
    [<minecraft:coal>, <minecraft:furnace>, <minecraft:coal>]
]);

//Heated
recipes.addShaped(heated, [
    [<ore:stone>, <minecraft:redstone_block>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <minecraft:lava_bucket>, <ore:stone>]
]);

//Halitosis
recipes.addShaped(halitosis, [
    [<ore:stone>, <minecraft:dragon_breath>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <minecraft:brewing_stand>, <ore:stone>]
]);

//Netherstar
recipes.addShaped(netherstar, [
    [<ore:stone>, <extendedcrafting:storage:2>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <extendedcrafting:storage:2>, <ore:stone>]
]);

//Overclocked
recipes.addShaped(overclocked, [
    [<ore:stone>, <embers:clockwork_attenuator>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <extrautils2:redstoneclock>, <ore:stone>]
]);

//Culinary
recipes.addShaped(culinary, [
    [<ore:stone>, <harvestcraft:chickenparmasanitem>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <harvestcraft:porklomeinitem>, <ore:stone>]
]);

//Magmatic
recipes.addShaped(magmatic, [
    [<ore:stone>, <actuallyadditions:block_lava_factory_controller>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <actuallyadditions:block_lava_factory_controller>, <ore:stone>]
]);

//Frosty
recipes.addShaped(frosty, [
    [<ore:stone>, <minecraft:packed_ice>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <minecraft:packed_ice>, <ore:stone>]
]);

//Ender
recipes.addShaped(ender, [
    [<ore:stone>, <actuallyadditions:block_misc:6>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <actuallyadditions:block_misc:6>, <ore:stone>]
]);

//Dischantment
recipes.addShaped(dischantment, [
    [<ore:stone>, <draconicevolution:diss_enchanter>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <minecraft:book>, <ore:stone>]
]);

//Explosive
recipes.addShaped(explosive, [
    [<ore:stone>, <mekanism:obsidiantnt>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <mekanism:obsidiantnt>, <ore:stone>]
]);

//Pink
recipes.addShaped(pink, [
    [<ore:stone>, <industrialforegoing:pink_slime_ingot>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <ore:dyePink>, <ore:stone>]
]);

//Slimey
recipes.addShaped(slimey, [
    [<ore:stone>, <ore:slimeball>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <cookingforblockheads:cow_jar>, <ore:stone>]
]);

//Death
recipes.addShaped(death, [
    [<ore:stone>, <minecraft:skull:1>, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <minecraft:dragon_egg>, <ore:stone>]
]);

//Potion
recipes.addShaped(potion, [
    [<ore:stone>, <minecraft:potion>.withTag({Potion: "minecraft:strong_regeneration"}), <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <minecraft:potion>.withTag({Potion: "minecraft:strong_harming"}), <ore:stone>]
]);

//Enchanter
recipes.addShaped(enchanter, [
    [<minecraft:experience_bottle>, <minecraft:enchanting_table>, <minecraft:experience_bottle>],
    [<minecraft:experience_bottle>, <extrautils2:machine>, <minecraft:experience_bottle>],
    [<minecraft:experience_bottle>, <minecraft:iron_block>, <minecraft:experience_bottle>]
]);

//Crusher
recipes.addShaped(crusher, [
    [<deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_redstone>],
    [<deepmoblearning:soot_covered_redstone>, <extrautils2:machine>, <deepmoblearning:soot_covered_redstone>],
    [<deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_redstone>, <deepmoblearning:soot_covered_redstone>]
]);

//Furnace
recipes.addShaped(furnaceGenerator, [
    [<ore:stone>, furnace, <ore:stone>],
    [<ore:stone>, survival, <ore:stone>],
    [<ore:stone>, <mysticalagriculture:inferium_furnace>, <ore:stone>]
]);