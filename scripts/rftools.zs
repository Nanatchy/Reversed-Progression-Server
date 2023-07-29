/* Import */
import mods.botania.ManaInfusion.addInfusion as pool;

/* Vars */
var frame = <rftools:machine_frame>;

//Machine base
recipes.remove(<rftools:machine_frame>);
mods.inworldcrafting.FluidToItem.transform(<rftools:machine_frame>, <liquid:molten_slime>, [<minecraft:iron_ingot>*2, <minecraft:dye:4>*2, <minecraft:gold_nugget>*2], true);

/* Machines */
//Coal generator
recipes.remove(<rftools:coalgenerator>);
recipes.addShaped(<rftools:coalgenerator>, [
    [<actuallyadditions:item_misc:22>, <extrautils2:ingredients>, <actuallyadditions:item_misc:22>],
    [<actuallyadditions:item_misc:22>, frame, <actuallyadditions:item_misc:22>],
    [<actuallyadditions:item_misc:22>, <extrautils2:ingredients>, <actuallyadditions:item_misc:22>]
]);

//Modular storage
recipes.remove(<rftools:modular_storage>);
recipes.addShaped(<rftools:modular_storage>, [
    [<fluxnetworks:flux>, <actuallyadditions:block_giant_chest>, <fluxnetworks:flux>],
    [<botania:quartztypeblaze>, frame, <botania:quartztypeblaze>],
    [<fluxnetworks:flux>, <botania:quartztypeblaze>, <fluxnetworks:flux>]
]);

//Storage scanner
recipes.remove(<rftools:storage_scanner>);
recipes.addShaped(<rftools:storage_scanner>, [
    [<extrautils2:ingredients>, <rftools:infused_enderpearl>, <extrautils2:ingredients>],
    [<ore:plateGold>, frame, <ore:plateGold>],
    [<extrautils2:ingredients>, <rftools:infused_enderpearl>, <extrautils2:ingredients>]
]);

//Machine infuser
recipes.remove(<rftools:machine_infuser>);
recipes.addShaped(<rftools:machine_infuser>, [
    [<rftoolsdim:dimensional_blank_block>, <minecraft:redstone_block>, <rftoolsdim:dimensional_blank_block>],
    [<rftools:infused_diamond>, frame, <rftools:infused_diamond>],
    [<rftoolsdim:dimensional_blank_block>, <minecraft:redstone_block>, <rftoolsdim:dimensional_blank_block>]
]);

/* Crafters */
//Tier 1
recipes.remove(<rftools:crafter1>);
recipes.addShaped(<rftools:crafter1>, [
    [null, <randomthings:advancedredstonetorch_on>, null],
    [<avaritia:compressed_crafting_table>, frame, <avaritia:compressed_crafting_table>],
    [null, <randomthings:advancedredstonetorch_on>, null]
]);

//Tier 2
recipes.remove(<rftools:crafter2>);
recipes.addShaped(<rftools:crafter2>, [
    [null, <randomthings:advancedredstonetorch_on>, null],
    [<avaritia:compressed_crafting_table>, <rftools:crafter1>, <avaritia:compressed_crafting_table>],
    [null, <randomthings:advancedredstonetorch_on>, null]
]);

//Tier 3
recipes.remove(<rftools:crafter3>);
recipes.addShaped(<rftools:crafter3>, [
    [null, <randomthings:advancedredstonetorch_on>, null],
    [<avaritia:compressed_crafting_table>, <rftools:crafter2>, <avaritia:compressed_crafting_table>],
    [null, <randomthings:advancedredstonetorch_on>, null]
]);

/* Dimensions */
//Dimlet workbench
recipes.remove(<rftoolsdim:dimlet_workbench>);
recipes.addShaped(<rftoolsdim:dimlet_workbench>, [
    [<minecraft:gold_ingot>, <rftoolsdim:dimlet_base>, <minecraft:gold_ingot>],
    [<ore:craftingTableWood>, frame, <ore:craftingTableWood>],
    [<minecraft:gold_ingot>, <tp:redstone_ingot>, <minecraft:gold_ingot>]
]);

//Empty dimension tab
recipes.remove(<rftoolsdim:empty_dimension_tab>);
pool(<rftoolsdim:empty_dimension_tab>, <rftoolsdim:dimlet_template>, 500);

//Dimension builder
recipes.remove(<rftoolsdim:dimension_builder>);
mods.extendedcrafting.TableCrafting.addShaped(2, <rftoolsdim:dimension_builder>, [
	[<avaritia:resource:5>, <draconicevolution:chaos_shard>, <extendedcrafting:singularity_ultimate>, <draconicevolution:chaos_shard>, <avaritia:resource:5>], 
	[<ore:ingotCosmicNeutronium>, <botanicadds:rune_tp>, <rftoolsdim:empty_dimension_tab>, <botanicadds:rune_energy>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <rftoolsdim:empty_dimension_tab>, <rftools:machine_frame>, <rftoolsdim:empty_dimension_tab>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <botanicadds:rune_energy>, <rftoolsdim:empty_dimension_tab>, <botanicadds:rune_tp>, <ore:ingotCosmicNeutronium>], 
	[<ore:ingotCosmicNeutronium>, <ore:blockUltimate>, <ore:blockUltimate>, <ore:blockUltimate>, <ore:ingotCosmicNeutronium>]
]);

//Dimension inscriber
recipes.remove(<rftoolsdim:dimension_enscriber>);
recipes.addShaped(<rftoolsdim:dimension_enscriber>, [
    [<tp:redstone_ingot>, <tconstruct:large_plate>.withTag({Material: "paper"}), <tp:redstone_ingot>],
    [<actuallyadditions:item_crystal_empowered:3>, frame, <actuallyadditions:item_crystal_empowered:3>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

//Dialing device
recipes.remove(<rftools:dialing_device>);
recipes.addShaped(<rftools:dialing_device>, [
    [<tp:redstone_ingot>, <tp:redstone_ingot>, <tp:redstone_ingot>],
    [<randomthings:advancedredstonetorch_on>, frame, <randomthings:advancedredstonetorch_on>],
    [<tp:redstone_ingot>, <tp:redstone_ingot>, <tp:redstone_ingot>]
]);

//Matter transmitter
recipes.remove(<rftools:matter_transmitter>);
recipes.addShaped(<rftools:matter_transmitter>, [
    [<botania:manaresource:1>, <botania:manaresource:1>, <botania:manaresource:1>],
    [<tp:redstone_ingot>, frame, <tp:redstone_ingot>],
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
]);

//Booster
recipes.remove(<rftools:booster>);
recipes.addShaped(<rftools:booster>, [
    [<botania:vial:1>, <rftools:infused_diamond>, <botania:vial:1>],
    [<minecraft:gold_ingot>, frame, <minecraft:iron_ingot>],
    [<botania:vial:1>, <tp:redstone_ingot>, <botania:vial:1>]
]);

//Matter receiver
recipes.remove(<rftools:matter_receiver>);
recipes.addShaped(<rftools:matter_receiver>, [
    [<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>],
    [<tp:redstone_ingot>, frame, <tp:redstone_ingot>],
    [<botania:manaresource:1>, <botania:manaresource:1>, <botania:manaresource:1>]
]);

//Builder
recipes.remove(<rftools:builder>);
recipes.addShaped(<rftools:builder>, [
    [<minecraft:end_bricks>, <rftools:infused_enderpearl>, <minecraft:end_bricks>],
    [<tp:redstone_ingot>, frame, <tp:redstone_ingot>],
    [<minecraft:end_bricks>, <tp:redstone_ingot>, <minecraft:end_bricks>]
]);

//Spawner
recipes.remove(<rftools:spawner>);
recipes.addShaped(<rftools:spawner>, [
    [<tp:redstone_ingot>, <woot:structure>, <tp:redstone_ingot>],
    [<woot:structure:3>, frame, <woot:structure:2>],
    [<tp:redstone_ingot>, <woot:structure:1>, <tp:redstone_ingot>]
]);

//Environmental Controller
recipes.remove(<rftools:environmental_controller>);
recipes.addShaped(<rftools:environmental_controller>, [
    [<botania:manaresource:8>, <actuallyadditions:block_crystal_empowered:2>, <botania:manaresource:8>],
    [<actuallyadditions:block_crystal_empowered>, frame, <actuallyadditions:block_crystal_empowered:5>],
    [<botania:manaresource:8>, <actuallyadditions:block_crystal_empowered:4>, <botania:manaresource:8>]
]);

/* Environmental modules */
//Regen
recipes.remove(<rftools:regeneration_module>);
recipes.addShaped(<rftools:regeneration_module>, [
    [null, <rftools:syringe>.withTag({mobName: "Iron Golem", level: 10, mobId: "minecraft:villager_golem"}), null],
    [<embers:ingot_dawnstone>, <extrautils2:ingredients:9>, <embers:ingot_dawnstone>],
    [null, <botanicadds:elven_lapis>, null]
]);

//Speed
recipes.remove(<rftools:speed_module>);
recipes.addShaped(<rftools:speed_module>, [
    [null, <rftools:syringe>.withTag({mobName: "Horse", level: 10, mobId: "minecraft:horse"}), null],
    [<embers:ingot_dawnstone>, <extrautils2:ingredients:9>, <embers:ingot_dawnstone>],
    [null, <botanicadds:elven_lapis>, null]
]);

//Haste
recipes.remove(<rftools:haste_module>);
recipes.addShaped(<rftools:haste_module>, [
    [null, <minecraft:diamond_pickaxe>.withTag({ench: [{lvl: 3 as short, id: 32 as short}]}), null],
    [<embers:ingot_dawnstone>, <extrautils2:ingredients:9>, <embers:ingot_dawnstone>],
    [null, <botanicadds:elven_lapis>, null]
]);

//Saturation
recipes.remove(<rftools:saturation_module>);
recipes.addShaped(<rftools:saturation_module>, [
    [null, <rftools:syringe>.withTag({mobName: "Zombie", level: 10, mobId: "minecraft:zombie"}), null],
    [<embers:ingot_dawnstone>, <extrautils2:ingredients:9>, <embers:ingot_dawnstone>],
    [null, <botanicadds:elven_lapis>, null]
]);

//Feather falling
recipes.remove(<rftools:featherfalling_module>);
recipes.addShaped(<rftools:featherfalling_module>, [
    [null, <rftools:syringe>.withTag({mobName: "Chicken", level: 10, mobId: "minecraft:chicken"}), null],
    [<embers:ingot_dawnstone>, <extrautils2:ingredients:9>, <embers:ingot_dawnstone>],
    [null, <botanicadds:elven_lapis>, null]
]);

//Peaceful
recipes.remove(<rftools:peaceful_module>);
recipes.addShaped(<rftools:peaceful_module>, [
    [null, <rftools:peace_essence>, null],
    [<embers:ingot_dawnstone>, <extrautils2:ingredients:9>, <embers:ingot_dawnstone>],
    [null, <botanicadds:elven_lapis>, null]
]);

//Water breathing
recipes.remove(<rftools:waterbreathing_module>);
recipes.addShaped(<rftools:waterbreathing_module>, [
    [null, <rftools:syringe>.withTag({mobName: "Guardian", level: 10, mobId: "minecraft:guardian"}), null],
    [<embers:ingot_dawnstone>, <extrautils2:ingredients:9>, <embers:ingot_dawnstone>],
    [null, <botanicadds:elven_lapis>, null]
]);

//Night vision
recipes.remove(<rftools:nightvision_module>);
recipes.addShaped(<rftools:nightvision_module>, [
    [null, <rftools:syringe>.withTag({mobName: "Cave Spider", level: 10, mobId: "minecraft:cave_spider"}), null],
    [<embers:ingot_dawnstone>, <extrautils2:ingredients:9>, <embers:ingot_dawnstone>],
    [null, <botanicadds:elven_lapis>, null]
]);

//Flight
recipes.remove(<rftools:flight_module>);

//Blindness
recipes.remove(<rftools:blindness_module>);

//Weakness
recipes.remove(<rftools:weakness_module>);

//Poison
recipes.remove(<rftools:poison_module>);

//Slowness
recipes.remove(<rftools:slowness_module>);

//Glowing
recipes.remove(<rftools:glowing_module>);

//Luck
recipes.remove(<rftools:luck_module>);

//No Teleport
recipes.remove(<rftools:noteleport_module>);