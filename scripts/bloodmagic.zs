//Blood Altar
recipes.remove(<bloodmagic:altar>);
recipes.addShaped(<bloodmagic:altar>, [
    [<botania:storage:4>, null, <botania:storage:4>],
    [<botania:storage:4>, <mysticalagriculture:supremium_furnace>, <botania:storage:4>],
    [<industrialforegoing:pink_slime_ingot>, <bloodmagic:monster_soul>, <industrialforegoing:pink_slime_ingot>]
]);

//Blank Slate
mods.bloodmagic.BloodAltar.removeRecipe(<bloodmagic:slate>);
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:slate>, <refinedstorage:pattern>, 1, 1000, 100, 10);

//Steel Casing
mods.bloodmagic.BloodAltar.addRecipe(<mekanism:basicblock:8>, <teslacorelib:machine_case>, 4, 100000, 10000, 5000);

/* Orbs */
//Weak
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:weak"}), <botania:manaresource:9>, 0, 2000, 2, 1);

//Appprentice
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:apprentice"}), <astralsorcery:itemcraftingcomponent:4>, 1, 5000, 5, 5);

//Magician
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:magician"}), <enderio:item_material:19>, 2, 25000, 20, 20);

//Master
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:master"}), <industrialforegoing:pink_slime_ingot>, 3, 40000, 30, 50);

//Archmage
mods.bloodmagic.BloodAltar.addRecipe(<bloodmagic:blood_orb>.withTag({orb: "bloodmagic:archmage"}), <enderio:item_capacitor_stellar>, 4, 80000, 50, 100);