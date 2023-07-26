/* Var */
var pressureTube = <pneumaticcraft:pressure_tube>;
var compressedIronIngot = <pneumaticcraft:ingot_iron_compressed>;
var compressedIronBlock = <pneumaticcraft:compressed_iron_block>;
var compressedIronPlate = <moreplates:compressed_iron_plate>;
var airCompressor = <pneumaticcraft:air_compressor>;
var liquidCompressor = <pneumaticcraft:liquid_compressor>;
var refinery = <pneumaticcraft:refinery>;
var hardenedGlass = <ore:blockGlassHardened>;
var vortexTube = <pneumaticcraft:vortex_tube>;
var pressureChamberWall = <pneumaticcraft:pressure_chamber_wall>;
var pressureChamberInterface = <pneumaticcraft:pressure_chamber_interface>;
var fluxCompressor = <pneumaticcraft:flux_compressor>;

//Compressed Iron Ingot
mods.pneumaticcraft.explosioncrafting.removeRecipe(compressedIronIngot);
mods.pneumaticcraft.explosioncrafting.addRecipe(<embers:ingot_dawnstone>, compressedIronIngot, 25);
mods.pneumaticcraft.pressurechamber.removeRecipe([compressedIronIngot]);
mods.pneumaticcraft.pressurechamber.addRecipe([<embers:ingot_dawnstone>], 2.0, [compressedIronIngot]);

//Compressed Iron Block
mods.pneumaticcraft.explosioncrafting.removeRecipe(compressedIronBlock);
mods.pneumaticcraft.explosioncrafting.addRecipe(<embers:block_dawnstone>, compressedIronBlock, 75);
mods.pneumaticcraft.pressurechamber.removeRecipe([compressedIronBlock]);
mods.pneumaticcraft.pressurechamber.addRecipe([<embers:block_dawnstone>], 2.0, [compressedIronBlock]);

//Pressure tube
recipes.remove(pressureTube);
recipes.addShaped(pressureTube * 4, [
    [<pneumaticcraft:ingot_iron_compressed>, hardenedGlass, <pneumaticcraft:ingot_iron_compressed>]
]);

//Liquid Compressor
recipes.remove(liquidCompressor);
recipes.addShaped(liquidCompressor, [
    [null, null, null],
    [pressureTube, <forge:bucketfilled>.withTag({FluidName: "lpg", Amount: 1000}), pressureTube],
    [<harvestcraft:hardenedleatheritem>, airCompressor, <harvestcraft:hardenedleatheritem>]
]);

//Refinery
recipes.remove(refinery);
recipes.addShaped(refinery, [
    [compressedIronIngot, compressedIronBlock, compressedIronIngot],
    [hardenedGlass, <minecraft:diamond_block>, hardenedGlass],
    [compressedIronIngot, compressedIronBlock, compressedIronIngot]
]);

//Vortex Tube
recipes.remove(vortexTube);
recipes.addShaped(vortexTube, [
    [compressedIronIngot, pressureTube, compressedIronIngot],
    [<thermalfoundation:material:161>, pressureTube, <thermalfoundation:material:161>],
    [compressedIronIngot, compressedIronBlock, compressedIronIngot]
]);

//Pressure Chamber Wall
recipes.remove(pressureChamberWall);
recipes.addShaped(pressureChamberWall * 8, [
    [compressedIronPlate, compressedIronIngot, compressedIronPlate],
    [compressedIronIngot, compressedIronBlock, compressedIronIngot],
    [compressedIronPlate, compressedIronIngot, compressedIronPlate]
]);

//Pressure Chamber Interface
recipes.remove(pressureChamberInterface);
recipes.addShaped(pressureChamberInterface, [
    [null, <minecraft:hopper>, null],
    [<minecraft:hopper>, pressureChamberWall, <minecraft:hopper>],
    [null, <minecraft:hopper>, null]
]);

//Flux Compressor
recipes.remove(fluxCompressor);
recipes.addShaped(fluxCompressor, [
    [<enderio:item_alloy_ingot:3>, <moreplates:electrical_steel_gear>, <pneumaticcraft:printed_circuit_board>],
    [<minecraft:redstone_block>, <pneumaticcraft:turbine_rotor>, <pneumaticcraft:advanced_pressure_tube>],
    [<enderio:item_alloy_ingot:3>, airCompressor, <pneumaticcraft:printed_circuit_board>]
]);