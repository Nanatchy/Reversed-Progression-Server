/* Cobblestone generator */
//Tier 1
recipes.remove(<tp:cobblegen_block>);
recipes.addShaped(<tp:cobblegen_block>, [
    [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>],
    [<minecraft:water_bucket>, <tconstruct:clear_glass>, <minecraft:lava_bucket>],
    [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]
]);

recipes.remove(<tp:cobblegen_block>);
recipes.addShaped(<tp:cobblegen_block>, [
    [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>],
    [<minecraft:lava_bucket>, <tconstruct:clear_glass>, <minecraft:water_bucket>],
    [<ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>, <ore:compressed1xCobblestone>]
]);

//Tier 2
recipes.remove(<tp:iron_cobblegen_block>);
recipes.addShaped(<tp:iron_cobblegen_block>, [
    [<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>],
    [<minecraft:iron_block>, <tp:cobblegen_block>, <minecraft:iron_block>],
    [<minecraft:iron_block>, <minecraft:iron_block>, <minecraft:iron_block>]
]);

//Tier 3
recipes.remove(<tp:diamond_cobblegen_block>);
recipes.addShaped(<tp:diamond_cobblegen_block>, [
    [<minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:diamond_block>],
    [<minecraft:diamond_block>, <tp:iron_cobblegen_block>, <minecraft:diamond_block>],
    [<minecraft:diamond_block>, <minecraft:diamond_block>, <minecraft:diamond_block>]
]);

//Tier 4
recipes.remove(<tp:blaze_cobblegen_block>);
recipes.addShaped(<tp:blaze_cobblegen_block>, [
    [<botania:blazeblock>, <botania:blazeblock>, <botania:blazeblock>],
    [<botania:blazeblock>, <tp:diamond_cobblegen_block>, <botania:blazeblock>],
    [<botania:blazeblock>, <botania:blazeblock>, <botania:blazeblock>]
]);

//Tier 5
recipes.remove(<tp:emerald_cobblegen_block>);
recipes.addShaped(<tp:emerald_cobblegen_block>, [
    [<minecraft:emerald_block>, <minecraft:emerald_block>, <minecraft:emerald_block>],
    [<minecraft:emerald_block>, <tp:blaze_cobblegen_block>, <minecraft:emerald_block>],
    [<minecraft:emerald_block>, <minecraft:emerald_block>, <minecraft:emerald_block>]
]);

/* ----- */

/* Dragon armor */
//Helmet
recipes.remove(<tp:dragon_helmet>);
recipes.addShaped(<tp:dragon_helmet>, [
    [null, null, null],
    [<extendedcrafting:material:40>, <deepmoblearning:pristine_matter_dragon>, <extendedcrafting:material:40>],
    [<tp:dragon_scale>, null, <tp:dragon_scale>]
]);

//Chestplate
recipes.remove(<tp:dragon_chestplate>);
recipes.addShaped(<tp:dragon_chestplate>, [
    [<tp:dragon_scale>, null, <tp:dragon_scale>],
    [<tp:dragon_scale>, <deepmoblearning:pristine_matter_dragon>, <tp:dragon_scale>],
    [<extendedcrafting:material:40>, <extendedcrafting:material:40>, <extendedcrafting:material:40>]
]);

//Leggings
recipes.remove(<tp:dragon_leggings>);
recipes.addShaped(<tp:dragon_leggings>, [
    [<extendedcrafting:material:40>, <deepmoblearning:pristine_matter_dragon>, <extendedcrafting:material:40>],
    [<tp:dragon_scale>, null, <tp:dragon_scale>],
    [<tp:dragon_scale>, null, <tp:dragon_scale>]
]);

//Boots
recipes.remove(<tp:dragon_boots>);
recipes.addShaped(<tp:dragon_boots>, [
    [null, null, null],
    [<deepmoblearning:pristine_matter_dragon>, null, <extendedcrafting:material:40>],
    [<tp:dragon_scale>, null, <tp:dragon_scale>]
]);

/* ----- */

//Watering Can
recipes.remove(<tp:watering_can>);
recipes.addShaped(<tp:watering_can>, [
    [<ore:plateIron>, <ore:dyeWhite>, null],
    [<ore:plateIron>, <tp:infin_bucket>, <ore:plateIron>],
    [null, <ore:plateIron>, null]
]);

//Nether Star Block
recipes.remove(<tp:netherstar_block>);

/* Wither Armor */
//Helmet
recipes.remove(<tp:wither_helmet>);
recipes.addShaped(<tp:wither_helmet>, [
    [<darkutils:wither_block>, <deepmoblearning:pristine_matter_wither>, <darkutils:wither_block>],
    [<tconstruct:materials:17>, null, <tconstruct:materials:17>]
]);

//Chestplate
recipes.remove(<tp:wither_chestplate>);
recipes.addShaped(<tp:wither_chestplate>, [
    [<tconstruct:materials:17>, null, <tconstruct:materials:17>],
    [<tconstruct:materials:17>, <deepmoblearning:pristine_matter_wither>, <tconstruct:materials:17>],
    [<darkutils:wither_block>, <darkutils:wither_block>, <darkutils:wither_block>]
]);

//Leggings
recipes.remove(<tp:wither_leggings>);
recipes.addShaped(<tp:wither_leggings>, [
    [<darkutils:wither_block>, <deepmoblearning:pristine_matter_wither>, <darkutils:wither_block>],
    [<tconstruct:materials:17>, null, <tconstruct:materials:17>],
    [<tconstruct:materials:17>, null, <tconstruct:materials:17>]
]);

//Boots
recipes.remove(<tp:wither_boots>);
recipes.addShaped(<tp:wither_boots>, [
    [null, null, null],
    [<deepmoblearning:pristine_matter_wither>, null, <darkutils:wither_block>],
    [<tconstruct:materials:17>, null, <tconstruct:materials:17>]
]);