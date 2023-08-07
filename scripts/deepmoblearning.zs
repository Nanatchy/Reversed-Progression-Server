/* Import */
import mods.pneumaticcraft.pressurechamber.addRecipe as chamber;

//Simulation chamber
recipes.remove(<deepmoblearning:simulation_chamber>);
recipes.addShaped(<deepmoblearning:simulation_chamber>, [
	[<botania:storage:3>, <deepmoblearning:polymer_clay>, <botania:storage:3>],
	[<deepmoblearning:polymer_clay>, <deepmoblearning:machine_casing>, <deepmoblearning:polymer_clay>],
	[<botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>]
]);

//Loot fabricator
recipes.remove(<deepmoblearning:extraction_chamber>);
recipes.addShaped(<deepmoblearning:extraction_chamber>, [
	[<ore:blockElectrum>, <deepmoblearning:polymer_clay>, <ore:blockElectrum>],
	[<deepmoblearning:polymer_clay>, <deepmoblearning:machine_casing>, <deepmoblearning:polymer_clay>],
	[<bloodarsenal:blood_diamond:2>, <bloodarsenal:blood_diamond:2>, <bloodarsenal:blood_diamond:2>]
]);

//Digital Mob Agonizer
recipes.remove(<deepmoblearningbm:digital_agonizer>);
recipes.addShaped(<deepmoblearningbm:digital_agonizer>, [
	[null, <bloodmagic:slate:4>, null],
	[<bloodmagic:inscription_tool:5>, <deepmoblearning:machine_casing>, <bloodmagic:inscription_tool:5>],
	[<bloodmagic:ritual_controller>, <bloodmagic:altar>, <bloodmagic:ritual_controller>]
]);

//Glitch heart
chamber([<deepmoblearning:pristine_matter_witch>, <deepmoblearning:pristine_matter_blaze>, <deepmoblearning:pristine_matter_ghast>,
		<deepmoblearning:pristine_matter_wither_skeleton>, <deepmoblearning:pristine_matter_wither>, <deepmoblearning:pristine_matter_dragon>,
		], 3.0, [<deepmoblearning:glitch_heart> * 3]);

//Helmet
recipes.remove(<deepmoblearning:glitch_infused_helmet>);
recipes.addShaped(<deepmoblearning:glitch_infused_helmet>, [
	[null, null, null],
	[<deepmoblearning:glitch_infused_ingot>, <botania:manasteelhelm>, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>]
]);

//Chestplate
recipes.remove(<deepmoblearning:glitch_infused_chestplate>);
recipes.addShaped(<deepmoblearning:glitch_infused_chestplate>, [
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, <botania:manasteelchest>, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>]
]);

//Leggings
recipes.remove(<deepmoblearning:glitch_infused_leggings>);
recipes.addShaped(<deepmoblearning:glitch_infused_leggings>, [
	[<deepmoblearning:glitch_infused_ingot>, <botania:manasteellegs>, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>]
]);

//Boots
recipes.remove(<deepmoblearning:glitch_infused_boots>);
recipes.addShaped(<deepmoblearning:glitch_infused_boots>, [
	[null, null, null],
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, null, <botania:manasteelboots>]
]);

//Polymer Clay
recipes.remove(<deepmoblearning:polymer_clay>);
recipes.addShaped(<deepmoblearning:polymer_clay> * 8, [
	[<thermalfoundation:material:161>, <enderio:item_material:76>, null],
	[<enderio:item_material:76>, <actuallyadditions:item_crystal_empowered:1>, <enderio:item_material:76>],
	[null, <enderio:item_material:76>, <enderio:item_alloy_ingot:4>]
]);