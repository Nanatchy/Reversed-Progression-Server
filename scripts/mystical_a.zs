import mods.embers.Stamper;
import mods.embers.Melter;

//Test
import mods.botania.RuneAltar.addRecipe as botania;
import mods.embers.Alchemy.add as alchemy;
import mods.astralsorcery.Altar.addAttunementAltarRecipe as astral;
import mods.bloodmagic.AlchemyTable.addRecipe as blood;
import mods.extendedcrafting.CombinationCrafting.addRecipe as extended;
import mods.thermalexpansion.InductionSmelter.addRecipe as induction;

/* Variables */
//Others
var manaIngot = <botania:manaresource>;
var creative = <mysticalagradditions:stuff:69>;

//Propserity + Base essence
var prosShard = <mysticalagriculture:crafting:5>;
var baseIngot = <mysticalagriculture:crafting:32>;
var prosShardBlock = <mysticalagriculture:storage:5>;
var baseIngotBlock = <mysticalagriculture:ingot_storage>;
var baseLiquid = <liquid:base_essence>;

//Inferium
var infEssence = <mysticalagriculture:crafting>;
var infIngot = <mysticalagriculture:crafting:33>;
var infEssenceBlock = <mysticalagriculture:storage>;
var infIngotBlock = <mysticalagriculture:ingot_storage:1>;
var infLiquid = <liquid:inferium>;

//Prudentium
var prudEssence = <mysticalagriculture:crafting:1>;
var prudIngot = <mysticalagriculture:crafting:34>;
var prudEssenceBlock = <mysticalagriculture:storage:1>;
var prudIngotBlock = <mysticalagriculture:ingot_storage:2>;
var prudLiquid = <liquid:prudentium>;

//Intermedium
var interEssence = <mysticalagriculture:crafting:2>;
var interIngot = <mysticalagriculture:crafting:35>;
var interEssenceBlock = <mysticalagriculture:storage:2>;
var interIngotBlock = <mysticalagriculture:ingot_storage:3>;
var interLiquid = <liquid:intermedium>;

//Superium
var superEssence = <mysticalagriculture:crafting:3>;
var superIngot = <mysticalagriculture:crafting:36>;
var superEssenceBlock = <mysticalagriculture:storage:3>;
var superIngotBlock = <mysticalagriculture:ingot_storage:4>;
var superLiquid = <liquid:superium>;

//Supremium
var supremEssence = <mysticalagriculture:crafting:4>;
var supremIngot = <mysticalagriculture:crafting:37>;
var supremEssenceBlock = <mysticalagriculture:storage:4>;
var supremIngotBlock = <mysticalagriculture:ingot_storage:5>;
var supremLiquid = <liquid:supremium>;

//Insanium
var insEssence = <mysticalagradditions:insanium>;
var insIngot = <mysticalagradditions:insanium:2>;
var insEssenceBlock = <mysticalagradditions:storage>;
var insIngotBlock = <mysticalagradditions:storage:1>;
var insLiquid = <liquid:insanium>;

//Tiered Crafting Seed
var t1CraftSeed = <mysticalagriculture:crafting:17>;
var t2CraftSeed = <mysticalagriculture:crafting:18>;
var t3CraftSeed = <mysticalagriculture:crafting:19>;
var t4CraftSeed = <mysticalagriculture:crafting:20>;
var t5CraftSeed = <mysticalagriculture:crafting:21>;
var t6CraftSeed = <mysticalagradditions:insanium:1>;

//Tiered Chunks
var t1Chunk = <mysticalagriculture:chunk>;
var t2Chunk = <mysticalagriculture:chunk:1>;
var t3Chunk = <mysticalagriculture:chunk:2>;
var t4Chunk = <mysticalagriculture:chunk:3>;
var t5Chunk = <mysticalagriculture:chunk:4>;
var t6Chunk = <mysticalagradditions:insanium:4>;

//Crystal
var infCrystalFull = <matc:inferiumcrystal>;
var infCrystalUsed = <matc:inferiumcrystal>.anyDamage();
val oreDictInfCrystal = <ore:inferiumCrystal>;
oreDictInfCrystal.add(<matc:inferiumcrystal>, <matc:inferiumcrystal:*>);

var prudCrystalFull = <matc:prudentiumcrystal>;
var prudCrystalUsed = <matc:prudentiumcrystal>.anyDamage();
val oreDictPrudCrystal = <ore:prudentiumCrystal>;
oreDictPrudCrystal.add(<matc:prudentiumcrystal>, <matc:prudentiumcrystal:*>);

var interCrystalFull = <matc:intermediumcrystal>;
var interCrystalUsed = <matc:intermediumcrystal>.anyDamage();
val oreDictInterCrystal = <ore:intermediumCrystal>;
oreDictInterCrystal.add(<matc:intermediumcrystal>, <matc:intermediumcrystal:*>);

var superCrystalFull = <matc:superiumcrystal>;
var superCrystalUsed = <matc:superiumcrystal>.anyDamage();
val oreDictSuperCrystal = <ore:superiumCrystal>;
oreDictSuperCrystal.add(<matc:superiumcrystal>, <matc:superiumcrystal:*>);

var supremCrystalFull = <matc:supremiumcrystal>;
var supremCrystalUsed = <matc:supremiumcrystal>.anyDamage();
val oreDictSupremCrystal = <ore:supremiumCrystal>;
oreDictSupremCrystal.add(<matc:supremiumcrystal>, <matc:supremiumcrystal:*>);

var masterCrystal = <mysticalagriculture:master_infusion_crystal>;


/* Molten base essence */
mods.embers.Melter.add(<liquid:base_essence>*144, <mysticalagriculture:crafting:32>);

/* Base essence */
recipes.remove(<mysticalagriculture:crafting:32>);
alchemy(<mysticalagriculture:crafting:32>, [<embers:ingot_dawnstone>, prosShard, prosShard, prosShard, prosShard], {"iron":(1 to 4)});

/* Base crafting seed */
recipes.remove(<mysticalagriculture:crafting:16>);
mods.embers.Stamper.add(<mysticalagriculture:crafting:16>, <liquid:base_essence>*288, <embers:stamp_flat>, <minecraft:wheat_seeds>);



/* Seeds Tier 1 */
//alchemy(IItemStack output, IIngredient[] inputs, int[][string] aspectRange);

//Crafting seed
recipes.remove(<mysticalagriculture:crafting:17>);
alchemy(<mysticalagriculture:crafting:17>, [<mysticalagriculture:crafting:16>, infEssence, infIngot, infEssence, infEssence], {"dawnstone":(1 to 1)});

//Inferium seed
recipes.remove(<mysticalagriculture:tier1_inferium_seeds>);
alchemy(<mysticalagriculture:tier1_inferium_seeds>, [<mysticalagriculture:crafting:17>, infEssenceBlock, infIngot, infEssenceBlock, infEssenceBlock], {"dawnstone":(1 to 1)});

//Stone seed
recipes.remove(<mysticalagriculture:stone_seeds>);
alchemy(<mysticalagriculture:stone_seeds>, [<mysticalagriculture:crafting:17>, <extrautils2:decorativesolid:2>, infIngot, <extrautils2:decorativesolid:2>, <extrautils2:decorativesolid:2>], {"dawnstone":(1 to 1)});

//Dirt seed
recipes.remove(<mysticalagriculture:dirt_seeds>);
alchemy(<mysticalagriculture:dirt_seeds>, [<mysticalagriculture:crafting:17>, <randomthings:fertilizeddirt>, infIngot, <randomthings:fertilizeddirt>, <randomthings:fertilizeddirt>], {"dawnstone":(1 to 1)});

//Nature seed
recipes.remove(<mysticalagriculture:nature_seeds>);
alchemy(<mysticalagriculture:nature_seeds>, [<mysticalagriculture:crafting:17>, <mysticalagriculture:crafting:6>, infIngot, <mysticalagriculture:crafting:6>, <mysticalagriculture:crafting:6>], {"dawnstone":(1 to 1)});

//Wood Seed
recipes.remove(<mysticalagriculture:wood_seeds>);
alchemy(<mysticalagriculture:wood_seeds>, [t1CraftSeed, <tconstruct:firewood>, infIngot, <tconstruct:firewood>, <tconstruct:firewood>], {"dawnstone":(1 to 1)});

//Water seed
recipes.remove(<mysticalagriculture:water_seeds>);
alchemy(<mysticalagriculture:water_seeds>, [t1CraftSeed, <chisel:waterstone>, infIngot, <chisel:waterstone>, <chisel:waterstone>], {"dawnstone":(1 to 1)});

//Ice seed
recipes.remove(<mysticalagriculture:ice_seeds>);
alchemy(<mysticalagriculture:ice_seeds>, [t1CraftSeed, <minecraft:packed_ice>, infIngot, <minecraft:packed_ice>, <minecraft:packed_ice>], {"dawnstone":(1 to 1)});

//Zombi seed
recipes.remove(<mysticalagriculture:zombie_seeds>);
alchemy(<mysticalagriculture:zombie_seeds>, [t1CraftSeed, <mysticalagriculture:chunk:6>, infIngot, <mysticalagriculture:chunk:6>, <mysticalagriculture:chunk:6>], {"dawnstone":(1 to 1)});



/* Seeds Tier 2 */
//botania(IItemStack output, IIngredient[] input, int mana);

//Crafting seed
recipes.remove(<mysticalagriculture:crafting:18>);
botania(<mysticalagriculture:crafting:18>, [prudEssence, prudEssence, prudEssence, prudEssence, t1CraftSeed, prudIngot, prudIngot, manaIngot], 2000);

//Inferium seed
recipes.remove(<mysticalagriculture:tier2_inferium_seeds>);
botania(<mysticalagriculture:tier2_inferium_seeds>, [<mysticalagriculture:tier1_inferium_seeds>, prudEssenceBlock, prudEssenceBlock, prudEssenceBlock, prudEssenceBlock, prudIngot, prudIngot, manaIngot], 2000);

//Fire seed
recipes.remove(<mysticalagriculture:fire_seeds>);
botania(<mysticalagriculture:fire_seeds>, [<chisel:lavastone>, <chisel:lavastone>, <chisel:lavastone>, <chisel:lavastone>, t2CraftSeed, manaIngot], 2000);

//Dye seed
recipes.remove(<mysticalagriculture:dye_seeds>);
botania(<mysticalagriculture:dye_seeds>, [<mysticalagriculture:crafting:7>, <mysticalagriculture:crafting:7>, <mysticalagriculture:crafting:7>, <mysticalagriculture:crafting:7>, t2CraftSeed, manaIngot], 2000);

//Nether seed
recipes.remove(<mysticalagriculture:nether_seeds>);
botania(<mysticalagriculture:nether_seeds>, [<mysticalagriculture:crafting:8>, <mysticalagriculture:crafting:8>, <mysticalagriculture:crafting:8>, <mysticalagriculture:crafting:8>, t2CraftSeed, manaIngot], 2000);

//Coal seed
recipes.remove(<mysticalagriculture:coal_seeds>);
botania(<mysticalagriculture:coal_seeds>, [<ore:blockCharcoal>, <ore:blockCharcoal>, <ore:blockCharcoal>, <ore:blockCharcoal>, t2CraftSeed, manaIngot], 2000);

//Pig seed
recipes.remove(<mysticalagriculture:pig_seeds>);
botania(<mysticalagriculture:pig_seeds>, [<mysticalagriculture:chunk:7>, <mysticalagriculture:chunk:7>, <mysticalagriculture:chunk:7>, <mysticalagriculture:chunk:7>, t2CraftSeed, manaIngot], 2000);

//Chicken seed
recipes.remove(<mysticalagriculture:chicken_seeds>);
botania(<mysticalagriculture:chicken_seeds>, [<mysticalagriculture:chunk:8>, <mysticalagriculture:chunk:8>, <mysticalagriculture:chunk:8>, <mysticalagriculture:chunk:8>, t2CraftSeed, manaIngot], 2000);

//Sheep seed
recipes.remove(<mysticalagriculture:sheep_seeds>);
botania(<mysticalagriculture:sheep_seeds>, [<mysticalagriculture:chunk:10>, <mysticalagriculture:chunk:10>, <mysticalagriculture:chunk:10>, <mysticalagriculture:chunk:10>, t2CraftSeed, manaIngot], 2000);

//Slime seed
recipes.remove(<mysticalagriculture:slime_seeds>);
botania(<mysticalagriculture:slime_seeds>, [<mysticalagriculture:chunk:11>, <mysticalagriculture:chunk:11>, <mysticalagriculture:chunk:11>, <mysticalagriculture:chunk:11>, t2CraftSeed, manaIngot], 2000);

//Silicon seed
recipes.remove(<mysticalagriculture:silicon_seeds>);
botania(<mysticalagriculture:silicon_seeds>, [<refinedstorage:silicon>, <refinedstorage:silicon>, <refinedstorage:silicon>, <refinedstorage:silicon>, t2CraftSeed, manaIngot], 2000);

//Sulfur seed
recipes.remove(<mysticalagriculture:sulfur_seeds>);
botania(<mysticalagriculture:sulfur_seeds>, [<ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>, <ore:dustSulfur>, t2CraftSeed, manaIngot], 2000);

//Aluminum seed
recipes.remove(<mysticalagriculture:aluminum_seeds>);
botania(<mysticalagriculture:aluminum_seeds>, [<ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>, <ore:ingotAluminum>, t2CraftSeed, manaIngot], 2000);

//Copper seed
recipes.remove(<mysticalagriculture:copper_seeds>);
botania(<mysticalagriculture:copper_seeds>, [<ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, <ore:ingotCopper>, t2CraftSeed, manaIngot], 2000);

//Aluminum brass seed
recipes.remove(<mysticalagriculture:aluminum_brass_seeds>);
botania(<mysticalagriculture:aluminum_brass_seeds>, [<tconstruct:ingots:5>, <tconstruct:ingots:5>, <tconstruct:ingots:5>, <tconstruct:ingots:5>, t2CraftSeed, manaIngot], 2000);

//Grains of Infinity seed
recipes.remove(<mysticalagriculture:grains_of_infinity_seeds>);
botania(<mysticalagriculture:grains_of_infinity_seeds>, [<enderio:item_material:20>, <enderio:item_material:20>, <enderio:item_material:20>, <enderio:item_material:20>, t2CraftSeed, manaIngot], 2000);

//Marble seed
recipes.remove(<mysticalagriculture:marble_seeds>);
botania(<mysticalagriculture:marble_seeds>, [<chisel:marble2:7>, <chisel:marble2:7>, <chisel:marble2:7>, <chisel:marble2:7>, t2CraftSeed, manaIngot], 2000);

//Limestone seed
recipes.remove(<mysticalagriculture:limestone_seeds>);
botania(<mysticalagriculture:limestone_seeds>, [<chisel:limestone2:7>, <chisel:limestone2:7>, <chisel:limestone2:7>, <chisel:limestone2:7>, t2CraftSeed, manaIngot], 2000);

//Basalt seed
recipes.remove(<mysticalagriculture:basalt_seeds>);
botania(<mysticalagriculture:basalt_seeds>, [<chisel:basalt2:7>, <chisel:basalt2:7>, <chisel:basalt2:7>, <chisel:basalt2:7>, t2CraftSeed, manaIngot], 2000);

//Cow seed
recipes.remove(<mysticalagriculture:cow_seeds>);
botania(<mysticalagriculture:cow_seeds>, [<mysticalagriculture:chunk:9>, <mysticalagriculture:chunk:9>, <mysticalagriculture:chunk:9>, <mysticalagriculture:chunk:9>, t2CraftSeed, manaIngot], 2000);

//Mystical Flower seed
recipes.remove(<mysticalagriculture:mystical_flower_seeds>);
botania(<mysticalagriculture:mystical_flower_seeds>, [<mysticalagriculture:crafting:10>, <mysticalagriculture:crafting:10>, <mysticalagriculture:crafting:10>, <mysticalagriculture:crafting:10>, t2CraftSeed, manaIngot], 2000);



/* Seeds Tier 3 */
//mods.astralsorcery.Altar.addAttunementAltarRecipe

//Crafting seed
recipes.remove(t3CraftSeed);
astral("reversedprogression:shaped/internal/altar/machinecase", t3CraftSeed, 500, 500, [
    interEssence, interEssence, interEssence,
    interEssence, t2CraftSeed, interEssence,
    interEssence, interEssence, interEssence,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Inferium seed
recipes.remove(<mysticalagriculture:tier3_inferium_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:tier3_inferium_seeds>, 500, 500, [
    interEssenceBlock, interEssenceBlock, interEssenceBlock,
    interEssenceBlock, <mysticalagriculture:tier2_inferium_seeds>, interEssenceBlock,
    interEssenceBlock, interEssenceBlock, interEssenceBlock,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Iron seed
recipes.remove(<mysticalagriculture:iron_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:iron_seeds>, 500, 500, [
    <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>,
    <minecraft:iron_ingot>, t3CraftSeed, <minecraft:iron_ingot>,
    <minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Nether quartz seed
recipes.remove(<mysticalagriculture:nether_quartz_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:nether_quartz_seeds>, 500, 500, [
    <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>,
    <ore:blockQuartz>, t3CraftSeed, <ore:blockQuartz>,
    <ore:blockQuartz>, <ore:blockQuartz>, <ore:blockQuartz>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Glowstone seed
recipes.remove(<mysticalagriculture:glowstone_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:glowstone_seeds>, 500, 500, [
    <minecraft:glowstone>, <minecraft:glowstone>, <minecraft:glowstone>,
    <minecraft:glowstone>, t3CraftSeed, <minecraft:glowstone>,
    <minecraft:glowstone>, <minecraft:glowstone>, <minecraft:glowstone>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Redstone seed
recipes.remove(<mysticalagriculture:redstone_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:redstone_seeds>, 500, 500, [
    <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>,
    <ore:blockRedstone>, t3CraftSeed, <ore:blockRedstone>,
    <ore:blockRedstone>, <ore:blockRedstone>, <ore:blockRedstone>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Obsidian seed
recipes.remove(<mysticalagriculture:obsidian_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:obsidian_seeds>, 500, 500, [
    <ore:obsidian>, <ore:obsidian>, <ore:obsidian>,
    <ore:obsidian>, t3CraftSeed, <ore:obsidian>,
    <ore:obsidian>, <ore:obsidian>, <ore:obsidian>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Skeleton seed
recipes.remove(<mysticalagriculture:skeleton_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:skeleton_seeds>, 500, 500, [
    <mysticalagriculture:chunk:12>, <mysticalagriculture:chunk:12>, <mysticalagriculture:chunk:12>,
    <mysticalagriculture:chunk:12>, t3CraftSeed, <mysticalagriculture:chunk:12>,
    <mysticalagriculture:chunk:12>, <mysticalagriculture:chunk:12>, <mysticalagriculture:chunk:12>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Creeper seed
recipes.remove(<mysticalagriculture:creeper_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:creeper_seeds>, 500, 500, [
    <mysticalagriculture:chunk:13>, <mysticalagriculture:chunk:13>, <mysticalagriculture:chunk:13>,
    <mysticalagriculture:chunk:13>, t3CraftSeed, <mysticalagriculture:chunk:13>,
    <mysticalagriculture:chunk:13>, <mysticalagriculture:chunk:13>, <mysticalagriculture:chunk:13>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Spider seed
recipes.remove(<mysticalagriculture:spider_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:spider_seeds>, 500, 500, [
    <mysticalagriculture:chunk:14>, <mysticalagriculture:chunk:14>, <mysticalagriculture:chunk:14>,
    <mysticalagriculture:chunk:14>, t3CraftSeed, <mysticalagriculture:chunk:14>,
    <mysticalagriculture:chunk:14>, <mysticalagriculture:chunk:14>, <mysticalagriculture:chunk:14>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Rabbit seed
recipes.remove(<mysticalagriculture:rabbit_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:rabbit_seeds>, 500, 500, [
    <mysticalagriculture:chunk:15>, <mysticalagriculture:chunk:15>, <mysticalagriculture:chunk:15>,
    <mysticalagriculture:chunk:15>, t3CraftSeed, <mysticalagriculture:chunk:15>,
    <mysticalagriculture:chunk:15>, <mysticalagriculture:chunk:15>, <mysticalagriculture:chunk:15>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Guardian seed
recipes.remove(<mysticalagriculture:guardian_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:guardian_seeds>, 500, 500, [
    <mysticalagriculture:chunk:16>, <mysticalagriculture:chunk:16>, <mysticalagriculture:chunk:16>,
    <mysticalagriculture:chunk:16>, t3CraftSeed, <mysticalagriculture:chunk:16>,
    <mysticalagriculture:chunk:16>, <mysticalagriculture:chunk:16>, <mysticalagriculture:chunk:16>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Saltpeter seed
recipes.remove(<mysticalagriculture:saltpeter_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:saltpeter_seeds>, 500, 500, [
    <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>,
    <ore:dustSaltpeter>, t3CraftSeed, <ore:dustSaltpeter>,
    <ore:dustSaltpeter>, <ore:dustSaltpeter>, <ore:dustSaltpeter>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Tin seed
recipes.remove(<mysticalagriculture:tin_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:tin_seeds>, 500, 500, [
    <ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>,
    <ore:ingotTin>, t3CraftSeed, <ore:ingotTin>,
    <ore:ingotTin>, <ore:ingotTin>, <ore:ingotTin>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Bronze seed
recipes.remove(<mysticalagriculture:bronze_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:bronze_seeds>, 500, 500, [
    <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>,
    <ore:ingotBronze>, t3CraftSeed, <ore:ingotBronze>,
    <ore:ingotBronze>, <ore:ingotBronze>, <ore:ingotBronze>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Silver seed
recipes.remove(<mysticalagriculture:silver_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:silver_seeds>, 500, 500, [
    <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>,
    <ore:ingotSilver>, t3CraftSeed, <ore:ingotSilver>,
    <ore:ingotSilver>, <ore:ingotSilver>, <ore:ingotSilver>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Lead seed
recipes.remove(<mysticalagriculture:lead_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:lead_seeds>, 500, 500, [
    <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>,
    <ore:ingotLead>, t3CraftSeed, <ore:ingotLead>,
    <ore:ingotLead>, <ore:ingotLead>, <ore:ingotLead>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Blizz seed
recipes.remove(<mysticalagriculture:blizz_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:blizz_seeds>, 500, 500, [
    <mysticalagriculture:chunk:21>, <mysticalagriculture:chunk:21>, <mysticalagriculture:chunk:21>,
    <mysticalagriculture:chunk:21>, t3CraftSeed, <mysticalagriculture:chunk:21>,
    <mysticalagriculture:chunk:21>, <mysticalagriculture:chunk:21>, <mysticalagriculture:chunk:21>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Blitz seed
recipes.remove(<mysticalagriculture:blitz_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:blitz_seeds>, 500, 500, [
    <mysticalagriculture:chunk:22>, <mysticalagriculture:chunk:22>, <mysticalagriculture:chunk:22>,
    <mysticalagriculture:chunk:22>, t3CraftSeed, <mysticalagriculture:chunk:22>,
    <mysticalagriculture:chunk:22>, <mysticalagriculture:chunk:22>, <mysticalagriculture:chunk:22>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Basalz seed
recipes.remove(<mysticalagriculture:basalz_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:basalz_seeds>, 500, 500, [
    <mysticalagriculture:chunk:23>, <mysticalagriculture:chunk:23>, <mysticalagriculture:chunk:23>,
    <mysticalagriculture:chunk:23>, t3CraftSeed, <mysticalagriculture:chunk:23>,
    <mysticalagriculture:chunk:23>, <mysticalagriculture:chunk:23>, <mysticalagriculture:chunk:23>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Knightslime seed
recipes.remove(<mysticalagriculture:knightslime_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:knightslime_seeds>, 500, 500, [
    <tconstruct:ingots:3>, <tconstruct:ingots:3>, <tconstruct:ingots:3>,
    <tconstruct:ingots:3>, t3CraftSeed, <tconstruct:ingots:3>,
    <tconstruct:ingots:3>, <tconstruct:ingots:3>, <tconstruct:ingots:3>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Ardite seed
recipes.remove(<mysticalagriculture:ardite_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:ardite_seeds>, 500, 500, [
    <tconstruct:ingots:1>, <tconstruct:ingots:1>, <tconstruct:ingots:1>,
    <tconstruct:ingots:1>, t3CraftSeed, <tconstruct:ingots:1>,
    <tconstruct:ingots:1>, <tconstruct:ingots:1>, <tconstruct:ingots:1>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Electrical steel seed
recipes.remove(<mysticalagriculture:electrical_steel_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:electrical_steel_seeds>, 500, 500, [
    <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot>, t3CraftSeed, <enderio:item_alloy_ingot>,
    <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>, <enderio:item_alloy_ingot>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Redstone alloy seed
recipes.remove(<mysticalagriculture:redstone_alloy_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:redstone_alloy_seeds>, 500, 500, [
    <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>,
    <enderio:item_alloy_ingot:3>, t3CraftSeed, <enderio:item_alloy_ingot:3>,
    <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>, <enderio:item_alloy_ingot:3>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Conductive iron seed
recipes.remove(<mysticalagriculture:conductive_iron_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:conductive_iron_seeds>, 500, 500, [
    <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:4>,
    <enderio:item_alloy_ingot:4>, t3CraftSeed, <enderio:item_alloy_ingot:4>,
    <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:4>, <enderio:item_alloy_ingot:4>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Manasteel seed
recipes.remove(<mysticalagriculture:manasteel_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:manasteel_seeds>, 500, 500, [
    manaIngot, manaIngot, manaIngot,
    manaIngot, t3CraftSeed, manaIngot,
    manaIngot, manaIngot, manaIngot,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Steeleaf seed
recipes.remove(<mysticalagriculture:steeleaf_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:steeleaf_seeds>, 500, 500, [
    <twilightforest:steeleaf_ingot>, <twilightforest:steeleaf_ingot>, <twilightforest:steeleaf_ingot>,
    <twilightforest:steeleaf_ingot>, t3CraftSeed, <twilightforest:steeleaf_ingot>,
    <twilightforest:steeleaf_ingot>, <twilightforest:steeleaf_ingot>, <twilightforest:steeleaf_ingot>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Ironwood seed
recipes.remove(<mysticalagriculture:ironwood_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:ironwood_seeds>, 500, 500, [
    <twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>,
    <twilightforest:ironwood_ingot>, t3CraftSeed, <twilightforest:ironwood_ingot>,
    <twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>, <twilightforest:ironwood_ingot>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Black quartz seed
recipes.remove(<mysticalagriculture:black_quartz_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:black_quartz_seeds>, 500, 500, [
    <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>,
    <actuallyadditions:item_misc:5>, t3CraftSeed, <actuallyadditions:item_misc:5>,
    <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>, <actuallyadditions:item_misc:5>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Aquamarine seed
recipes.remove(<mysticalagriculture:aquamarine_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:aquamarine_seeds>, 500, 500, [
    <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:itemcraftingcomponent>, t3CraftSeed, <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Ender biotite seed
recipes.remove(<mysticalagriculture:ender_biotite_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:ender_biotite_seeds>, 500, 500, [
    <quark:biotite>, <quark:biotite>, <quark:biotite>,
    <quark:biotite>, t3CraftSeed, <quark:biotite>,
    <quark:biotite>, <quark:biotite>, <quark:biotite>,
    interIngot, interIngot,
    interIngot, interIngot
]);

//Quartz enriched iron seed
recipes.remove(<mysticalagriculture:quartz_enriched_iron_seeds>);
astral("reversedprogression:shaped/internal/altar/machinecase", <mysticalagriculture:quartz_enriched_iron_seeds>, 500, 500, [
    <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>,
    <refinedstorage:quartz_enriched_iron>, t3CraftSeed, <refinedstorage:quartz_enriched_iron>,
    <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>, <refinedstorage:quartz_enriched_iron>,
    interIngot, interIngot,
    interIngot, interIngot
]);



/* Seeds Tier 4 */
//mods.bloodmagic.AlchemyTable.addRecipe(IItemStack output, IItemStack[] inputs, int syphon, int ticks, int minTier);

//Crafting seed
recipes.remove(t4CraftSeed);
blood(t4CraftSeed, [t3CraftSeed, superEssence, superEssence, superEssence, superEssence, superIngot], 2000, 50, 0);

//Inferium seed
recipes.remove(<mysticalagriculture:tier4_inferium_seeds>);
blood(<mysticalagriculture:tier4_inferium_seeds>, [<mysticalagriculture:tier3_inferium_seeds>, superEssenceBlock, superEssenceBlock, superEssenceBlock, superEssenceBlock, superIngot], 2000, 50, 0);

//Gold seed
recipes.remove(<mysticalagriculture:gold_seeds>);
blood(<mysticalagriculture:gold_seeds>, [t4CraftSeed, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, <minecraft:gold_ingot>, superIngot], 2000, 50, 0);

//Lapis lazuli seed
recipes.remove(<mysticalagriculture:lapis_lazuli_seeds>);
blood(<mysticalagriculture:lapis_lazuli_seeds>, [t4CraftSeed, <minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>, <minecraft:dye:4>, superIngot], 2000, 50, 0);

//End seed
recipes.remove(<mysticalagriculture:end_seeds>);
blood(<mysticalagriculture:end_seeds>, [t4CraftSeed, <mysticalagriculture:crafting:9>, <mysticalagriculture:crafting:9>, <mysticalagriculture:crafting:9>, <mysticalagriculture:crafting:9>, superIngot], 2000, 50, 0);

//Experience seed
recipes.remove(<mysticalagriculture:experience_seeds>);
blood(<mysticalagriculture:experience_seeds>, [t4CraftSeed, <mysticalagriculture:chunk:5>, <mysticalagriculture:chunk:5>, <mysticalagriculture:chunk:5>, <mysticalagriculture:chunk:5>, superIngot], 2000, 50, 0);

//Blaze seed
recipes.remove(<mysticalagriculture:blaze_seeds>);
blood(<mysticalagriculture:blaze_seeds>, [t4CraftSeed, <mysticalagriculture:chunk:17>, <mysticalagriculture:chunk:17>, <mysticalagriculture:chunk:17>, <mysticalagriculture:chunk:17>, superIngot], 2000, 50, 0);

//Ghast seed
recipes.remove(<mysticalagriculture:ghast_seeds>);
blood(<mysticalagriculture:ghast_seeds>, [t4CraftSeed, <mysticalagriculture:chunk:18>, <mysticalagriculture:chunk:18>, <mysticalagriculture:chunk:18>, <mysticalagriculture:chunk:18>, superIngot], 2000, 50, 0);

//Enderman seed
recipes.remove(<mysticalagriculture:enderman_seeds>);
blood(<mysticalagriculture:enderman_seeds>, [t4CraftSeed, <mysticalagriculture:chunk:19>, <mysticalagriculture:chunk:19>, <mysticalagriculture:chunk:19>, <mysticalagriculture:chunk:19>, superIngot], 2000, 50, 0);

//Steel seed
recipes.remove(<mysticalagriculture:steel_seeds>);
blood(<mysticalagriculture:steel_seeds>, [t4CraftSeed, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, superIngot], 2000, 50, 0);

//Nickel seed
recipes.remove(<mysticalagriculture:nickel_seeds>);
blood(<mysticalagriculture:nickel_seeds>, [t4CraftSeed, <ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>, <ore:ingotNickel>, superIngot], 2000, 50, 0);

//Constantan seed
recipes.remove(<mysticalagriculture:constantan_seeds>);
blood(<mysticalagriculture:constantan_seeds>, [t4CraftSeed, <ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>, <ore:ingotConstantan>, superIngot], 2000, 50, 0);

//Electrum seed
recipes.remove(<mysticalagriculture:electrum_seeds>);
blood(<mysticalagriculture:electrum_seeds>, [t4CraftSeed, <ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>, <ore:ingotElectrum>, superIngot], 2000, 50, 0);

//Invar seed
recipes.remove(<mysticalagriculture:invar_seeds>);
blood(<mysticalagriculture:invar_seeds>, [t4CraftSeed, <ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>, <ore:ingotInvar>, superIngot], 2000, 50, 0);

//Mithril seed
recipes.remove(<mysticalagriculture:mithril_seeds>);
blood(<mysticalagriculture:mithril_seeds>, [t4CraftSeed, <ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>, <ore:ingotMithril>, superIngot], 2000, 50, 0);

//Signalum seed
recipes.remove(<mysticalagriculture:signalum_seeds>);
blood(<mysticalagriculture:signalum_seeds>, [t4CraftSeed, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, <ore:ingotSignalum>, superIngot], 2000, 50, 0);

//Lumium seed
recipes.remove(<mysticalagriculture:lumium_seeds>);
blood(<mysticalagriculture:lumium_seeds>, [t4CraftSeed, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, <ore:ingotLumium>, superIngot], 2000, 50, 0);

//HOP Graphite seed
recipes.remove(<mysticalagriculture:hop_graphite_seeds>);
blood(<mysticalagriculture:hop_graphite_seeds>, [t4CraftSeed, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, <ore:ingotHOPGraphite>, superIngot], 2000, 50, 0);

//Cobalt seed
recipes.remove(<mysticalagriculture:cobalt_seeds>);
blood(<mysticalagriculture:cobalt_seeds>, [t4CraftSeed, <ore:ingotCobalt>, <ore:ingotCobalt>, <ore:ingotCobalt>, <ore:ingotCobalt>, superIngot], 2000, 50, 0);

//Soularium seed
recipes.remove(<mysticalagriculture:soularium_seeds>);
blood(<mysticalagriculture:soularium_seeds>, [t4CraftSeed, <ore:ingotSoularium>, <ore:ingotSoularium>, <ore:ingotSoularium>, <ore:ingotSoularium>, superIngot], 2000, 50, 0);

//Dark steel seed
recipes.remove(<mysticalagriculture:dark_steel_seeds>);
blood(<mysticalagriculture:dark_steel_seeds>, [t4CraftSeed, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, <ore:ingotDarkSteel>, superIngot], 2000, 50, 0);

//Pulsating iron seed
recipes.remove(<mysticalagriculture:pulsating_iron_seeds>);
blood(<mysticalagriculture:pulsating_iron_seeds>, [t4CraftSeed, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, <ore:ingotPulsatingIron>, superIngot], 2000, 50, 0);

//Energetic alloy seed
recipes.remove(<mysticalagriculture:energetic_alloy_seeds>);
blood(<mysticalagriculture:energetic_alloy_seeds>, [t4CraftSeed, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, <ore:ingotEnergeticAlloy>, superIngot], 2000, 50, 0);

//Elementium seed
recipes.remove(<mysticalagriculture:elementium_seeds>);
blood(<mysticalagriculture:elementium_seeds>, [t4CraftSeed, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, <ore:ingotElvenElementium>, superIngot], 2000, 50, 0);

//Dawnstone seed
recipes.remove(<mysticalagriculture:dawnstone_seeds>);
blood(<mysticalagriculture:dawnstone_seeds>, [t4CraftSeed, <ore:ingotDawnstone>, <ore:ingotDawnstone>, <ore:ingotDawnstone>, <ore:ingotDawnstone>, superIngot], 2000, 50, 0);

//Osmium seed
recipes.remove(<mysticalagriculture:osmium_seeds>);
blood(<mysticalagriculture:osmium_seeds>, [t4CraftSeed, <ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>, <ore:ingotOsmium>, superIngot], 2000, 50, 0);

//Glowstone ingot seed
recipes.remove(<mysticalagriculture:glowstone_ingot_seeds>);
blood(<mysticalagriculture:glowstone_ingot_seeds>, [t4CraftSeed, <ore:ingotRefinedGlowstone>, <ore:ingotRefinedGlowstone>, <ore:ingotRefinedGlowstone>, <ore:ingotRefinedGlowstone>, superIngot], 2000, 50, 0);

//Knightmetal seed
recipes.remove(<mysticalagriculture:knightmetal_seeds>);
blood(<mysticalagriculture:knightmetal_seeds>, [t4CraftSeed, <ore:ingotKnightmetal>, <ore:ingotKnightmetal>, <ore:ingotKnightmetal>, <ore:ingotKnightmetal>, superIngot], 2000, 50, 0);

//Fiery ingot seed
recipes.remove(<mysticalagriculture:fiery_ingot_seeds>);
blood(<mysticalagriculture:fiery_ingot_seeds>, [t4CraftSeed, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, <ore:ingotFiery>, superIngot], 2000, 50, 0);

//Compressed iron seed
recipes.remove(<mysticalagriculture:compressed_iron_seeds>);
blood(<mysticalagriculture:compressed_iron_seeds>, [t4CraftSeed, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>, <ore:ingotIronCompressed>, superIngot], 2000, 50, 0);



/* Seeds Tier 5 */
//Crafting seed
recipes.remove(t5CraftSeed);
extended(t5CraftSeed, 10000, 1000, t4CraftSeed, [
    supremEssenceBlock, supremEssenceBlock,     
    supremEssenceBlock, supremIngot, supremIngot, supremIngot, supremEssenceBlock,
    supremIngot, supremIngot,     
    supremEssenceBlock, supremIngot, supremEssenceBlock]);

//Inferium seed
recipes.remove(<mysticalagriculture:tier5_inferium_seeds>);
extended(<mysticalagriculture:tier5_inferium_seeds>, 10000, 1000, <mysticalagriculture:tier4_inferium_seeds>, [
    supremEssenceBlock, supremEssenceBlock, supremEssenceBlock, supremEssenceBlock, supremEssenceBlock,
    supremIngot, supremIngot, supremIngot, supremIngot, supremIngot
]);

//Diamond seed
recipes.remove(<mysticalagriculture:diamond_seeds>);
extended(<mysticalagriculture:diamond_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <minecraft:diamond>,
    <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>, <minecraft:diamond>
]);

//Emerald seed
recipes.remove(<mysticalagriculture:emerald_seeds>);
extended(<mysticalagriculture:emerald_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <minecraft:emerald>,
    <minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>, <minecraft:emerald>
]);

//Wither Skeleton seed
recipes.remove(<mysticalagriculture:wither_skeleton_seeds>);
extended(<mysticalagriculture:wither_skeleton_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <mysticalagriculture:chunk:20>,
    <mysticalagriculture:chunk:20>, <mysticalagriculture:chunk:20>, <mysticalagriculture:chunk:20>, <mysticalagriculture:chunk:20>, <mysticalagriculture:chunk:20>
]);

//Uranium seed
recipes.remove(<mysticalagriculture:uranium_seeds>);
extended(<mysticalagriculture:uranium_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotUranium>,
    <ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>, <ore:ingotUranium>
]);

//Platinum seed
recipes.remove(<mysticalagriculture:platinum_seeds>);
extended(<mysticalagriculture:platinum_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotPlatinum>,
    <ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>, <ore:ingotPlatinum>
]);

//Iridium seed
recipes.remove(<mysticalagriculture:iridium_seeds>);
extended(<mysticalagriculture:iridium_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotIridium>,
    <ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>, <ore:ingotIridium>
]);

//Enderium seed
recipes.remove(<mysticalagriculture:enderium_seeds>);
extended(<mysticalagriculture:enderium_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotEnderium>,
    <ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>, <ore:ingotEnderium>
]);

//Manyullyn seed
recipes.remove(<mysticalagriculture:manyullyn_seeds>);
extended(<mysticalagriculture:manyullyn_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotManyullyn>,
    <ore:ingotManyullyn>, <ore:ingotManyullyn>, <ore:ingotManyullyn>, <ore:ingotManyullyn>, <ore:ingotManyullyn>
]);

//Vibrant alloy seed
recipes.remove(<mysticalagriculture:vibrant_alloy_seeds>);
extended(<mysticalagriculture:vibrant_alloy_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotVibrantAlloy>,
    <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>, <ore:ingotVibrantAlloy>
]);

//End steel seed
recipes.remove(<mysticalagriculture:end_steel_seeds>);
extended(<mysticalagriculture:end_steel_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotEndSteel>,
    <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>, <ore:ingotEndSteel>
]);

//Terrasteel seed
recipes.remove(<mysticalagriculture:terrasteel_seeds>);
extended(<mysticalagriculture:terrasteel_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotTerrasteel>,
    <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>, <ore:ingotTerrasteel>
]);

//Refined obsidian seed
recipes.remove(<mysticalagriculture:refined_obsidian_seeds>);
extended(<mysticalagriculture:refined_obsidian_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotRefinedObsidian>,
    <ore:ingotRefinedObsidian>, <ore:ingotRefinedObsidian>, <ore:ingotRefinedObsidian>, <ore:ingotRefinedObsidian>, <ore:ingotRefinedObsidian>
]);

//Starmetal seed
recipes.remove(<mysticalagriculture:starmetal_seeds>);
extended(<mysticalagriculture:starmetal_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotAstralStarmetal>,
    <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>, <ore:ingotAstralStarmetal>
]);

//Rock crystal seed
recipes.remove(<mysticalagriculture:rock_crystal_seeds>);
extended(<mysticalagriculture:rock_crystal_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <astralsorcery:itemrockcrystalsimple>,
    <astralsorcery:itemrockcrystalsimple>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:itemrockcrystalsimple>, <astralsorcery:itemrockcrystalsimple>
]);

//Draconium seed
recipes.remove(<mysticalagriculture:draconium_seeds>);
extended(<mysticalagriculture:draconium_seeds>, 10000, 1000, t5CraftSeed, [
    supremIngot, supremIngot, supremIngot, supremIngot, <ore:ingotDraconium>,
    <ore:ingotDraconium>, <ore:ingotDraconium>, <ore:ingotDraconium>, <ore:ingotDraconium>, <ore:ingotDraconium>
]);



/* Seeds Tier 6 */
//Crafting seed
recipes.remove(<mysticalagradditions:insanium:1>);

//Inferium seed
recipes.remove(<mysticalagradditions:tier6_inferium_seeds>);

//Neutronium seed
recipes.remove(<mysticalagradditions:neutronium_seeds>);

//Nether star seed
recipes.remove(<mysticalagradditions:nether_star_seeds>);

//Awakened draconium seed
recipes.remove(<mysticalagradditions:awakened_draconium_seeds>);

//Dragon egg seed
recipes.remove(<mysticalagradditions:dragon_egg_seeds>);

/* Crux */
//Nether Star
recipes.remove(<mysticalagradditions:special>);

//Dragon Egg
recipes.remove(<mysticalagradditions:special:1>);

//Awakened Draconium
recipes.remove(<mysticalagradditions:special:4>);

//Neutronium
recipes.remove(<mysticalagradditions:special:5>);

/* Crystals */
//Inferium
recipes.remove(infCrystalFull);
mods.tconstruct.Casting.addTableRecipe(infCrystalFull, <tconstruct:cast_custom:2>, <liquid:inferium>, 288);

//Prudentium
recipes.remove(prudCrystalFull);
alchemy(prudCrystalFull, [oreDictInfCrystal, prudEssence, prudIngot, prudEssence, prudIngot], {"dawnstone":(1 to 1)});

//Intermedium
recipes.remove(interCrystalFull);
botania(interCrystalFull, [oreDictPrudCrystal, interIngot, interIngot, interEssence, interEssence], 5000);
//botania(interCrystalFull, [prudCrystalUsed, interIngot, interIngot, interEssence, interEssence], 5000);

//Superium
recipes.remove(superCrystalFull);
astral("reversedprogression:shaped/internal/altar/machinecase", superCrystalFull, 1000, 500, [
    superEssence, superEssence, superEssence,
    superEssence, oreDictInterCrystal, superEssence,
    superEssence, superEssence, superEssence,
    superIngot, superIngot,
    superIngot, superIngot
]);
/*astral("reversedprogression:shaped/internal/altar/machinecase", superCrystalFull, 10000, 1000, [
    superEssence, superEssence, superEssence,
    superEssence, interCrystalUsed, superEssence,
    superEssence, superEssence, superEssence,
    superIngot, superIngot,
    superIngot, superIngot
]);*/


//Supremium
recipes.remove(supremCrystalFull);
blood(supremCrystalFull, [oreDictSuperCrystal, supremIngot, supremIngot, supremIngot, supremIngot, supremEssence], 2000, 50, 0);
//blood(supremCrystalFull, [superCrystalUsed, supremIngot, supremIngot, supremIngot, supremIngot, supremEssence], 2000, 50, 0);

//Master
recipes.remove(masterCrystal);
extended(masterCrystal, 500000, 5000, <matc:supremiumcrystal>, [
    creative, creative, creative, creative, creative,
    creative, insIngot, insIngot, insIngot, insIngot
]);

extended(masterCrystal, 500000, 5000, <matc:supremiumcrystal:*>, [
    creative, creative, creative, creative, creative,
    creative, insIngot, insIngot, insIngot, insIngot
]);


/* Furnaces */
//Inferium
recipes.remove(<mysticalagriculture:inferium_furnace>);
recipes.addShaped(<mysticalagriculture:inferium_furnace>, [
    [null, infIngot, null],
    [infIngot, <minecraft:furnace>, infIngot],
    [null, infEssenceBlock, null]
]);

//Prudentium
recipes.remove(<mysticalagriculture:prudentium_furnace>);
recipes.addShaped(<mysticalagriculture:prudentium_furnace>, [
    [null, prudIngot, null],
    [prudIngot, <mysticalagriculture:inferium_furnace>, prudIngot],
    [null, prudEssenceBlock, null]
]);

//Intermedium
recipes.remove(<mysticalagriculture:intermedium_furnace>);
recipes.addShaped(<mysticalagriculture:intermedium_furnace>, [
    [null, interIngot, null],
    [interIngot, <mysticalagriculture:prudentium_furnace>, interIngot],
    [null, interEssenceBlock, null]
]);

//Superium
recipes.remove(<mysticalagriculture:superium_furnace>);
recipes.addShaped(<mysticalagriculture:superium_furnace>, [
    [null, superIngot, null],
    [superIngot, <mysticalagriculture:intermedium_furnace>, superIngot],
    [null, superEssenceBlock, null]
]);

//Supremium
recipes.remove(<mysticalagriculture:supremium_furnace>);
recipes.addShaped(<mysticalagriculture:supremium_furnace>, [
    [null, supremIngot, null],
    [supremIngot, <mysticalagriculture:superium_furnace>, supremIngot],
    [null, supremEssenceBlock, null]
]);

//Insanium
recipes.remove(<mysticaladaptations:insanium_furnace>);
recipes.addShaped(<mysticaladaptations:insanium_furnace>, [
    [null, insIngot, null],
    [insIngot, <mysticalagriculture:supremium_furnace>, insIngot],
    [null, insEssenceBlock, null]
]);

//Ultimate
recipes.remove(<mysticalagriculture:ultimate_furnace>);
recipes.addShaped(<mysticalagriculture:ultimate_furnace>, [
    [<mysticalagriculture:wither_skeleton_essence>, <projectex:colossal_star_omega>.withTag({}), <mysticalagriculture:wither_skeleton_essence>],
    [insIngotBlock, <mysticaladaptations:insanium_furnace>, insIngotBlock],
    [<mysticalagriculture:wither_skeleton_essence>, insIngotBlock, <mysticalagriculture:wither_skeleton_essence>]
]);

/* Seed Reprocessor */

//Seed Reprocessor
recipes.remove(<mysticalagriculture:seed_reprocessor>);
recipes.addShaped(<mysticalagriculture:seed_reprocessor>, [
    [<ore:plateIron>, <mysticalagriculture:tier2_inferium_seeds>, <ore:plateIron>],
    [<ore:plateIron>, <mysticalagriculture:mystical_machine_frame>, <ore:plateIron>],
    [<ore:plateIron>, <mysticalagriculture:ingot_storage:6>, <ore:plateIron>]
]);

//Inferium
recipes.remove(<mysticalagriculture:inferium_reprocessor>);
recipes.addShaped(<mysticalagriculture:inferium_reprocessor>, [
    [null, infIngot, null],
    [infIngot, <mysticalagriculture:seed_reprocessor>, infIngot],
    [null, infEssenceBlock, null]
]);

//Prudentium
recipes.remove(<mysticalagriculture:prudentium_reprocessor>);
recipes.addShaped(<mysticalagriculture:prudentium_reprocessor>, [
    [null, prudIngot, null],
    [prudIngot, <mysticalagriculture:inferium_reprocessor>, prudIngot],
    [null, prudEssenceBlock, null]
]);

//Intermedium
recipes.remove(<mysticalagriculture:intermedium_reprocessor>);
recipes.addShaped(<mysticalagriculture:intermedium_reprocessor>, [
    [null, interIngot, null],
    [interIngot, <mysticalagriculture:prudentium_reprocessor>, interIngot],
    [null, interEssenceBlock, null]
]);

//Superium
recipes.remove(<mysticalagriculture:superium_reprocessor>);
recipes.addShaped(<mysticalagriculture:superium_reprocessor>, [
    [null, superIngot, null],
    [superIngot, <mysticalagriculture:intermedium_reprocessor>, superIngot],
    [null, superEssenceBlock, null]
]);

//Supremium
recipes.remove(<mysticalagriculture:supremium_reprocessor>);
recipes.addShaped(<mysticalagriculture:supremium_reprocessor>, [
    [null, supremIngot, null],
    [supremIngot, <mysticalagriculture:superium_reprocessor>, supremIngot],
    [null, supremEssenceBlock, null]
]);

//Insanium
recipes.remove(<mysticaladaptations:insanium_reprocessor>);
recipes.addShaped(<mysticaladaptations:insanium_reprocessor>, [
    [null, insIngot, null],
    [insIngot, <mysticalagriculture:supremium_reprocessor>, insIngot],
    [null, insEssenceBlock, null]
]);

//Ultimate
recipes.remove(<mysticalagriculture:ultimate_reprocessor>);
recipes.addShaped(<mysticalagriculture:ultimate_reprocessor>, [
    [<mysticalagriculture:wither_skeleton_essence>, <projectex:colossal_star_omega>.withTag({}), <mysticalagriculture:wither_skeleton_essence>],
    [insIngotBlock, <mysticaladaptations:insanium_reprocessor>, insIngotBlock],
    [<mysticalagriculture:wither_skeleton_essence>, insIngotBlock, <mysticalagriculture:wither_skeleton_essence>]
]);

//Creative Essence
recipes.addShaped(<mysticalagradditions:stuff:69> * 2, [
    [<mysticalagriculture:storage>, <mysticalagriculture:storage:1>, <mysticalagriculture:storage:2>],
    [<minecraft:bedrock>, <minecraft:bedrock>, <minecraft:bedrock>],
    [<mysticalagradditions:storage>, <mysticalagriculture:storage:4>, <mysticalagriculture:storage:3>]
]);

/* Ingots */
//Base Essence
mods.tconstruct.Casting.removeTableRecipe(baseIngot, baseLiquid);
induction(baseIngot, prosShard * 4, <embers:ingot_dawnstone>, 500);

//Nether Star Block
recipes.remove(<mysticaladaptations:netherstar_block>);

/* Blocks to Ingots */
//Inferium
recipes.addShaped(infIngot * 9, [
    [infIngotBlock]
]);

//Prudentium
recipes.addShaped(prudIngot * 9, [
    [prudIngotBlock]
]);

//Intermedium
recipes.addShaped(interIngot * 9, [
    [interIngotBlock]
]);

//Superium
recipes.addShaped(superIngot * 9, [
    [superIngotBlock]
]);

//Supremium
recipes.addShaped(supremIngot * 9, [
    [supremIngotBlock]
]);

//Insanium
recipes.addShaped(insIngot * 9, [
    [insIngotBlock]
]);

//Base
recipes.addShaped(baseIngot * 9, [
    [baseIngotBlock]
]);