import mods.pneumaticcraft.pressurechamber.addRecipe as chamber;

//Litherite
recipes.remove(<environmentaltech:litherite_crystal>);
chamber([<industrialforegoing:artificial_dye:13> * 2, <industrialforegoing:artificial_dye:5> * 2, <minecraft:flint> * 4, <avaritia:resource>], 3.0, [<environmentaltech:litherite_crystal> * 4]);

//Interconnect
recipes.removeByRecipeName('environmentaltech:m_multiblocks/interconnect');