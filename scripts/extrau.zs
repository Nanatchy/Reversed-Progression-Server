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
mods.extendedcrafting.TableCrafting.addShaped(2, <extrautils2:passivegenerator:8>, [
	[<extrautils2:passivegenerator:2>, <ore:netherStar>, <ore:pearlEnderEye>, <ore:netherStar>, <extrautils2:passivegenerator:3>], 
	[<ore:netherStar>, <mysticalagradditions:dragon_egg_essence>, <mysticalagradditions:dragon_egg_essence>, <mysticalagradditions:dragon_egg_essence>, <ore:netherStar>], 
	[<ore:eyeofredstone>, <mysticalagradditions:dragon_egg_essence>, <extrautils2:passivegenerator:7>, <mysticalagradditions:dragon_egg_essence>, <ore:eyeofredstone>], 
	[<ore:netherStar>, <mysticalagradditions:dragon_egg_essence>, <mysticalagradditions:dragon_egg_essence>, <mysticalagradditions:dragon_egg_essence>, <ore:netherStar>], 
	[<extrautils2:passivegenerator:5>, <ore:netherStar>, <ore:eyeofredstone>, <ore:netherStar>, <extrautils2:passivegenerator:4>]
]);