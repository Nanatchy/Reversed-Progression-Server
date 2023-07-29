import mods.pneumaticcraft.pressurechamber.addRecipe as chamber;

//Litherite
recipes.remove(<environmentaltech:litherite_crystal>);
chamber([<botania:dye:13> * 2, <botania:dye:5> * 2, <minecraft:flint> * 4, <avaritia:resource>], 3.0, [<environmentaltech:litherite_crystal> * 4]);

//Interconnect
recipes.removeByRecipeName('environmentaltech:m_multiblocks/interconnect');

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