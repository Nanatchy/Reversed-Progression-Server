import mods.thermalexpansion.InductionSmelter.addRecipe as induction;
import mods.botania.Apothecary.addRecipe as petal;
import mods.embers.Alchemy.add as alchemy;
import mods.botania.PureDaisy.addRecipe as daisy;
import mods.extendedcrafting.CompressionCrafting.addRecipe as compression;
import mods.botania.ManaInfusion.addInfusion as pool;

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

//Mana String
mods.botania.ManaInfusion.removeRecipe(<botania:manaresource:16>);
pool(<botania:manaresource:16>, <mysticalagriculture:crafting:23>, 250);