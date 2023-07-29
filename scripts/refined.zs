/* Import */
import mods.immersiveengineering.MetalPress.addRecipe as press;
import mods.thermalexpansion.InductionSmelter.addRecipe as induction;
import mods.pneumaticcraft.assembly.addLaserRecipe as laser;

/* Variables */
//Processors
var binding = <refinedstorage:processor_binding>;
var rawAdvProc = <refinedstorage:processor:2>;
var advProc = <refinedstorage:processor:5>;
var rawBasProc = <refinedstorage:processor>;
var basProc = <refinedstorage:processor:3>;
var rawImpProc = <refinedstorage:processor:1>;
var impProc = <refinedstorage:processor:4>;
var consCore = <refinedstorage:core>;
var desCore = <refinedstorage:core:1>;

var controller = <refinedstorage:controller>;
var casing = <refinedstorage:machine_casing>;

//Quartz Enriched Iron
var qeiIngot = <refinedstorage:quartz_enriched_iron>;
var qeiPlate = <moreplates:quartz_enriched_iron_plate>;
var qeiGear = <moreplates:quartz_enriched_iron_gear>;
var qeiBlock = <refinedstorage:quartz_enriched_iron_block>;

//Others
var silicon = <refinedstorage:silicon>;
var diamond = <minecraft:diamond>;
var essence = <mysticalagriculture:silicon_essence>;



/* Processors */
//Processor binding
recipes.remove(binding);
recipes.addShaped(binding * 8, [
    [<botania:manaresource:16>, <mysticalagriculture:slime_essence>, <botania:manaresource:16>]
]);

//Raw Advanced
recipes.remove(rawAdvProc);
recipes.addShaped(rawAdvProc, [
    [binding, <actuallyadditions:item_crystal_empowered:2>, null],
    [silicon, <enderio:item_alloy_ingot:3>, null],
    [null, null, null]
]);

//Advanced
recipes.remove(advProc);
furnace.remove(advProc, rawAdvProc);
press(advProc, rawAdvProc, <immersiveengineering:mold>, 500, 1);

//Raw Basic
recipes.remove(rawBasProc);
recipes.addShaped(rawBasProc, [
    [binding, <actuallyadditions:item_crystal_empowered:5>, null],
    [silicon, <enderio:item_alloy_ingot:3>, null],
    [null, null, null]
]);

//Basic
recipes.remove(basProc);
furnace.remove(basProc, rawBasProc);
press(basProc, rawBasProc, <immersiveengineering:mold>, 500, 1);

//Raw Improved
recipes.remove(rawImpProc);
recipes.addShaped(rawImpProc, [
    [binding, <actuallyadditions:item_crystal_empowered:3>, null],
    [silicon, <enderio:item_alloy_ingot:3>, null],
    [null, null, null]
]);

//Improved
recipes.remove(impProc);
furnace.remove(impProc, rawImpProc);
press(impProc, rawImpProc, <immersiveengineering:mold>, 500, 1);

//Construction Core
recipes.remove(consCore);
induction(consCore, basProc, <moreplates:glowstone_plate>, 250);

//Destruction Core
recipes.remove(desCore);
induction(desCore, basProc, <moreplates:nether_quartz_plate>, 250);

/* Items */
//Pattern
recipes.remove(<refinedstorage:pattern>);
laser(<tconstruct:pattern>, <refinedstorage:pattern>);

//Cable
recipes.remove(<refinedstorage:cable>);
recipes.addShaped(<refinedstorage:cable> * 4, [
    [qeiIngot, qeiIngot, qeiIngot],
    [<ore:blockGlass>, <enderio:item_alloy_ingot:3>, <ore:blockGlass>],
    [qeiIngot, qeiIngot, qeiIngot]
]);

//Controller
recipes.remove(controller);
recipes.addShaped(controller, [
    [qeiPlate, advProc, qeiPlate],
    [silicon, casing, silicon],
    [qeiPlate, silicon, qeiPlate]
]);

/* Storage Part */
//1k
recipes.remove(<refinedstorage:storage_part>);
recipes.addShaped(<refinedstorage:storage_part>, [
    [essence, qeiIngot, essence],
    [<tconstruct:clear_glass>, <tp:redstone_ingot>, <tconstruct:clear_glass>],
    [silicon, <tconstruct:clear_glass>, silicon]
]);

//4k
recipes.remove(<refinedstorage:storage_part:1>);
recipes.addShaped(<refinedstorage:storage_part:1>, [
    [basProc, qeiIngot, basProc],
    [<refinedstorage:storage_part>, <tp:redstone_ingot>, <refinedstorage:storage_part>],
    [basProc, <refinedstorage:storage_part>, basProc]
]);

//16k
recipes.remove(<refinedstorage:storage_part:2>);
recipes.addShaped(<refinedstorage:storage_part:2>, [
    [impProc, qeiIngot, impProc],
    [<refinedstorage:storage_part:1>, <tp:redstone_ingot>, <refinedstorage:storage_part:1>],
    [impProc, <refinedstorage:storage_part:1>, impProc]
]);

//64k
recipes.remove(<refinedstorage:storage_part:3>);
recipes.addShaped(<refinedstorage:storage_part:3>, [
    [advProc, qeiIngot, advProc],
    [<refinedstorage:storage_part:2>, <tp:redstone_ingot>, <refinedstorage:storage_part:2>],
    [advProc, <refinedstorage:storage_part:2>, advProc]
]);

//256k
recipes.remove(<rebornstorage:storagepart>);
recipes.addShaped(<rebornstorage:storagepart>, [
    [advProc, qeiBlock, advProc],
    [<refinedstorage:storage_part:3>, <enderio:item_alloy_ingot:3>, <refinedstorage:storage_part:3>],
    [advProc, <refinedstorage:storage_part:3>, advProc]
]);

//1024k
recipes.remove(<rebornstorage:storagepart:1>);
recipes.addShaped(<rebornstorage:storagepart:1>, [
    [advProc, qeiBlock, advProc],
    [<rebornstorage:storagepart>, <enderio:item_alloy_ingot:3>, <rebornstorage:storagepart>],
    [advProc, <rebornstorage:storagepart>, advProc]
]);

//4096k
recipes.remove(<rebornstorage:storagepart:2>);
recipes.addShaped(<rebornstorage:storagepart:2>, [
    [advProc, qeiBlock, advProc],
    [<rebornstorage:storagepart:1>, <enderio:item_alloy_ingot:3>, <rebornstorage:storagepart:1>],
    [advProc, <rebornstorage:storagepart:1>, advProc]
]);

//16384k
recipes.remove(<rebornstorage:storagepart:3>);
recipes.addShaped(<rebornstorage:storagepart:3>, [
    [advProc, qeiBlock, advProc],
    [<rebornstorage:storagepart:2>, <enderio:item_alloy_ingot:3>, <rebornstorage:storagepart:2>],
    [advProc, <rebornstorage:storagepart:2>, advProc]
]);

/* Fluid Storage Part */
//64k
recipes.remove(<refinedstorage:fluid_storage_part>);
recipes.addShaped(<refinedstorage:fluid_storage_part>, [
    [essence, qeiIngot, essence],
    [<tconstruct:clear_glass>, <minecraft:bucket>, <tconstruct:clear_glass>],
    [silicon, <tconstruct:clear_glass>, silicon]
]);

//256k
recipes.remove(<refinedstorage:fluid_storage_part:1>);
recipes.addShaped(<refinedstorage:fluid_storage_part:1>, [
    [basProc, qeiIngot, basProc],
    [<refinedstorage:fluid_storage_part>, <minecraft:bucket>, <refinedstorage:fluid_storage_part>],
    [basProc, <refinedstorage:fluid_storage_part>, basProc]
]);

//1024k
recipes.remove(<refinedstorage:fluid_storage_part:2>);
recipes.addShaped(<refinedstorage:fluid_storage_part:2>, [
    [impProc, qeiIngot, impProc],
    [<refinedstorage:fluid_storage_part:1>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:1>],
    [impProc, <refinedstorage:fluid_storage_part:1>, impProc]
]);

//4096k
recipes.remove(<refinedstorage:fluid_storage_part:3>);
recipes.addShaped(<refinedstorage:fluid_storage_part:3>, [
    [advProc, qeiIngot, advProc],
    [<refinedstorage:fluid_storage_part:2>, <minecraft:bucket>, <refinedstorage:fluid_storage_part:2>],
    [advProc, <refinedstorage:fluid_storage_part:2>, advProc]
]);

//16384k
recipes.remove(<rebornstorage:storagepart:4>);
recipes.addShaped(<rebornstorage:storagepart:4>, [
    [advProc, qeiBlock, advProc],
    [<refinedstorage:fluid_storage_part:3>, <botania:openbucket>, <refinedstorage:fluid_storage_part:3>],
    [advProc, <refinedstorage:fluid_storage_part:3>, advProc]
]);

//32768k
recipes.remove(<rebornstorage:storagepart:5>);
recipes.addShaped(<rebornstorage:storagepart:5>, [
    [advProc, qeiBlock, advProc],
    [<rebornstorage:storagepart:4>, <botania:openbucket>, <rebornstorage:storagepart:4>],
    [advProc, <rebornstorage:storagepart:4>, advProc]
]);

//131m
recipes.remove(<rebornstorage:storagepart:6>);
recipes.addShaped(<rebornstorage:storagepart:6>, [
    [advProc, qeiBlock, advProc],
    [<rebornstorage:storagepart:5>, <botania:openbucket>, <rebornstorage:storagepart:5>],
    [advProc, <rebornstorage:storagepart:5>, advProc]
]);

//524m
recipes.remove(<rebornstorage:storagepart:7>);
recipes.addShaped(<rebornstorage:storagepart:7>, [
    [advProc, qeiBlock, advProc],
    [<rebornstorage:storagepart:6>, <botania:openbucket>, <rebornstorage:storagepart:6>],
    [advProc, <rebornstorage:storagepart:6>, advProc]
]);

//Enriched Iron
recipes.remove(qeiIngot);
recipes.addShaped(qeiIngot * 4, [
    [<extrautils2:ingredients:17>, <extrautils2:ingredients:17>],
    [<extrautils2:ingredients:17>, <actuallyadditions:item_misc:5>]
]);

//Quartz Enriched Iron - Essence
recipes.addShaped(qeiIngot * 6,[
    [<mysticalagriculture:quartz_enriched_iron_essence>, <mysticalagriculture:quartz_enriched_iron_essence>, <mysticalagriculture:quartz_enriched_iron_essence>],
    [<mysticalagriculture:quartz_enriched_iron_essence>, null, <mysticalagriculture:quartz_enriched_iron_essence>],
    [<mysticalagriculture:quartz_enriched_iron_essence>, <mysticalagriculture:quartz_enriched_iron_essence>, <mysticalagriculture:quartz_enriched_iron_essence>]
]);