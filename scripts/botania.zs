import mods.thermalexpansion.InductionSmelter.addRecipe as induction;
import mods.botania.Apothecary.addRecipe as petal;
import mods.embers.Alchemy.add as alchemy;
import mods.botania.PureDaisy.addRecipe as daisy;
import mods.extendedcrafting.CompressionCrafting.addRecipe as compression;
import mods.botania.ManaInfusion.addInfusion as pool;
import mods.botania.RuneAltar.addRecipe as botania;

//Variables
var rock = <botania:livingrock>;
var wood = <botania:livingwood>;

//Petal Apothecary
recipes.remove(<botania:altar>);
induction(<botania:altar>, <minecraft:end_bricks>*5, <botania:petalblock>, 2000);

/* Flowers */
//Pure Daisy
mods.botania.Apothecary.removeRecipe("puredaisy");
alchemy(<botania:specialflower>.withTag({type: "puredaisy"}),
        [<minecraft:red_flower>,
        <ore:petalWhite>,
        <minecraft:dye:15>,
        <ore:petalWhite>,
        <minecraft:dye:15>],
        {"dawnstone":(1 to 1)});

//Livingwood
mods.botania.PureDaisy.removeRecipe(<botania:livingwood>);
daisy(<randomthings:spectrelog:0>, <botania:livingwood>);
daisy(<randomthings:spectrelog:1>, <botania:livingwood>);
daisy(<randomthings:spectrelog:2>, <botania:livingwood>);

//Livingrock
mods.botania.PureDaisy.removeRecipe(<botania:livingrock>);
daisy(<astralsorcery:blockmarble>, <botania:livingrock>);

//Mana Tesseract
recipes.removeByRecipeName("botanicadds:mana_tesseract_bind");

//Gaia Spirit
compression(<botania:manaresource:5> * 2, <mysticalagradditions:stuff:69>, 10, <botanicadds:gaiasteel_ingot>, 500000, 1000);

//Gaiasteel
compression(<botanicadds:gaiasteel_ingot>, <mysticalcreations:gaiasteel_essence>, 32, <extendedcrafting:material:13>, 500000, 10000);

//Mana String
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:16>);
pool(<botania:manaresource:16>, <mysticalagriculture:crafting:23>, 250);

//Mana powder
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:23>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:1>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:2>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:3>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:4>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:5>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:6>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:7>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:8>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:9>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:10>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:11>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:12>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:13>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:14>, 200);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource:23>, <botania:dye:15>, 200);

//Manasteel ingot
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource>);
mods.botania.ManaInfusion.addInfusion(<botania:manaresource>, <thermalfoundation:material:160>, 600);

//Manasteel block
mods.botania.ManaInfusion.removeRecipe(<botania:storage>);
mods.botania.ManaInfusion.addInfusion(<botania:storage>, <thermalfoundation:storage_alloy>, 5400);

//Overgrowth seed
botania(<botania:overgrowthseed>, [<botania:rune>, <botania:rune:1>, <botania:rune:2>, <botania:rune:3>, <botania:rune:4>, <botania:rune:5>, <botania:rune:6>, <botania:rune:7>, <botania:rune:8>], 50000);