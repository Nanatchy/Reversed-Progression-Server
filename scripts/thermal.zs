/* Import */
import mods.tconstruct.Casting.addTableRecipe as cast; //mods.tconstruct.Casting.addTableRecipe(output, cast, fluid, amount, @consume)
import mods.thermalexpansion.Transposer.addFillRecipe as fill; //mods.thermalexpansion.Transposer.addFillRecipe(output, input, fluid, energy)
import mods.thermalexpansion.Compactor.removeGearRecipe as gearRemove;
import mods.immersiveengineering.MetalPress.removeRecipeByMold as removeMold;
import mods.tconstruct.Casting.removeTableRecipe as castRemove;
import mods.embers.Stamper.add as stamp;
import mods.pneumaticcraft.pressurechamber.addRecipe as chamber;
import mods.thermalexpansion.InductionSmelter.addRecipe as smelter;
import mods.immersiveengineering.MetalPress.addRecipe as press;
import mods.inworldcrafting.FluidToItem.transform as fluid2item;
import mods.thermalexpansion.Sawmill.addRecipe as sawmillMachine;
import mods.thermalexpansion.Pulverizer.addRecipe as pulverizerMachine;


/* Vars */
//Frames
var frame = <thermalexpansion:frame>;
var device = <thermalexpansion:frame:64>;

//Gears
var woodGear = <thermalfoundation:material:22>;
var stoneGear = <thermalfoundation:material:23>;
var ironGear = <thermalfoundation:material:24>;
var goldGear = <thermalfoundation:material:25>;
var diamondGear = <thermalfoundation:material:26>;
var emeraldGear = <thermalfoundation:material:27>;
var copperGear = <thermalfoundation:material:256>;
var tinGear = <thermalfoundation:material:257>;
var silverGear = <thermalfoundation:material:258>;
var leadGear = <thermalfoundation:material:259>;
var aluGear = <thermalfoundation:material:260>;
var nickelGear = <thermalfoundation:material:261>;
var platGear = <thermalfoundation:material:262>;
var iridiumGear = <thermalfoundation:material:263>;
var manaGear = <thermalfoundation:material:264>;
var steelGear = <thermalfoundation:material:288>;
var elecGear = <thermalfoundation:material:289>;
var invarGear = <thermalfoundation:material:290>;
var enderGear = <thermalfoundation:material:295>;
var lumiumGear = <thermalfoundation:material:294>;
var signaGear = <thermalfoundation:material:293>;
var constGear = <thermalfoundation:material:292>;
var bronzeGear = <thermalfoundation:material:291>;


//Machines
var furnace = <thermalexpansion:machine>;
var pulverizer = <thermalexpansion:machine:1>;
var sawmill = <thermalexpansion:machine:2>;
var induction = <thermalexpansion:machine:3>;
var phytogenic = <thermalexpansion:machine:4>;
var compactor = <thermalexpansion:machine:5>;
var magma = <thermalexpansion:machine:6>;
var fractionating = <thermalexpansion:machine:7>;
var transposer = <thermalexpansion:machine:8>;
var energy = <thermalexpansion:machine:9>;
var centrifugal = <thermalexpansion:machine:10>;
var fabricator = <thermalexpansion:machine:11>;
var imbuer = <thermalexpansion:machine:12>;
var precipitator = <thermalexpansion:machine:14>;
var extruder = <thermalexpansion:machine:15>;

//Others
var reception = <thermalfoundation:material:513>;
var transmission = <thermalfoundation:material:514>;
var conductance = <thermalfoundation:material:515>;
var servo = <thermalfoundation:material:512>;

var glassHardened = <ore:blockGlassHardened>;

/* Thermal */
//Device frame
recipes.remove(device);
mods.embers.Alchemy.add(device,
                        [
                            <rftools:machine_frame>,
                            <ore:plateTin>,
                            <tconstruct:clear_glass>,
                            <ore:plateTin>,
                            <tconstruct:clear_glass>],
                        {"iron":(16 to 32),"silver":(16 to 32)});

/* Gears */
removeMold(ironGear);
removeMold(<immersiveengineering:mold:1>);

//Wooden
recipes.remove(woodGear);
recipes.addShaped(woodGear, [
    [null, <immersiveengineering:material>, null],
    [<immersiveengineering:material>, null, <immersiveengineering:material>],
    [null, <immersiveengineering:material>, null]
]);

//Stone
recipes.remove(stoneGear);
castRemove(stoneGear);
cast(stoneGear, woodGear, <liquid:stone>, 576, true);
fill(stoneGear, woodGear, <liquid:stone> * 576, 500);
stamp(stoneGear, <liquid:stone>*576, woodGear);

//Iron
recipes.remove(ironGear);
castRemove(ironGear);
gearRemove(<minecraft:iron_ingot>);
cast(ironGear, stoneGear, <liquid:iron>, 576, true);
fill(ironGear, stoneGear, <liquid:iron> * 576, 500);
stamp(ironGear, <liquid:iron> * 576, stoneGear);

//Gold
recipes.remove(goldGear);
castRemove(goldGear);
gearRemove(<minecraft:gold_ingot>);
cast(goldGear, ironGear, <liquid:gold>, 576, true);
fill(goldGear, ironGear, <liquid:gold> * 576, 500);
stamp(goldGear, <liquid:gold> * 576, ironGear);

//Diamond
recipes.remove(diamondGear);
castRemove(diamondGear);
gearRemove(<minecraft:diamond>);
cast(diamondGear, ironGear, <liquid:molten_diamond>, 2664, true);
fill(diamondGear, ironGear, <liquid:molten_diamond> * 2664, 500);
stamp(diamondGear,  <liquid:molten_diamond> * 2664, ironGear);

//Emerald
recipes.remove(emeraldGear);
castRemove(emeraldGear);
gearRemove(<minecraft:emerald>);
cast(emeraldGear, ironGear, <liquid:emerald>, 2664, true);
fill(emeraldGear, ironGear, <liquid:emerald> * 2664, 500);
stamp(emeraldGear, <liquid:emerald> * 2664, ironGear);

//Copper
recipes.remove(copperGear);
castRemove(copperGear);
gearRemove(<thermalfoundation:material:128>);
cast(copperGear, ironGear, <liquid:copper>, 576, true);
fill(copperGear, ironGear, <liquid:copper> * 576, 500);
stamp(copperGear, <liquid:copper> * 576, ironGear);

//Tin
recipes.remove(tinGear);
castRemove(tinGear);
gearRemove(<thermalfoundation:material:129>);
cast(tinGear, ironGear, <liquid:tin>, 576, true);
fill(tinGear, ironGear, <liquid:tin> * 576, 500);
stamp(tinGear, <liquid:tin> * 576, ironGear);

//Silver
recipes.remove(silverGear);
castRemove(silverGear);
gearRemove(<thermalfoundation:material:130>);
cast(silverGear, ironGear, <liquid:silver>, 576, true);
fill(silverGear, ironGear, <liquid:silver> * 576, 500);
stamp(silverGear, <liquid:silver> * 576, ironGear);

//Lead
recipes.remove(leadGear);
castRemove(leadGear);
gearRemove(<thermalfoundation:material:131>);
cast(leadGear, ironGear, <liquid:lead>, 576, true);
fill(leadGear, ironGear, <liquid:lead> * 576, 500);
stamp(leadGear, <liquid:lead> * 576, ironGear);

//Aluminum
recipes.remove(aluGear);
castRemove(aluGear);
gearRemove(<thermalfoundation:material:132>);
cast(aluGear, ironGear, <liquid:aluminum>, 576, true);
fill(aluGear, ironGear, <liquid:aluminum> * 576, 500);
stamp(aluGear, <liquid:aluminum> * 576, ironGear);

//Nickel
recipes.remove(nickelGear);
castRemove(nickelGear);
gearRemove(<thermalfoundation:material:133>);
cast(nickelGear, ironGear, <liquid:nickel>, 576, true);
fill(nickelGear, ironGear, <liquid:nickel> * 576, 500);
stamp(nickelGear, <liquid:nickel> * 576, ironGear);

//Platinum
recipes.remove(platGear);
castRemove(platGear);
gearRemove(<thermalfoundation:material:134>);
cast(platGear, ironGear, <liquid:platinum>, 576, true);
fill(platGear, ironGear, <liquid:platinum> * 576, 500);
stamp(platGear, <liquid:platinum> * 576, ironGear);

//Iridium
recipes.remove(iridiumGear);
castRemove(iridiumGear);
gearRemove(<thermalfoundation:material:135>);
cast(iridiumGear, ironGear, <liquid:iridium>, 576, true);
fill(iridiumGear, ironGear, <liquid:iridium> * 576, 500);
stamp(iridiumGear, <liquid:iridium> * 576, ironGear);

//Mana Infused - Mithril
recipes.remove(manaGear);
castRemove(manaGear);
gearRemove(<thermalfoundation:material:136>);
cast(manaGear, ironGear, <liquid:molten_mithril>, 576, true);
fill(manaGear, ironGear, <liquid:molten_mithril> * 576, 500);
stamp(manaGear,  <liquid:molten_mithril> * 576, ironGear);

//Steel
recipes.remove(steelGear);
castRemove(steelGear);
gearRemove(<thermalfoundation:material:160>);
cast(steelGear, ironGear, <liquid:steel>, 576, true);
fill(steelGear, ironGear, <liquid:steel> * 576, 500);
stamp(steelGear, <liquid:steel> * 576, ironGear);

//Electrum
recipes.remove(elecGear);
castRemove(elecGear);
gearRemove(<thermalfoundation:material:161>);
cast(elecGear, ironGear, <liquid:electrum>, 576, true);
fill(elecGear, ironGear, <liquid:electrum> * 576, 500);
stamp(elecGear, <liquid:electrum> * 576, ironGear);

//Invar
recipes.remove(invarGear);
castRemove(invarGear);
gearRemove(<thermalfoundation:material:162>);
cast(invarGear, ironGear, <liquid:invar>, 576, true);
fill(invarGear, ironGear, <liquid:invar> * 576, 500);
stamp(invarGear, <liquid:invar> * 576, ironGear);

//Bronze
recipes.remove(bronzeGear);
castRemove(bronzeGear);
gearRemove(<thermalfoundation:material:163>);
cast(bronzeGear, ironGear, <liquid:bronze>, 576, true);
fill(bronzeGear, ironGear, <liquid:bronze> * 576, 500);
stamp(bronzeGear, <liquid:bronze> * 576, ironGear);

//Constantan
recipes.remove(constGear);
castRemove(constGear);
gearRemove(<thermalfoundation:material:164>);
cast(constGear, ironGear, <liquid:constantan>, 576, true);
fill(constGear, ironGear, <liquid:constantan> * 576, 500);
stamp(constGear, <liquid:constantan> * 576, ironGear);

//Signalum
recipes.remove(signaGear);
castRemove(signaGear);
gearRemove(<thermalfoundation:material:165>);
cast(signaGear, ironGear, <liquid:signalum>, 576, true);
fill(signaGear, ironGear, <liquid:signalum> * 576, 500);
stamp(signaGear, <liquid:signalum> * 576, ironGear);

//Lumium
recipes.remove(lumiumGear);
castRemove(lumiumGear);
gearRemove(<thermalfoundation:material:166>);
cast(lumiumGear, ironGear, <liquid:lumium>, 576, true);
fill(lumiumGear, ironGear, <liquid:lumium> * 576, 500);
stamp(lumiumGear, <liquid:lumium> * 576, ironGear);

//Enderium
recipes.remove(enderGear);
castRemove(enderGear);
gearRemove(<thermalfoundation:material:167>);
cast(enderGear, ironGear, <liquid:enderium>, 576, true);
fill(enderGear, ironGear, <liquid:enderium> * 576, 500);
stamp(enderGear, <liquid:enderium> * 576, ironGear);

/* Coils */
//Redstone Reception Coil
recipes.remove(reception);
recipes.addShaped(reception, [
    [null, <immersiveengineering:wirecoil:5>, <enderio:item_alloy_ingot:3>],
    [<immersiveengineering:wirecoil:5>, <ore:plateGold>, <immersiveengineering:wirecoil:5>],
    [<enderio:item_alloy_ingot:3>, <immersiveengineering:wirecoil:5>, null]
]);

//Redstone Transmission Coil
recipes.remove(transmission);
recipes.addShaped(transmission, [
    [null, <immersiveengineering:wirecoil:5>, <enderio:item_alloy_ingot:3>],
    [<immersiveengineering:wirecoil:5>, <ore:plateSilver>, <immersiveengineering:wirecoil:5>],
    [<enderio:item_alloy_ingot:3>, <immersiveengineering:wirecoil:5>, null]
]);

//Redstone Conductance Coil
recipes.remove(conductance);
recipes.addShaped(conductance, [
    [<enderio:item_alloy_ingot:3>, <immersiveengineering:wirecoil:5>, null],
    [<immersiveengineering:wirecoil:5>, <ore:plateElectrum>, <immersiveengineering:wirecoil:5>],
    [null, <immersiveengineering:wirecoil:5>, <enderio:item_alloy_ingot:3>]
]);

/* Machines */
//Redstone furnace
recipes.remove(furnace);
recipes.addShaped(furnace, [
    [null, <enderio:item_alloy_ingot:3>, null],
    [<ceramics:clay_hard:7>, frame, <ceramics:clay_hard:7>],
    [copperGear, reception, copperGear]
]);

//Pulverizer
recipes.remove(pulverizer);
recipes.addShaped(pulverizer, [
    [null, <minecraft:piston>, null],
    [<excompressum:compressed_block:5>, frame, <excompressum:compressed_block:5>],
    [copperGear, reception, copperGear]
]);

//Sawmill
recipes.remove(sawmill);
recipes.addShaped(sawmill, [
    [null, <thermalfoundation:material:657>, null],
    [<ore:logWood>, frame, <ore:logWood>],
    [copperGear, reception, copperGear]
]);

//Induction Smelter
recipes.remove(induction);
recipes.addShaped(induction, [
    [null, invarGear, null],
    [<extrautils2:compressedsand>, frame, <extrautils2:compressedsand>],
    [copperGear, reception, copperGear]
]);

//Phytogenic Insolator
recipes.remove(phytogenic);
recipes.addShaped(phytogenic, [
    [null, lumiumGear, null],
    [<extrautils2:compresseddirt>, frame, <extrautils2:compresseddirt>],
    [copperGear, reception, copperGear]
]);

//Compactor
recipes.remove(compactor);
recipes.addShaped(compactor, [
    [null, <minecraft:piston>, null],
    [<ore:plateBronze>, frame, <ore:plateBronze>],
    [copperGear, reception, copperGear]
]);

//Magma Crucible
recipes.remove(magma);
recipes.addShaped(magma, [
    [null, <mekanism:basicblock:10>, null],
    [<quark:charred_nether_bricks>, frame, <quark:charred_nether_bricks>],
    [copperGear, reception, copperGear]
]);

//Fractionating Still
recipes.remove(fractionating);
recipes.addShaped(fractionating, [
    [null, nickelGear, null],
    [<mekanism:basicblock:10>, frame, <mekanism:basicblock:10>],
    [constGear, reception, constGear]
]);

//Fluid Transposer
recipes.remove(transposer);
recipes.addShaped(transposer, [
    [null, <mekanism:machineblock2:11>.withTag({tier: 0}), null],
    [<mekanism:basicblock:10>, frame, <mekanism:basicblock:10>],
    [copperGear, reception, copperGear]
]);

//Energetic Infuser
recipes.remove(energy);
recipes.addShaped(energy, [
    [null, leadGear, null],
    [transmission, <thermalexpansion:frame:128>, transmission],
    [copperGear, reception, copperGear]
]);

//Centrifugal Separator
recipes.remove(centrifugal);
recipes.addShaped(centrifugal, [
    [null, <randomthings:goldencompass>, null],
    [<ore:plateConstantan>, frame, <ore:plateConstantan>],
    [copperGear, reception, copperGear]
]);

//Sequencial Fabricator
recipes.remove(fabricator);
recipes.addShaped(fabricator, [
    [null, <avaritia:compressed_crafting_table>, null],
    [<ore:plateTin>, frame, <ore:plateTin>],
    [copperGear, reception, copperGear]
]);

//Alchemical Imbuer
recipes.remove(imbuer);
recipes.addShaped(imbuer, [
    [null, <minecraft:brewing_stand>, null],
    [<mekanism:basicblock:10>, frame, <mekanism:basicblock:10>],
    [constGear, reception, constGear]
]);

//Glacial Precipitator
recipes.remove(precipitator);
recipes.addShaped(precipitator, [
    [null, <minecraft:piston>, null],
    [<ore:plateInvar>, frame, <ore:plateInvar>],
    [copperGear, reception, copperGear]
]);

//Igneous Extruder
recipes.remove(extruder);
recipes.addShaped(extruder, [
    [null, <mekanism:basicblock:10>, null],
    [<ore:plateInvar>, frame, <ore:plateInvar>],
    [constGear, reception, constGear]
]);

/* Kits */
/* Upgrade */
//Hardened Upgrade Kit
recipes.remove(<thermalfoundation:upgrade>);
chamber([<thermalfoundation:material:354>*4, <thermalfoundation:material:291>, <enderio:item_alloy_ingot:3>*4], 3.5, [<thermalfoundation:upgrade>]);

//Reinforced Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:1>);
chamber([<thermalfoundation:material:353>*4, <thermalfoundation:material:258>*2, <thermalfoundation:glass:3>*2, <thermalfoundation:upgrade>], 3.5, [<thermalfoundation:upgrade:1>]);
chamber([<immersiveengineering:metal:37>*4, <thermalfoundation:material:258>*2, <thermalfoundation:glass:3>*2, <thermalfoundation:upgrade>], 3.5, [<thermalfoundation:upgrade:1>]);

//Signalum Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:2>);
chamber([<thermalfoundation:material:357>*4, <thermalfoundation:material:289>*2, <thermalfoundation:material:1025>*2, <thermalfoundation:upgrade:1>], 3.5, [<thermalfoundation:upgrade:2>]);

//Resonant Upgrade Kit
recipes.remove(<thermalfoundation:upgrade:3>);
chamber([<thermalfoundation:material:359>*4, <thermalfoundation:material:294>*2, <thermalfoundation:material:1024>*2, <thermalfoundation:upgrade:2>], 3.5, [<thermalfoundation:upgrade:3>]);

/* Conversion */
//Reinforced Conversion Kit
recipes.remove(<thermalfoundation:upgrade:33>);
smelter(<thermalfoundation:upgrade:33>, <thermalfoundation:upgrade>, <thermalfoundation:upgrade:1>, 5000);

//Signalum Conversion Kit
recipes.remove(<thermalfoundation:upgrade:34>);
smelter(<thermalfoundation:upgrade:34>, <thermalfoundation:upgrade:33>, <thermalfoundation:upgrade:2>, 5000);

//Resonant Conversion Kit
recipes.remove(<thermalfoundation:upgrade:35>);
smelter(<thermalfoundation:upgrade:35>, <thermalfoundation:upgrade:34>, <thermalfoundation:upgrade:3>, 5000);

/* Servos */
//Servo
recipes.remove(<thermaldynamics:servo>);
recipes.addShaped(<thermaldynamics:servo>*2, [
    [null, null, null],
    [<ore:nuggetIron>, <extrautils2:decorativeglass>, <ore:nuggetIron>],
    [<ore:plateIron>, <enderio:item_alloy_ingot:3>, <ore:plateIron>]
]);

//Hardnened Servo
recipes.remove(<thermaldynamics:servo:1>);
press(<thermaldynamics:servo:1>, <thermaldynamics:servo>, <thermalfoundation:storage_alloy:2>, 1000);

//Reinforced Servo
recipes.remove(<thermaldynamics:servo:2>);
press(<thermaldynamics:servo:2>, <thermaldynamics:servo:1>, <thermalfoundation:storage_alloy:1>, 1500);

//Signalum Servo
recipes.remove(<thermaldynamics:servo:3>);
press(<thermaldynamics:servo:3>, <thermaldynamics:servo:2>, <thermalfoundation:storage_alloy:5>, 2000);

//Resonant Servo
recipes.remove(<thermaldynamics:servo:4>);
press(<thermaldynamics:servo:4>, <thermaldynamics:servo:3>, <thermalfoundation:storage_alloy:7>, 2500);

/* Filters */
//Filter
recipes.remove(<thermaldynamics:filter>);
recipes.addShaped(<thermaldynamics:filter>*2, [
    [null, null, null],
    [<ore:nuggetIron>, <extrautils2:decorativeglass>, <ore:nuggetIron>],
    [<ore:plateIron>, <enderio:item_material:77>, <ore:plateIron>]
]);

//Hardnened Filter
recipes.remove(<thermaldynamics:filter:1>);
press(<thermaldynamics:filter:1>, <thermaldynamics:filter>, <thermalfoundation:storage_alloy:2>, 1000);

//Reinforced Filter
recipes.remove(<thermaldynamics:filter:2>);
press(<thermaldynamics:filter:2>, <thermaldynamics:filter:1>, <thermalfoundation:storage_alloy:1>, 1500);

//Signalum Filter
recipes.remove(<thermaldynamics:filter:3>);
press(<thermaldynamics:filter:3>, <thermaldynamics:filter:2>, <thermalfoundation:storage_alloy:5>, 2000);

//Resonant Filter
recipes.remove(<thermaldynamics:filter:4>);
press(<thermaldynamics:filter:4>, <thermaldynamics:filter:3>, <thermalfoundation:storage_alloy:7>, 2500);

/* Retrievers */
//Retirever
recipes.remove(<thermaldynamics:retriever>);
recipes.addShaped(<thermaldynamics:retriever>*2, [
    [null, null, null],
    [<ore:nuggetIron>, <extrautils2:decorativeglass>, <ore:nuggetIron>],
    [<ore:plateIron>, <extrautils2:ingredients:2>, <ore:plateIron>]
]);

//Hardnened Retriever
recipes.remove(<thermaldynamics:retriever:1>);
press(<thermaldynamics:retriever:1>, <thermaldynamics:retriever>, <thermalfoundation:storage_alloy:2>, 1000);

//Reinforced Retriever
recipes.remove(<thermaldynamics:retriever:2>);
press(<thermaldynamics:retriever:2>, <thermaldynamics:retriever:1>, <thermalfoundation:storage_alloy:1>, 1500);

//Signalum Retriever
recipes.remove(<thermaldynamics:retriever:3>);
press(<thermaldynamics:retriever:3>, <thermaldynamics:retriever:2>, <thermalfoundation:storage_alloy:5>, 2000);

//Resonant Retriever
recipes.remove(<thermaldynamics:retriever:4>);
press(<thermaldynamics:retriever:4>, <thermaldynamics:retriever:3>, <thermalfoundation:storage_alloy:7>, 2500);

/* Dynamos */
//Steam Dynamo
recipes.remove(<thermalexpansion:dynamo>);
recipes.addShaped(<thermalexpansion:dynamo>, [
    [null, transmission, null],
    [<enderio:item_alloy_ingot:4>, <thermalfoundation:material:256>, <enderio:item_alloy_ingot:4>],
    [<ore:plateCopper>, <enderio:item_alloy_ingot:3>, <ore:plateCopper>]
]);

//Magmatic Dynamo
recipes.remove(<thermalexpansion:dynamo:1>);
recipes.addShaped(<thermalexpansion:dynamo:1>, [
    [null, transmission, null],
    [<enderio:item_alloy_ingot:4>, <thermalfoundation:material:290>, <enderio:item_alloy_ingot:4>],
    [<ore:plateInvar>, <enderio:item_alloy_ingot:3>, <ore:plateInvar>]
]);

//Compression Dynamo
recipes.remove(<thermalexpansion:dynamo:2>);
recipes.addShaped(<thermalexpansion:dynamo:2>, [
    [null, transmission, null],
    [<enderio:item_alloy_ingot:4>, <thermalfoundation:material:257>, <enderio:item_alloy_ingot:4>],
    [<ore:plateTin>, <enderio:item_alloy_ingot:3>, <ore:plateTin>]
]);

//Reactant Dynamo
recipes.remove(<thermalexpansion:dynamo:3>);
recipes.addShaped(<thermalexpansion:dynamo:3>, [
    [null, transmission, null],
    [<enderio:item_alloy_ingot:4>, <thermalfoundation:material:259>, <enderio:item_alloy_ingot:4>],
    [<ore:plateLead>, <enderio:item_alloy_ingot:3>, <ore:plateLead>]
]);

//Enervation Dynamo
recipes.remove(<thermalexpansion:dynamo:4>);
recipes.addShaped(<thermalexpansion:dynamo:4>, [
    [null, transmission, null],
    [<enderio:item_alloy_ingot:4>, <thermalfoundation:material:289>, <enderio:item_alloy_ingot:4>],
    [<ore:plateElectrum>, <enderio:item_alloy_ingot:3>, <ore:plateElectrum>]
]);

//Numismatic Dynamo
recipes.remove(<thermalexpansion:dynamo:5>);
recipes.addShaped(<thermalexpansion:dynamo:5>, [
    [null, transmission, null],
    [<enderio:item_alloy_ingot:4>, <thermalfoundation:material:292>, <enderio:item_alloy_ingot:4>],
    [<ore:plateConstantan>, <enderio:item_alloy_ingot:3>, <ore:plateConstantan>]
]);

//Redstone Servo
recipes.remove(<thermalfoundation:material:512>);
recipes.addShaped(<thermalfoundation:material:512>, [
    [null, <tp:redstone_ingot>, null],
    [null, <enderio:item_alloy_ingot:4>, null],
    [null, <tp:redstone_ingot>, null]
]);

//Tank
recipes.remove(<thermalexpansion:tank>);
recipes.addShaped(<thermalexpansion:tank>, [
    [null, <ore:blockGlassHardened>, null],
    [<ore:blockGlassHardened>, <ore:plateCopper>, <ore:blockGlassHardened>],
    [null, <thermalfoundation:material:512>, null]
]);

//Cache
recipes.remove(<thermalexpansion:cache>);
recipes.addShaped(<thermalexpansion:cache>, [
    [null, <ore:plateTin>, null],
    [<ore:plateTin>, <actuallyadditions:block_giant_chest>, <ore:plateTin>],
    [null, <thermalfoundation:material:512>, null]
]);

/* Satchels */
//Basic
recipes.remove(<thermalexpansion:satchel>);
recipes.addShaped(<thermalexpansion:satchel>, [
    [null, <harvestcraft:hardenedleatheritem>, null],
    [<ore:plateTin>, <ore:blockRockwool>, <ore:plateTin>],
    [<harvestcraft:hardenedleatheritem>, null, <harvestcraft:hardenedleatheritem>]
]);

//Hardened
recipes.remove(<thermalexpansion:satchel:1>);
press(<thermalexpansion:satchel:1>, <thermalexpansion:satchel>, <thermalfoundation:storage_alloy:2>, 2000);

//Reinforced
recipes.remove(<thermalexpansion:satchel:2>);
press(<thermalexpansion:satchel:2>, <thermalexpansion:satchel:1>, <thermalfoundation:storage_alloy:1>, 2500);

//Signalum
recipes.remove(<thermalexpansion:satchel:3>);
press(<thermalexpansion:satchel:3>, <thermalexpansion:satchel:2>, <thermalfoundation:storage_alloy:5>, 3000);

//Enderium
recipes.remove(<thermalexpansion:satchel:4>);
press(<thermalexpansion:satchel:4>, <thermalexpansion:satchel:3>, <thermalfoundation:storage_alloy:7>, 3500);

/* Reservoirs */
//Basic
recipes.remove(<thermalexpansion:reservoir>);
recipes.addShaped(<thermalexpansion:reservoir>, [
    [null, <ore:plateTin>, null],
    [<ore:plateCopper>, <ceramics:clay_bucket>, <ore:plateCopper>],
    [null, <thermalfoundation:material:512>, null]
]);

//Hardened
recipes.remove(<thermalexpansion:reservoir:1>);
fluid2item(<thermalexpansion:reservoir:1>, <liquid:invar>, [<thermalexpansion:reservoir>], true);

//Reinforced
recipes.remove(<thermalexpansion:reservoir:2>);
fluid2item(<thermalexpansion:reservoir:2>, <liquid:electrum>, [<thermalexpansion:reservoir:1>], true);

//Signalum
recipes.remove(<thermalexpansion:reservoir:3>);
fluid2item(<thermalexpansion:reservoir:3>, <liquid:signalum>, [<thermalexpansion:reservoir:2>], true);

//Enderium
recipes.remove(<thermalexpansion:reservoir:4>);
fluid2item(<thermalexpansion:reservoir:4>, <liquid:enderium>, [<thermalexpansion:reservoir:3>], true);

/* Flux Capacitors */
//Basic
recipes.remove(<thermalexpansion:capacitor>);
recipes.addShaped(<thermalexpansion:capacitor>, [
    [null, <enderio:item_alloy_ingot:3>, null],
    [<ore:plateLead>, transmission, <ore:plateLead>],
    [<enderio:item_alloy_ingot:3>, <ore:dustSulfur>, <enderio:item_alloy_ingot:3>]
]);

//Hardened
recipes.remove(<thermalexpansion:capacitor:1>);
recipes.addShaped(<thermalexpansion:capacitor:1>, [
    [null, <enderio:item_alloy_ingot:3>, null],
    [<ore:plateInvar>, <thermalexpansion:capacitor>, <ore:plateInvar>],
    [<enderio:item_alloy_ingot:3>, transmission, <enderio:item_alloy_ingot:3>]
]);

//Reinforced
recipes.remove(<thermalexpansion:capacitor:2>);
recipes.addShaped(<thermalexpansion:capacitor:2>, [
    [null, <enderio:item_alloy_ingot:3>, null],
    [<ore:plateElectrum>, <thermalexpansion:capacitor:1>, <ore:plateElectrum>],
    [<enderio:item_alloy_ingot:3>, transmission, <enderio:item_alloy_ingot:3>]
]);

//Signalum
recipes.remove(<thermalexpansion:capacitor:3>);
recipes.addShaped(<thermalexpansion:capacitor:3>, [
    [null, <enderio:item_alloy_ingot:3>, null],
    [<ore:plateSignalum>, <thermalexpansion:capacitor:2>, <ore:plateSignalum>],
    [<enderio:item_alloy_ingot:3>, transmission, <enderio:item_alloy_ingot:3>]
]);

//Resonant
recipes.remove(<thermalexpansion:capacitor:4>);
recipes.addShaped(<thermalexpansion:capacitor:4>, [
    [null, <enderio:item_alloy_ingot:3>, null],
    [<ore:plateEnderium>, <thermalexpansion:capacitor:3>, <ore:plateEnderium>],
    [<enderio:item_alloy_ingot:3>, transmission, <enderio:item_alloy_ingot:3>]
]);

/* Augments */
//Auxiliary Reception Coil
recipes.remove(<thermalexpansion:augment:128>);
chamber([<extrautils2:ingredients:9>, <immersiveengineering:metal:40>*4, reception], 2.0, [<thermalexpansion:augment:128>]);
chamber([<extrautils2:ingredients:9>, <embers:plate_gold>*4, reception], 2.0, [<thermalexpansion:augment:128>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:33>*4, reception], 2.0, [<thermalexpansion:augment:128>]);

//Auxiliary Sieve
recipes.remove(<thermalexpansion:augment:129>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:355>*4, servo], 2.0, [<thermalexpansion:augment:129>]);

//Nullification Chamber
recipes.remove(<thermalexpansion:augment:130>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:162>*4, <minecraft:lava_bucket>], 2.0, [<thermalexpansion:augment:130>]);

//Trivection Chamber
recipes.remove(<thermalexpansion:augment:256>);
chamber([<extrautils2:ingredients:9>, copperGear, <tconstruct:seared:3>, <embers:plate_silver>*2], 2.0, [<thermalexpansion:augment:256>]);
chamber([<extrautils2:ingredients:9>, copperGear, <tconstruct:seared:3>, <immersiveengineering:metal:33>*2], 2.0, [<thermalexpansion:augment:256>]);
chamber([<extrautils2:ingredients:9>, copperGear, <tconstruct:seared:3>, <thermalfoundation:material:322>*2], 2.0, [<thermalexpansion:augment:256>]);

//Flux Anodizers
recipes.remove(<thermalexpansion:augment:257>);
chamber([<extrautils2:ingredients:9>, bronzeGear, <thermalfoundation:material:354>*2, <thermalfoundation:material:1024>], 2.0, [<thermalexpansion:augment:257>]);

//Pyrolytic Conversion
recipes.remove(<thermalexpansion:augment:258>);
chamber([<extrautils2:ingredients:9>, invarGear, <quark:charred_nether_bricks>, <embers:plate_copper>*2], 2.0, [<thermalexpansion:augment:258>]);
chamber([<extrautils2:ingredients:9>, invarGear, <quark:charred_nether_bricks>, <immersiveengineering:metal:30>*2], 2.0, [<thermalexpansion:augment:258>]);
chamber([<extrautils2:ingredients:9>, invarGear, <quark:charred_nether_bricks>, <thermalfoundation:material:320>*2], 2.0, [<thermalexpansion:augment:258>]);

//Tectonic Initiator
recipes.remove(<thermalexpansion:augment:273>);
chamber([<extrautils2:ingredients:9>, signaGear, <thermalfoundation:material:355>*2, <thermalfoundation:material:1027>, servo], 2.0, [<thermalexpansion:augment:273>]);

//Resin Funnel
recipes.remove(<thermalexpansion:augment:288>);
chamber([<extrautils2:ingredients:9>, tinGear, <minecraft:bucket>, servo, <embers:plate_copper>*2], 2.0, [<thermalexpansion:augment:288>]);
chamber([<extrautils2:ingredients:9>, tinGear, <minecraft:bucket>, servo, <immersiveengineering:metal:30>*2], 2.0, [<thermalexpansion:augment:288>]);
chamber([<extrautils2:ingredients:9>, tinGear, <minecraft:bucket>, servo, <thermalfoundation:material:320>*2], 2.0, [<thermalexpansion:augment:288>]);

//Metallurgical Recovery
recipes.remove(<thermalexpansion:augment:303>);
chamber([<extrautils2:ingredients:9>, silverGear, <thermalfoundation:material:865>*2, glassHardened, servo], 2.0, [<thermalexpansion:augment:303>]);

//Pyro-concentrator
recipes.remove(<thermalexpansion:augment:304>);
chamber([<extrautils2:ingredients:9>, signaGear, conductance, <thermalfoundation:material:1024>, <immersiveengineering:metal:34>*2], 2.0, [<thermalexpansion:augment:304>]);
chamber([<extrautils2:ingredients:9>, signaGear, conductance, <thermalfoundation:material:1024>, <thermalfoundation:material:325>*2], 2.0, [<thermalexpansion:augment:304>]);

//Nutrient Recovery
recipes.remove(<thermalexpansion:augment:320>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:fertilizer:1>*2, servo, glassHardened, silverGear], 2.0, [<thermalexpansion:augment:320>]);

//Sapling Infuser
recipes.remove(<thermalexpansion:augment:323>);
chamber([<extrautils2:ingredients:9>, invarGear, <thermalfoundation:material:358>*2, servo, <minecraft:piston>], 2.0, [<thermalexpansion:augment:323>]);

//Monoculture Cycle
recipes.remove(<thermalexpansion:augment:324>);
chamber([<extrautils2:ingredients:9>, signaGear, conductance, <thermalfoundation:fertilizer:2>, <thermalfoundation:material:325>*2], 2.0, [<thermalexpansion:augment:324>]);
chamber([<extrautils2:ingredients:9>, signaGear, conductance, <thermalfoundation:fertilizer:2>, <immersiveengineering:metal:34>*2], 2.0, [<thermalexpansion:augment:324>]);

//Numismatic Press
recipes.remove(<thermalexpansion:augment:336>);
chamber([<extrautils2:ingredients:9>, <minecraft:emerald>, invarGear, <immersiveengineering:metal:37>*2], 2.0, [<thermalexpansion:augment:336>]);
chamber([<extrautils2:ingredients:9>, <minecraft:emerald>, invarGear, <thermalfoundation:material:353>*2], 2.0, [<thermalexpansion:augment:336>]);

//Gearworking Die
recipes.remove(<thermalexpansion:augment:337>);
chamber([<extrautils2:ingredients:9>, <minecraft:piston>, ironGear, <embers:plate_lead>*2], 2.0, [<thermalexpansion:augment:337>]);
chamber([<extrautils2:ingredients:9>, <minecraft:piston>, ironGear, <immersiveengineering:metal:32>*2], 2.0, [<thermalexpansion:augment:337>]);
chamber([<extrautils2:ingredients:9>, <minecraft:piston>, ironGear, <thermalfoundation:material:323>*2], 2.0, [<thermalexpansion:augment:337>]);

//Pyroconvective Loop
recipes.remove(<thermalexpansion:augment:352>);
chamber([<extrautils2:ingredients:9>, invarGear, <minecraft:piston>*2, conductance, <minecraft:red_nether_brick>], 2.0, [<thermalexpansion:augment:352>]);

//Reflux Column
recipes.remove(<thermalexpansion:augment:368>);
chamber([<extrautils2:ingredients:9>, constGear, glassHardened, glassHardened, conductance, <botania:quartz:2>], 2.0, [<thermalexpansion:augment:368>]);

//Alchemical Retort
recipes.remove(<thermalexpansion:augment:369>);
chamber([<extrautils2:ingredients:9>, signaGear, conductance, <minecraft:cauldron>, <embers:plate_lead>*2], 2.0, [<thermalexpansion:augment:369>]);
chamber([<extrautils2:ingredients:9>, signaGear, conductance, <minecraft:cauldron>, <immersiveengineering:metal:32>*2], 2.0, [<thermalexpansion:augment:369>]);
chamber([<extrautils2:ingredients:9>, signaGear, conductance, <minecraft:cauldron>, <thermalfoundation:material:323>*2], 2.0, [<thermalexpansion:augment:369>]);

//Flux Linkage Concentrator
recipes.remove(<thermalexpansion:augment:400>);
chamber([<extrautils2:ingredients:9>, elecGear, conductance, <thermalfoundation:material:131>, <embers:plate_silver>*2], 2.0, [<thermalexpansion:augment:400>]);
chamber([<extrautils2:ingredients:9>, elecGear, conductance, <thermalfoundation:material:131>, <immersiveengineering:metal:33>*2], 2.0, [<thermalexpansion:augment:400>]);
chamber([<extrautils2:ingredients:9>, elecGear, conductance, <thermalfoundation:material:131>, <thermalfoundation:material:322>*2], 2.0, [<thermalexpansion:augment:400>]);

//Flux Reconstruction
recipes.remove(<thermalexpansion:augment:401>);
chamber([<extrautils2:ingredients:9>, <pneumaticcraft:compressed_iron_block>, conductance, ironGear, glassHardened, glassHardened], 2.0, [<thermalexpansion:augment:401>]);

//Parabolic Flux Coupling
recipes.remove(<thermalexpansion:augment:402>);
chamber([<extrautils2:ingredients:9>, servo, elecGear, glassHardened, <embers:plate_silver>*2], 2.0, [<thermalexpansion:augment:402>]);
chamber([<extrautils2:ingredients:9>, servo, elecGear, glassHardened, <immersiveengineering:metal:33>*2], 2.0, [<thermalexpansion:augment:402>]);
chamber([<extrautils2:ingredients:9>, servo, elecGear, glassHardened, <thermalfoundation:material:322>*2], 2.0, [<thermalexpansion:augment:402>]);

//Enstabulation Apparatus
recipes.remove(<thermalexpansion:augment:416>);
chamber([<extrautils2:ingredients:9>, servo, invarGear, <minecraft:piston>, <minecraft:diamond_sword>*2], 2.0, [<thermalexpansion:augment:416>]);

//Pattern Validation
recipes.remove(<thermalexpansion:augment:432>);
chamber([<extrautils2:ingredients:9>, servo, tinGear, glassHardened, <enderio:item_alloy_ingot:9>*2], 2.0, [<thermalexpansion:augment:432>]);

//Fluidic Fabrication
recipes.remove(<thermalexpansion:augment:433>);
chamber([<extrautils2:ingredients:9>, <minecraft:bucket>, servo, glassHardened, <embers:plate_copper>*2], 2.0, [<thermalexpansion:augment:433>]);
chamber([<extrautils2:ingredients:9>, <minecraft:bucket>, servo, glassHardened, <immersiveengineering:metal:30>*2], 2.0, [<thermalexpansion:augment:433>]);
chamber([<extrautils2:ingredients:9>, <minecraft:bucket>, servo, glassHardened, <thermalfoundation:material:320>*2], 2.0, [<thermalexpansion:augment:433>]);

//Reagent Recovery
recipes.remove(<thermalexpansion:augment:448>);
chamber([<extrautils2:ingredients:9>, servo, glassHardened, silverGear, <enderio:item_alloy_ingot:3>, <mekanism:ingot:3>], 2.0, [<thermalexpansion:augment:448>]);

//Pyroclastic Injection
recipes.remove(<thermalexpansion:augment:496>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:354>*2, <thermalfoundation:material:1025>, servo, copperGear], 2.0, [<thermalexpansion:augment:496>]);

//Clastic Deposition
recipes.remove(<thermalexpansion:augment:497>);
chamber([<extrautils2:ingredients:9>, conductance, nickelGear, <thermalfoundation:material:1026>, <embers:plate_lead>*2], 2.0, [<thermalexpansion:augment:497>]);
chamber([<extrautils2:ingredients:9>, conductance, nickelGear, <thermalfoundation:material:1026>, <immersiveengineering:metal:32>*2], 2.0, [<thermalexpansion:augment:497>]);
chamber([<extrautils2:ingredients:9>, conductance, nickelGear, <thermalfoundation:material:1026>, <thermalfoundation:material:323>*2], 2.0, [<thermalexpansion:augment:497>]);

//Auxiliary Transmission Coil
recipes.remove(<thermalexpansion:augment:512>);
chamber([<extrautils2:ingredients:9>, <enderio:item_alloy_endergy_ingot:5>*4, transmission], 2.0, [<thermalexpansion:augment:512>]);

//Fuel Catalyzer
recipes.remove(<thermalexpansion:augment:513>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:131>*4, conductance], 2.0, [<thermalexpansion:augment:513>]);

//Transmission Coil Ducting
recipes.remove(<thermalexpansion:augment:514>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:131>*4, <embers:plate_copper>], 2.0, [<thermalexpansion:augment:514>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:131>*4, <immersiveengineering:metal:30>], 2.0, [<thermalexpansion:augment:514>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:131>*4, <thermalfoundation:material:320>], 2.0, [<thermalexpansion:augment:514>]);

//Excitation Field Limiter
recipes.remove(<thermalexpansion:augment:515>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:131>*4, <immersiveengineering:metal:37>], 2.0, [<thermalexpansion:augment:515>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:131>*4, <thermalfoundation:material:353>], 2.0, [<thermalexpansion:augment:515>]);

//Boiler Conversion
recipes.remove(<thermalexpansion:augment:576>);
chamber([<extrautils2:ingredients:9>, <minecraft:bucket>, ironGear, glassHardened, <embers:plate_copper>*2], 2.0, [<thermalexpansion:augment:576>]);
chamber([<extrautils2:ingredients:9>, <minecraft:bucket>, ironGear, glassHardened, <immersiveengineering:metal:30>*2], 2.0, [<thermalexpansion:augment:576>]);
chamber([<extrautils2:ingredients:9>, <minecraft:bucket>, ironGear, glassHardened, <thermalfoundation:material:320>*2], 2.0, [<thermalexpansion:augment:576>]);

//Turbine Conversion
recipes.remove(<thermalexpansion:augment:640>);
chamber([<extrautils2:ingredients:9>, <enderio:item_alloy_ingot:9>, conductance, ironGear, <embers:plate_copper>*2], 2.0, [<thermalexpansion:augment:640>]);
chamber([<extrautils2:ingredients:9>, <enderio:item_alloy_ingot:9>, conductance, ironGear, <immersiveengineering:metal:30>*2], 2.0, [<thermalexpansion:augment:640>]);
chamber([<extrautils2:ingredients:9>, <enderio:item_alloy_ingot:9>, conductance, ironGear, <thermalfoundation:material:320>*2], 2.0, [<thermalexpansion:augment:640>]);

//Isentropic Reservoir
recipes.remove(<thermalexpansion:augment:656>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1025>, <thermalfoundation:material:354>*2, signaGear, conductance], 2.0, [<thermalexpansion:augment:656>]);

//Closed-loop Cooling
recipes.remove(<thermalexpansion:augment:672>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1025>, <thermalfoundation:material:321>*2, invarGear, conductance], 2.0, [<thermalexpansion:augment:672>]);

//Ignition Plugs
recipes.remove(<thermalexpansion:augment:673>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1024>, signaGear, conductance, <embers:plate_copper>*2], 2.0, [<thermalexpansion:augment:673>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1024>, signaGear, conductance, <immersiveengineering:metal:30>*2], 2.0, [<thermalexpansion:augment:673>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1024>, signaGear, conductance, <thermalfoundation:material:320>*2], 2.0, [<thermalexpansion:augment:673>]);

//Agitative Manifold
recipes.remove(<thermalexpansion:augment:674>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1026>, conductance, bronzeGear, <immersiveengineering:metal:36>*2], 2.0, [<thermalexpansion:augment:674>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1026>, conductance, bronzeGear, <thermalfoundation:material:356>*2], 2.0, [<thermalexpansion:augment:674>]);

//Elemental Catalyzer
recipes.remove(<thermalexpansion:augment:688>);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1026>, conductance, signaGear, <embers:plate_lead>*2], 2.0, [<thermalexpansion:augment:688>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1026>, conductance, signaGear, <immersiveengineering:metal:32>*2], 2.0, [<thermalexpansion:augment:688>]);
chamber([<extrautils2:ingredients:9>, <thermalfoundation:material:1026>, conductance, signaGear, <thermalfoundation:material:323>*2], 2.0, [<thermalexpansion:augment:688>]);

//Disjunctive Extraction
recipes.remove(<thermalexpansion:augment:704>);
chamber([<extrautils2:ingredients:9>, <tp:lapis_ingot>, conductance, signaGear, <embers:plate_gold>*2], 2.0, [<thermalexpansion:augment:704>]);
chamber([<extrautils2:ingredients:9>, <tp:lapis_ingot>, conductance, signaGear, <immersiveengineering:metal:40>*2], 2.0, [<thermalexpansion:augment:704>]);
chamber([<extrautils2:ingredients:9>, <tp:lapis_ingot>, conductance, signaGear, <thermalfoundation:material:33>*2], 2.0, [<thermalexpansion:augment:704>]);

//Lapidary Calibration
recipes.remove(<thermalexpansion:augment:720>);
chamber([<extrautils2:ingredients:9>, <minecraft:emerald>, conductance, signaGear, <immersiveengineering:metal:37>*2], 2.0, [<thermalexpansion:augment:720>]);
chamber([<extrautils2:ingredients:9>, <minecraft:emerald>, conductance, signaGear, <thermalfoundation:material:353>*2], 2.0, [<thermalexpansion:augment:720>]);

/* Mystical Agriculture - Ingots */
//Inferium
fill(<mysticalagriculture:crafting:33>, <mysticalagriculture:crafting:32>, <liquid:inferium> * 144, 250);

//Prudentium
fill(<mysticalagriculture:crafting:34>, <mysticalagriculture:crafting:33>, <liquid:prudentium> * 144, 250);

//Intermedium
fill(<mysticalagriculture:crafting:35>, <mysticalagriculture:crafting:34>, <liquid:intermedium> * 144, 250);

//Superium
fill(<mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:35>, <liquid:superium> * 144, 250);

//Supremium
fill(<mysticalagriculture:crafting:37>, <mysticalagriculture:crafting:36>, <liquid:supremium> * 144, 250);

//Insanium
fill(<mysticalagradditions:insanium:2>, <mysticalagriculture:crafting:37>, <liquid:insanium> * 144, 250);

//Clear Glass
fill(<tconstruct:clear_glass>, <minecraft:sand>, <liquid:glass> * 1000, 500);

//Resonating Crystal
recipes.remove(<extrautils2:endershard>);
sawmillMachine(<extrautils2:endershard> * 4, <botania:manaresource:1>, 4000);

//Sand to Dust
pulverizerMachine(<exnihilocreatio:block_dust>, <minecraft:sand>, 4000);

//Steel Ingot
mods.thermalexpansion.InductionSmelter.removeRecipe(<minecraft:iron_ingot>, <thermalfoundation:material:768>);
mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material>, <thermalfoundation:material:768>);