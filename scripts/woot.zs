//Heart Controller
recipes.remove(<woot:factory>);
recipes.addShaped(<woot:factory>, [
    [<woot:factorybase>, <woot:factorycore>, <draconicevolution:dragon_heart>]
]);

//Stygian
recipes.remove(<woot:stygianironingot>);
mods.bloodmagic.BloodAltar.addRecipe(<woot:stygianironingot>, <woot:stygianirondust>, 2, 15000, 20, 20);
mods.bloodmagic.BloodAltar.addRecipe(<woot:stygianironingot>, <woot:stygianironore>, 2, 15000, 20, 20);