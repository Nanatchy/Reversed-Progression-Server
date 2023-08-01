import mods.modularmachinery.RecipeBuilder;

var machineframe = RecipeBuilder.newBuilder("machineframe", "high_exchange_tablet", 400);
var deviceframe = RecipeBuilder.newBuilder("deviceframe", "high_exchange_tablet", 400);
var blankPattern = RecipeBuilder.newBuilder("pattern", "pattern_creator", 200);
var machineCase = RecipeBuilder.newBuilder("machinecase", "high_celestial_altar", 5000);
var machineChassis = RecipeBuilder.newBuilder("machinechassis", "high_runic_altar", 600);
var steelCasing = RecipeBuilder.newBuilder("steelcasing", "high_blood_altar", 800);
var machineCasing = RecipeBuilder.newBuilder("machinecasing", "high_exchange_tablet", 400);

/* EnderIO Conduits */
//Item
var itemConduit = RecipeBuilder.newBuilder("energyconduit", "conduit_assembler", 50);

//Fluid
var fluidConduit = RecipeBuilder.newBuilder("fluidconduit", "conduit_assembler", 50);
var pressurizedConduit = RecipeBuilder.newBuilder("pressurizedconduit", "conduit_assembler", 50);
var enderConduit = RecipeBuilder.newBuilder("enderconduit", "conduit_assembler", 50);

//Energy
var crudeConduit = RecipeBuilder.newBuilder("crudeconduit", "conduit_assembler", 50);
var ironConduit = RecipeBuilder.newBuilder("ironconduit", "conduit_assembler", 50);
var aluminiumConduit = RecipeBuilder.newBuilder("aluminiumconduit", "conduit_assembler", 50);
var goldConduit = RecipeBuilder.newBuilder("goldconduit", "conduit_assembler", 50);
var copperConduit = RecipeBuilder.newBuilder("copperconduit", "conduit_assembler", 50);
var conductiveConduit = RecipeBuilder.newBuilder("conductiveconduit", "conduit_assembler", 50);
var silverConduit = RecipeBuilder.newBuilder("silverconduit", "conduit_assembler", 50);
var electrumConduit = RecipeBuilder.newBuilder("electrumconduit", "conduit_assembler", 50);
var enhancedConduit = RecipeBuilder.newBuilder("enhancedconduit", "conduit_assembler", 50);
var energeticConduit = RecipeBuilder.newBuilder("energeticconduit", "conduit_assembler", 50);
var enderEnergyConduit = RecipeBuilder.newBuilder("enderEnergyconduit", "conduit_assembler", 50);
var crystallineConduit = RecipeBuilder.newBuilder("crystallineconduit", "conduit_assembler", 50);
var crystallinePinkConduit = RecipeBuilder.newBuilder("crystallinePinkconduit", "conduit_assembler", 50);
var melodicConduit = RecipeBuilder.newBuilder("melodicconduit", "conduit_assembler", 50);
var stellarConduit = RecipeBuilder.newBuilder("stellarconduit", "conduit_assembler", 50);

//Mystical - Ingots
var infIngot = RecipeBuilder.newBuilder("inferiumingot", "ingot_former", 100);
var prudIngot = RecipeBuilder.newBuilder("prudentiumingot", "ingot_former", 100);
var interIngot = RecipeBuilder.newBuilder("intermediumingot", "ingot_former", 100);
var superIngot = RecipeBuilder.newBuilder("superiumingot", "ingot_former", 100);
var supremIngot = RecipeBuilder.newBuilder("supremiumingot", "ingot_former", 100);
var insIngot = RecipeBuilder.newBuilder("insaniumingot", "ingot_former", 100);

//Mystical - Fluid
var infLiquid = <liquid:inferium>;
var prudLiquid = <liquid:prudentium>;
var interLiquid = <liquid:intermedium>;
var superLiquid = <liquid:superium>;
var supremLiquid = <liquid:supremium>;
var insLiquid = <liquid:insanium>;

//Others
var dataConduit = RecipeBuilder.newBuilder("dataconduit", "conduit_assembler", 50);
var refinedConduit = RecipeBuilder.newBuilder("refinedconduit", "conduit_assembler", 50);
var redstoneConduit = RecipeBuilder.newBuilder("redstoneconduit", "conduit_assembler", 50);

/* Machines Crafts */
//Thermal Machine Frame
recipes.remove(<thermalexpansion:frame>);
machineframe.addEnergyPerTickInput(500);
machineframe.addItemInput(<rftools:machine_frame>);
machineframe.addItemInput(<tconstruct:clear_glass> * 2);
machineframe.addItemInput(<ore:plateIron>, 2);
machineframe.addItemOutput(<thermalexpansion:frame>);
machineframe.build();

//Thermal Device Frame
recipes.remove(<thermalexpansion:frame:64>);
deviceframe.addEnergyPerTickInput(500);
deviceframe.addItemInput(<rftools:machine_frame>);
deviceframe.addItemInput(<tconstruct:clear_glass> * 2);
deviceframe.addItemInput(<ore:plateTin>, 2);
deviceframe.addItemOutput(<thermalexpansion:frame:64>);
deviceframe.build();

//Tinker Blank Pattern
blankPattern.addItemInput(<ore:plankWood>, 2);
blankPattern.addItemInput(<minecraft:stick> * 2);
blankPattern.addFluidInput(<liquid:creosote> * 1000);
blankPattern.addItemOutput(<tconstruct:pattern> * 4);
blankPattern.build();

//Refined Storage Machine Casing
recipes.remove(<refinedstorage:machine_casing>);
machineCasing.addEnergyPerTickInput(500);
machineCasing.addItemInput(<rftools:machine_frame>);
machineCasing.addItemInput(<refinedstorage:quartz_enriched_iron> * 8);
machineCasing.addItemOutput(<refinedstorage:machine_casing>);
machineCasing.build();

/* EnderIO Conduits */
//Item Conduit
recipes.remove(<enderio:item_item_conduit>);
itemConduit.addEnergyPerTickInput(50);
itemConduit.addItemInput(<enderio:item_alloy_nugget:5> * 3);
itemConduit.addItemInput(<enderio:item_material:4> * 6);
itemConduit.addItemOutput(<enderio:item_item_conduit> * 8);
itemConduit.build();

//Fluid Conduit
recipes.remove(<enderio:item_liquid_conduit>);
fluidConduit.addEnergyPerTickInput(50);
fluidConduit.addItemInput(<ore:fusedGlass>, 3);
fluidConduit.addItemInput(<enderio:item_material:4> * 6);
fluidConduit.addItemOutput(<enderio:item_liquid_conduit> * 8);
fluidConduit.build();

//Pressurized Fluid Conduit
recipes.remove(<enderio:item_liquid_conduit:1>);
pressurizedConduit.addEnergyPerTickInput(50);
pressurizedConduit.addItemInput(<enderio:item_liquid_conduit> * 8);
pressurizedConduit.addItemInput(<enderio:item_alloy_ingot:1> * 2);
pressurizedConduit.addItemInput(<enderio:item_material:4> * 6);
pressurizedConduit.addItemOutput(<enderio:item_liquid_conduit:1> * 8);
pressurizedConduit.build();

//Ender Conduit
recipes.remove(<enderio:item_liquid_conduit:2>);
enderConduit.addEnergyPerTickInput(50);
enderConduit.addItemInput(<enderio:item_liquid_conduit:1> * 8);
enderConduit.addItemInput(<enderio:item_alloy_ingot:2> * 2);
enderConduit.addItemInput(<enderio:item_material:4> * 6);
enderConduit.addItemOutput(<enderio:item_liquid_conduit:2> * 8);
enderConduit.build();

/* Energy Conduits */
//Crude
recipes.remove(<enderio:item_endergy_conduit>);
crudeConduit.addEnergyPerTickInput(50);
crudeConduit.addItemInput(<enderio:item_alloy_endergy_ingot> * 3);
crudeConduit.addItemInput(<enderio:item_material:4> * 6);
crudeConduit.addItemOutput(<enderio:item_endergy_conduit> * 8);
crudeConduit.build();

//Iron
recipes.remove(<enderio:item_endergy_conduit:1>);
ironConduit.addEnergyPerTickInput(50);
ironConduit.addItemInput(<enderio:item_endergy_conduit> * 8);
ironConduit.addItemInput(<enderio:item_material:4> * 6);
ironConduit.addItemInput(<enderio:item_material:75>);
ironConduit.addItemInput(<ore:ingotIron>, 2);
ironConduit.addItemOutput(<enderio:item_endergy_conduit:1> * 8);
ironConduit.build();

//Aluminium
recipes.remove(<enderio:item_endergy_conduit:2>);
aluminiumConduit.addEnergyPerTickInput(50);
aluminiumConduit.addItemInput(<enderio:item_endergy_conduit:1> * 8);
aluminiumConduit.addItemInput(<enderio:item_material:4> * 6);
aluminiumConduit.addItemInput(<enderio:item_material:75>);
aluminiumConduit.addItemInput(<ore:ingotAluminum>, 2);
aluminiumConduit.addItemOutput(<enderio:item_endergy_conduit:2> * 8);
aluminiumConduit.build();

//Gold
recipes.remove(<enderio:item_endergy_conduit:3>);
goldConduit.addEnergyPerTickInput(50);
goldConduit.addItemInput(<enderio:item_endergy_conduit:2> * 8);
goldConduit.addItemInput(<enderio:item_material:4> * 6);
goldConduit.addItemInput(<enderio:item_material:75>);
goldConduit.addItemInput(<minecraft:gold_ingot> * 2);
goldConduit.addItemOutput(<enderio:item_endergy_conduit:3> * 8);
goldConduit.build();

//Copper
recipes.remove(<enderio:item_endergy_conduit:4>);
copperConduit.addEnergyPerTickInput(50);
copperConduit.addItemInput(<enderio:item_endergy_conduit:3> * 8);
copperConduit.addItemInput(<enderio:item_material:4> * 6);
copperConduit.addItemInput(<enderio:item_material:75>);
copperConduit.addItemInput(<ore:ingotCopper>, 2);
copperConduit.addItemOutput(<enderio:item_endergy_conduit:4> * 8);
copperConduit.build();

//Conductive
recipes.remove(<enderio:item_power_conduit>);
conductiveConduit.addEnergyPerTickInput(50);
conductiveConduit.addItemInput(<enderio:item_endergy_conduit:4> * 8);
conductiveConduit.addItemInput(<enderio:item_material:4> * 6);
conductiveConduit.addItemInput(<enderio:item_material:75>);
conductiveConduit.addItemInput(<enderio:item_alloy_ingot:4> * 2);
conductiveConduit.addItemOutput(<enderio:item_power_conduit> * 8);
conductiveConduit.build();

//Silver
recipes.remove(<enderio:item_endergy_conduit:5>);
silverConduit.addEnergyPerTickInput(50);
silverConduit.addItemInput(<enderio:item_power_conduit> * 8);
silverConduit.addItemInput(<enderio:item_material:4> * 6);
silverConduit.addItemInput(<enderio:item_material:75>);
silverConduit.addItemInput(<ore:ingotSilver>, 2);
silverConduit.addItemOutput(<enderio:item_endergy_conduit:5> * 8);
silverConduit.build();

//Electrum
recipes.remove(<enderio:item_endergy_conduit:6>);
electrumConduit.addEnergyPerTickInput(50);
electrumConduit.addItemInput(<enderio:item_endergy_conduit:5> * 8);
electrumConduit.addItemInput(<enderio:item_material:4> * 6);
electrumConduit.addItemInput(<enderio:item_material:75>);
electrumConduit.addItemInput(<ore:ingotElectrum>, 2);
electrumConduit.addItemOutput(<enderio:item_endergy_conduit:6> * 8);
electrumConduit.build();

//Enhanced
recipes.remove(<enderio:item_power_conduit:1>);
enhancedConduit.addEnergyPerTickInput(50);
enhancedConduit.addItemInput(<enderio:item_endergy_conduit:6> * 8);
enhancedConduit.addItemInput(<enderio:item_material:4> * 6);
enhancedConduit.addItemInput(<enderio:item_material:75>);
enhancedConduit.addItemInput(<enderio:item_alloy_ingot:1> * 2);
enhancedConduit.addItemOutput(<enderio:item_power_conduit:1> * 8);
enhancedConduit.build();

//Energetic
recipes.remove(<enderio:item_endergy_conduit:7>);
energeticConduit.addEnergyPerTickInput(50);
energeticConduit.addItemInput(<enderio:item_power_conduit:1> * 8);
energeticConduit.addItemInput(<enderio:item_material:4> * 6);
energeticConduit.addItemInput(<enderio:item_material:75>);
energeticConduit.addItemInput(<enderio:item_alloy_endergy_ingot:5> * 2);
energeticConduit.addItemOutput(<enderio:item_endergy_conduit:7> * 8);
energeticConduit.build();

//Ender
recipes.remove(<enderio:item_power_conduit:2>);
enderEnergyConduit.addEnergyPerTickInput(50);
enderEnergyConduit.addItemInput(<enderio:item_endergy_conduit:7> * 8);
enderEnergyConduit.addItemInput(<enderio:item_material:4> * 6);
enderEnergyConduit.addItemInput(<enderio:item_material:75>);
enderEnergyConduit.addItemInput(<enderio:item_alloy_ingot:2> * 2);
enderEnergyConduit.addItemOutput(<enderio:item_power_conduit:2> * 8);
enderEnergyConduit.build();

//Crystalline
recipes.remove(<enderio:item_endergy_conduit:8>);
crystallineConduit.addEnergyPerTickInput(50);
crystallineConduit.addItemInput(<enderio:item_power_conduit:2> * 8);
crystallineConduit.addItemInput(<enderio:item_material:4> * 6);
crystallineConduit.addItemInput(<enderio:item_material:75>);
crystallineConduit.addItemInput(<enderio:item_alloy_endergy_ingot:1> * 2);
crystallineConduit.addItemOutput(<enderio:item_endergy_conduit:8> * 8);
crystallineConduit.build();

//Crystalline Pink Slime
recipes.remove(<enderio:item_endergy_conduit:9>);
crystallinePinkConduit.addEnergyPerTickInput(50);
crystallinePinkConduit.addItemInput(<enderio:item_endergy_conduit:8> * 8);
crystallinePinkConduit.addItemInput(<enderio:item_material:4> * 6);
crystallinePinkConduit.addItemInput(<enderio:item_material:75>);
crystallinePinkConduit.addItemInput(<enderio:item_alloy_endergy_ingot:4> * 2);
crystallinePinkConduit.addItemOutput(<enderio:item_endergy_conduit:9> * 8);
crystallinePinkConduit.build();

//Melodic
recipes.remove(<enderio:item_endergy_conduit:10>);
melodicConduit.addEnergyPerTickInput(50);
melodicConduit.addItemInput(<enderio:item_endergy_conduit:9> * 8);
melodicConduit.addItemInput(<enderio:item_material:4> * 6);
melodicConduit.addItemInput(<enderio:item_material:75>);
melodicConduit.addItemInput(<enderio:item_alloy_endergy_ingot:2> * 2);
melodicConduit.addItemOutput(<enderio:item_endergy_conduit:10> * 8);
melodicConduit.build();

//Stellar
recipes.remove(<enderio:item_endergy_conduit:11>);
stellarConduit.addEnergyPerTickInput(50);
stellarConduit.addItemInput(<enderio:item_endergy_conduit:10> * 8);
stellarConduit.addItemInput(<enderio:item_material:4> * 6);
stellarConduit.addItemInput(<enderio:item_material:75>);
stellarConduit.addItemInput(<enderio:item_alloy_endergy_ingot:3> * 2);
stellarConduit.addItemOutput(<enderio:item_endergy_conduit:11> * 8);
stellarConduit.build();

/* Others */
//Data
recipes.remove(<enderio:item_data_conduit>);
dataConduit.addEnergyPerTickInput(50);
dataConduit.addItemInput(<enderio:item_alloy_ingot> * 2);
dataConduit.addItemInput(<enderio:item_material:4> * 6);
dataConduit.addItemInput(<enderio:item_material:64>);
dataConduit.addItemOutput(<enderio:item_data_conduit> * 8);
dataConduit.build();

//Refined
recipes.remove(<enderio:item_refined_storage_conduit>);
refinedConduit.addEnergyPerTickInput(50);
refinedConduit.addItemInput(<refinedstorage:quartz_enriched_iron> * 2);
refinedConduit.addItemInput(<enderio:item_material:4> * 6);
refinedConduit.addItemInput(<refinedstorage:processor:4>);
refinedConduit.addItemOutput(<enderio:item_refined_storage_conduit> * 8);
refinedConduit.build();

//Redstone
recipes.remove(<enderio:item_redstone_conduit>);
redstoneConduit.addEnergyPerTickInput(50);
redstoneConduit.addItemInput(<enderio:item_alloy_ingot:3> * 3);
redstoneConduit.addItemInput(<enderio:item_material:4> * 6);
redstoneConduit.addItemOutput(<enderio:item_redstone_conduit> * 8);
redstoneConduit.build();

/* EnderIO Machine Chassis */
recipes.remove(<enderio:item_material>);
machineChassis.addEnergyPerTickInput(50);
machineChassis.addItemInput(<botanicadds:gaiasteel_ingot>);
machineChassis.addItemInput(<enderio:item_material:20> * 2);
machineChassis.addItemInput(<minecraft:iron_ingot> * 4);
machineChassis.addItemInput(<thermalexpansion:frame>);
machineChassis.addItemOutput(<enderio:item_material>);
machineChassis.build();

//Machine Case
recipes.remove(<teslacorelib:machine_case>);
machineCase.addEnergyPerTickInput(100);
machineCase.addItemInput(<enderio:item_alloy_ingot:9> * 4);
machineCase.addItemInput(<ore:plankTreatedWood>, 12);
machineCase.addItemInput(<enderio:item_alloy_ingot:3> * 4);
machineCase.addItemInput(<enderio:item_material:54>);
machineCase.addItemOutput(<teslacorelib:machine_case>);
machineCase.build();

//Steel Casing
recipes.remove(<mekanism:basicblock:8>);
steelCasing.addEnergyPerTickInput(100);
steelCasing.addItemInput(<teslacorelib:machine_case>);
steelCasing.addFluidInput(<liquid:lifeessence> * 5000);
steelCasing.addItemOutput(<mekanism:basicblock:8>);
steelCasing.build();

/* End Machine Crafts */

/* Mystical Agriculture - Ingots */
//Inferium
recipes.remove(<mysticalagriculture:crafting:33>);
infIngot.addEnergyPerTickInput(1000);
infIngot.addItemInput(<mysticalagriculture:crafting:32>);
infIngot.addItemInput(<mysticalagriculture:crafting> * 4);
infIngot.addFluidOutput(infLiquid * 25);
infIngot.addItemOutput(<mysticalagriculture:crafting:33>);
infIngot.build();

//Prudentium
recipes.remove(<mysticalagriculture:crafting:34>);
prudIngot.addEnergyPerTickInput(1000);
prudIngot.addItemInput(<mysticalagriculture:crafting:33>);
prudIngot.addItemInput(<mysticalagriculture:crafting:1> * 4);
prudIngot.addFluidOutput(prudLiquid * 25);
prudIngot.addItemOutput(<mysticalagriculture:crafting:34>);
prudIngot.build();

//Intermedium
recipes.remove(<mysticalagriculture:crafting:35>);
interIngot.addEnergyPerTickInput(1000);
interIngot.addItemInput(<mysticalagriculture:crafting:34>);
interIngot.addItemInput(<mysticalagriculture:crafting:2> * 4);
interIngot.addFluidOutput(interLiquid * 25);
interIngot.addItemOutput(<mysticalagriculture:crafting:35>);
interIngot.build();

//Superium
recipes.remove(<mysticalagriculture:crafting:36>);
superIngot.addEnergyPerTickInput(1000);
superIngot.addItemInput(<mysticalagriculture:crafting:35>);
superIngot.addItemInput(<mysticalagriculture:crafting:3> * 4);
superIngot.addFluidOutput(superLiquid * 25);
superIngot.addItemOutput(<mysticalagriculture:crafting:36>);
superIngot.build();

//Supremium
recipes.remove(<mysticalagriculture:crafting:37>);
supremIngot.addEnergyPerTickInput(1000);
supremIngot.addItemInput(<mysticalagriculture:crafting:36>);
supremIngot.addItemInput(<mysticalagriculture:crafting:4> * 4);
supremIngot.addFluidOutput(supremLiquid * 25);
supremIngot.addItemOutput(<mysticalagriculture:crafting:37>);
supremIngot.build();

//Insanium
recipes.remove(<mysticalagradditions:insanium:2>);
insIngot.addEnergyPerTickInput(1000);
insIngot.addItemInput(<mysticalagriculture:crafting:37>);
insIngot.addItemInput(<mysticalagradditions:insanium> * 4);
insIngot.addFluidOutput(insLiquid * 25);
insIngot.addItemOutput(<mysticalagradditions:insanium:2>);
insIngot.build();


/* Blocks */
//Modularium
recipes.remove(<modularmachinery:itemmodularium>);
recipes.addShaped(<modularmachinery:itemmodularium>*9, [
    [<ore:plateGold>, <ore:blockIron>, <ore:plateGold>],
    [<minecraft:iron_ingot>, <ore:blockRedstone>, <minecraft:iron_ingot>],
    [<minecraft:redstone>, <ore:glowstone>, <minecraft:redstone>]
]);

//Machine Controller
recipes.remove(<modularmachinery:blockcontroller>);
recipes.addShaped(<modularmachinery:blockcontroller>, [
    [null, <avaritia:resource>, null],
    [<enderio:item_alloy_ingot:3>, <rftools:machine_frame>, <enderio:item_alloy_ingot:3>],
    [<minecraft:gold_ingot>, <enderio:item_alloy_ingot:3>, <minecraft:gold_ingot>]
]);

/* Items Input */
//Tiny
recipes.remove(<modularmachinery:blockinputbus>);
recipes.addShaped(<modularmachinery:blockinputbus>, [
    [null, <minecraft:hopper>, null],
    [null, <modularmachinery:blockcasing>, null],
    [null, <actuallyadditions:block_giant_chest>, null]
]);

//Small
recipes.remove(<modularmachinery:blockinputbus:1>);
recipes.addShaped(<modularmachinery:blockinputbus:1>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus>, <modularmachinery:itemmodularium>],
    [<actuallyadditions:block_giant_chest>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest>]
]);

//Normal
recipes.remove(<modularmachinery:blockinputbus:2>);
recipes.addShaped(<modularmachinery:blockinputbus:2>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:1>, <modularmachinery:itemmodularium>],
    [<actuallyadditions:block_giant_chest>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest>]
]);

//Reinforced
recipes.remove(<modularmachinery:blockinputbus:3>);
recipes.addShaped(<modularmachinery:blockinputbus:3>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:2>, <modularmachinery:itemmodularium>],
    [<actuallyadditions:block_giant_chest_medium>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest_medium>]
]);

//Big
recipes.remove(<modularmachinery:blockinputbus:4>);
recipes.addShaped(<modularmachinery:blockinputbus:4>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:3>, <modularmachinery:itemmodularium>],
    [<actuallyadditions:block_giant_chest_medium>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest_medium>]
]);

//Huge
recipes.remove(<modularmachinery:blockinputbus:5>);
recipes.addShaped(<modularmachinery:blockinputbus:5>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:4>, <modularmachinery:itemmodularium>],
    [<actuallyadditions:block_giant_chest_medium>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest_medium>]
]);

//Ludicrous
recipes.remove(<modularmachinery:blockinputbus:6>);
recipes.addShaped(<modularmachinery:blockinputbus:6>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockinputbus:5>, <modularmachinery:itemmodularium>],
    [<actuallyadditions:block_giant_chest_large>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest_large>]
]);

/* Items Output */
//Tiny
recipes.remove(<modularmachinery:blockoutputbus>);
recipes.addShaped(<modularmachinery:blockoutputbus>, [
    [null, <actuallyadditions:block_giant_chest>, null],
    [null, <modularmachinery:blockcasing>, null],
    [null, <minecraft:hopper>, null]
]);

//Small
recipes.remove(<modularmachinery:blockoutputbus:1>);
recipes.addShaped(<modularmachinery:blockoutputbus:1>, [
    [<actuallyadditions:block_giant_chest>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null]
]);

//Normal
recipes.remove(<modularmachinery:blockoutputbus:2>);
recipes.addShaped(<modularmachinery:blockoutputbus:2>, [
    [<actuallyadditions:block_giant_chest>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:1>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null]
]);

//Reinforced
recipes.remove(<modularmachinery:blockoutputbus:3>);
recipes.addShaped(<modularmachinery:blockoutputbus:3>, [
    [<actuallyadditions:block_giant_chest_medium>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest_medium>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:2>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null]
]);

//Big
recipes.remove(<modularmachinery:blockoutputbus:4>);
recipes.addShaped(<modularmachinery:blockoutputbus:4>, [
    [<actuallyadditions:block_giant_chest_medium>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest_medium>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:3>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null]
]);

//Huge
recipes.remove(<modularmachinery:blockoutputbus:5>);
recipes.addShaped(<modularmachinery:blockoutputbus:5>, [
    [<actuallyadditions:block_giant_chest_medium>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest_medium>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:4>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null]
]);

//Ludicrous
recipes.remove(<modularmachinery:blockoutputbus:6>);
recipes.addShaped(<modularmachinery:blockoutputbus:6>, [
    [<actuallyadditions:block_giant_chest_large>, <modularmachinery:itemmodularium>, <actuallyadditions:block_giant_chest_large>],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockoutputbus:5>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null]
]);

/* Fluid Input Hatch */ 
//Tiny
recipes.remove(<modularmachinery:blockfluidinputhatch>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch>, [
    [null, <minecraft:hopper>, null],
    [null, <modularmachinery:blockcasing>, null],
    [null, <mekanism:machineblock2:11>.withTag({tier: 0}), null]
]);

//Small
recipes.remove(<modularmachinery:blockfluidinputhatch:1>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:1>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch>, <modularmachinery:itemmodularium>],
    [<mekanism:machineblock2:11>.withTag({tier: 0}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 0})]
]);

//Normal
recipes.remove(<modularmachinery:blockfluidinputhatch:2>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:2>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:1>, <modularmachinery:itemmodularium>],
    [<mekanism:machineblock2:11>.withTag({tier: 0}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 0})]
]);

//Reinforced
recipes.remove(<modularmachinery:blockfluidinputhatch:3>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:3>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:2>, <modularmachinery:itemmodularium>],
    [<mekanism:machineblock2:11>.withTag({tier: 1}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 1})]
]);

//Big
recipes.remove(<modularmachinery:blockfluidinputhatch:4>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:4>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:3>, <modularmachinery:itemmodularium>],
    [<mekanism:machineblock2:11>.withTag({tier: 1}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 1})]
]);

//Huge
recipes.remove(<modularmachinery:blockfluidinputhatch:5>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:5>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:4>, <modularmachinery:itemmodularium>],
    [<mekanism:machineblock2:11>.withTag({tier: 1}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 1})]
]);

//Ludicrous
recipes.remove(<modularmachinery:blockfluidinputhatch:6>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:6>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:5>, <modularmachinery:itemmodularium>],
    [<mekanism:machineblock2:11>.withTag({tier: 2}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 2})]
]);

//Vacuum
recipes.remove(<modularmachinery:blockfluidinputhatch:7>);
recipes.addShaped(<modularmachinery:blockfluidinputhatch:7>, [
    [null, <minecraft:hopper>, null],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidinputhatch:6>, <modularmachinery:itemmodularium>],
    [<mekanism:machineblock2:11>.withTag({tier: 3}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 3})]
]);

/* Fluid Output Hatch */
//Tiny
recipes.remove(<modularmachinery:blockfluidoutputhatch>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch>, [
    [null, <mekanism:machineblock2:11>.withTag({tier: 0}), null],
    [null, <modularmachinery:blockcasing>, null],
    [null, <minecraft:hopper>, null]
]);

//Small
recipes.remove(<modularmachinery:blockfluidoutputhatch:1>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:1>, [
    [<mekanism:machineblock2:11>.withTag({tier: 0}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 0})],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null],
]);

//Normal
recipes.remove(<modularmachinery:blockfluidoutputhatch:2>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:2>, [
    [<mekanism:machineblock2:11>.withTag({tier: 0}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 0})],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:1>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null],
]);

//Reinforced
recipes.remove(<modularmachinery:blockfluidoutputhatch:3>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:3>, [
    [<mekanism:machineblock2:11>.withTag({tier: 1}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 1})],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:2>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null],
]);

//Big
recipes.remove(<modularmachinery:blockfluidoutputhatch:4>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:4>, [
    [<mekanism:machineblock2:11>.withTag({tier: 1}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 1})],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:3>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null],
]);

//Huge
recipes.remove(<modularmachinery:blockfluidoutputhatch:5>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:5>, [
    [<mekanism:machineblock2:11>.withTag({tier: 1}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 1})],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:4>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null],
]);

//Ludicrous
recipes.remove(<modularmachinery:blockfluidoutputhatch:6>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:6>, [
    [<mekanism:machineblock2:11>.withTag({tier: 2}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 2})],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:5>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null],
]);

//Vacuum
recipes.remove(<modularmachinery:blockfluidoutputhatch:7>);
recipes.addShaped(<modularmachinery:blockfluidoutputhatch:7>, [
    [<mekanism:machineblock2:11>.withTag({tier: 3}), <modularmachinery:itemmodularium>, <mekanism:machineblock2:11>.withTag({tier: 3})],
    [<modularmachinery:itemmodularium>, <modularmachinery:blockfluidoutputhatch:6>, <modularmachinery:itemmodularium>],
    [null, <minecraft:hopper>, null],
]);

/* Energy Input Hatch */
//Tiny
recipes.remove(<modularmachinery:blockenergyinputhatch>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch>, [
    [null, <enderio:item_alloy_ingot:3>, null],
    [<tp:redstone_ingot>, <modularmachinery:blockcasing>, <tp:redstone_ingot>],
    [<minecraft:repeater>, <ore:blockRedstone>, <minecraft:repeater>]
]);

//Small
recipes.remove(<modularmachinery:blockenergyinputhatch:1>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:1>, [
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>],
    [<ore:blockRedstone>, <modularmachinery:blockenergyinputhatch>, <ore:blockRedstone>],
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>]
]);

//Normal
recipes.remove(<modularmachinery:blockenergyinputhatch:2>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:2>, [
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>],
    [<ore:blockRedstone>, <modularmachinery:blockenergyinputhatch:1>, <ore:blockRedstone>],
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>]
]);

//Reinforced
recipes.remove(<modularmachinery:blockenergyinputhatch:3>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:3>, [
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>],
    [<ore:blockRedstone>, <modularmachinery:blockenergyinputhatch:2>, <ore:blockRedstone>],
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>]
]);

//Big
recipes.remove(<modularmachinery:blockenergyinputhatch:4>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:4>, [
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>],
    [<ore:blockRedstone>, <modularmachinery:blockenergyinputhatch:3>, <ore:blockRedstone>],
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>]
]);

//Huge
recipes.remove(<modularmachinery:blockenergyinputhatch:5>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:5>, [
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>],
    [<ore:blockRedstone>, <modularmachinery:blockenergyinputhatch:4>, <ore:blockRedstone>],
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>]
]);

//Ludicrous
recipes.remove(<modularmachinery:blockenergyinputhatch:6>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:6>, [
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>],
    [<ore:blockRedstone>, <modularmachinery:blockenergyinputhatch:7>, <ore:blockRedstone>],
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>]
]);

//Ultimate
recipes.remove(<modularmachinery:blockenergyinputhatch:7>);
recipes.addShaped(<modularmachinery:blockenergyinputhatch:7>, [
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>],
    [<ore:blockRedstone>, <modularmachinery:blockenergyinputhatch:6>, <ore:blockRedstone>],
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>]
]);

/* Energy Output Hatch */
//Tiny
recipes.remove(<modularmachinery:blockenergyoutputhatch>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch>, [
    [<minecraft:repeater>, <minecraft:redstone_block>, <minecraft:repeater>],
    [<tp:redstone_ingot>, <modularmachinery:blockcasing>, <tp:redstone_ingot>],
    [null, <enderio:item_alloy_ingot:3>, null]
]);

//Small
recipes.remove(<modularmachinery:blockenergyoutputhatch:1>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:1>, [
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>],
    [<minecraft:redstone_block>, <modularmachinery:blockenergyoutputhatch>, <minecraft:redstone_block>],
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>]
]);

//Normal
recipes.remove(<modularmachinery:blockenergyoutputhatch:2>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:2>, [
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>],
    [<minecraft:redstone_block>, <modularmachinery:blockenergyoutputhatch:1>, <minecraft:redstone_block>],
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>]
]);

//Reinforced
recipes.remove(<modularmachinery:blockenergyoutputhatch:3>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:3>, [
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>],
    [<minecraft:redstone_block>, <modularmachinery:blockenergyoutputhatch:2>, <minecraft:redstone_block>],
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>]
]);

//Big
recipes.remove(<modularmachinery:blockenergyoutputhatch:4>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:4>, [
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>],
    [<minecraft:redstone_block>, <modularmachinery:blockenergyoutputhatch:3>, <minecraft:redstone_block>],
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>]
]);

//Huge
recipes.remove(<modularmachinery:blockenergyoutputhatch:5>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:5>, [
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>],
    [<minecraft:redstone_block>, <modularmachinery:blockenergyoutputhatch:4>, <minecraft:redstone_block>],
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>]
]);

//Ludicrous
recipes.remove(<modularmachinery:blockenergyoutputhatch:6>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:6>, [
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>],
    [<minecraft:redstone_block>, <modularmachinery:blockenergyoutputhatch:5>, <minecraft:redstone_block>],
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>]
]);

//Ultimate
recipes.remove(<modularmachinery:blockenergyoutputhatch:7>);
recipes.addShaped(<modularmachinery:blockenergyoutputhatch:7>, [
    [<tp:redstone_ingot>, <enderio:item_alloy_ingot:3>, <tp:redstone_ingot>],
    [<minecraft:redstone_block>, <modularmachinery:blockenergyoutputhatch:6>, <minecraft:redstone_block>],
    [<tp:redstone_ingot>, <minecraft:repeater>, <tp:redstone_ingot>]
]);