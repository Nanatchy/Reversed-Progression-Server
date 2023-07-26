//Wooden hopper
recipes.remove(<tconstruct:wooden_hopper>);
recipes.addShaped(<tconstruct:wooden_hopper>, [
    [<ore:plankTreatedWood>, null, <ore:plankTreatedWood>],
    [<ore:plankTreatedWood>, <minecraft:chest>, <ore:plankTreatedWood>],
    [null, <ore:plankTreatedWood>, null]
]);

//Grout
recipes.remove(<tconstruct:soil>);
recipes.addShaped(<tconstruct:soil>*8, [
    [<minecraft:soul_sand>, <minecraft:sandstone>, <minecraft:soul_sand>],
    [<minecraft:sandstone>, <tconstruct:dried_clay>, <minecraft:sandstone>],
    [<minecraft:soul_sand>, <minecraft:sandstone>, <minecraft:soul_sand>]
]);

//Dried clay
mods.tconstruct.Drying.removeRecipe(<tconstruct:dried_clay>, <minecraft:clay>);
mods.tconstruct.Drying.addRecipe(<tconstruct:dried_clay>, <minecraft:clay>, 900);

//Molten Porcelain Clay
//mods.tconstruct.Melting.addRecipe(ILiquidStack output, IIngredient input, @Optional int temp);
mods.tconstruct.Melting.addRecipe(<liquid:molten_porcelainclay> * 576, <ceramics:porcelain>);

//Molten Hempcrete
mods.tconstruct.Melting.addRecipe(<liquid:molten_hempcrete> * 576, <immersiveengineering:stone_decoration:4>);

//Molten Dried brick
mods.tconstruct.Melting.addRecipe(<liquid:molten_driedbrick> * 576, <tconstruct:dried_clay:1>);

//Molten Coke Brick (Alloy)
//mods.tconstruct.Alloy.addRecipe(ILiquidStack output, ILiquidStack[] inputs);
mods.tconstruct.Alloy.addRecipe(<liquid:molten_cokebrick>*1000, [<liquid:molten_porcelainclay>*250, <liquid:molten_hempcrete>*250, <liquid:molten_driedbrick>*250, <liquid:stone>*250]);

//Coke Brick (Casting Basin)
//mods.tconstruct.Casting.addBasinRecipe(IItemStack output, IIngredient cast, ILiquidStack fluid, int amount, @Optional boolean consumeCast, @Optional int time);
mods.tconstruct.Casting.addBasinRecipe(<immersiveengineering:stone_decoration>, <minecraft:brick_block>, <liquid:molten_cokebrick>, 1000, true);

//Blank Pattern
recipes.remove(<tconstruct:pattern>);

/* Gears */
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:25>, <liquid:gold>); //Gold
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:26>, <liquid:molten_diamond>); //Diamond
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:27>, <liquid:emerald>); //Emerald
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:256>, <liquid:copper>); //Copper
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:257>, <liquid:tin>); //Tin
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:258>, <liquid:silver>); //Silver
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:259>, <liquid:lead>); //Lead
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:260>, <liquid:aluminum>); //Aluminum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:261>, <liquid:nickel>); //Nickel
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:262>, <liquid:platinum>); //Platinum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:263>, <liquid:iridium>); //Iridium
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:264>, <liquid:molten_mithril>); //Mana Infused
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:288>, <liquid:steel>); //Steel
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:289>, <liquid:electrum>); //Electrum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:290>, <liquid:invar>); //Invar
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:291>, <liquid:bronze>); //Bronze
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:292>, <liquid:constantan>); //Constantan
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:293>, <liquid:signalum>); //Signalum
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:294>, <liquid:lumium>); //Lumium
mods.tconstruct.Casting.removeTableRecipe(<thermalfoundation:material:295>, <liquid:enderium>); //Enderium