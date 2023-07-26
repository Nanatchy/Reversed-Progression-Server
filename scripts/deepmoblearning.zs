/* Import */
import mods.pneumaticcraft.pressurechamber.addRecipe as chamber;

//Simulation chamber
recipes.remove(<deepmoblearning:simulation_chamber>);
mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:simulation_chamber>, [
	[<ore:manaPearl>, <ore:manaPearl>, <astralsorcery:itemcraftingcomponent:3>, <ore:manaPearl>, <ore:manaPearl>], 
	[<ore:manaPearl>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <ore:manaPearl>], 
	[<minecraft:comparator>, <deepmoblearning:polymer_clay>, <deepmoblearning:machine_casing>, <deepmoblearning:polymer_clay>, <minecraft:comparator>], 
	[<botanicadds:elven_lapis>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <botanicadds:elven_lapis>], 
	[<botanicadds:elven_lapis>, <botanicadds:elven_lapis>, <deepmoblearning:polymer_clay>, <botanicadds:elven_lapis>, <botanicadds:elven_lapis>]
]);

//Loot fabricator
recipes.remove(<deepmoblearning:extraction_chamber>);
mods.extendedcrafting.TableCrafting.addShaped(2, <deepmoblearning:extraction_chamber>, [
	[<ore:ingotElectrum>, <ore:ingotElectrum>, <industrialforegoing:artificial_dye:4>, <ore:ingotElectrum>, <ore:ingotElectrum>], 
	[<ore:ingotElectrum>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <ore:ingotElectrum>], 
	[<minecraft:comparator>, <deepmoblearning:polymer_clay>, <deepmoblearning:machine_casing>, <deepmoblearning:polymer_clay>, <minecraft:comparator>], 
	[<bloodarsenal:blood_diamond:2>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <deepmoblearning:polymer_clay>, <bloodarsenal:blood_diamond:2>], 
	[<bloodarsenal:blood_diamond:2>, <bloodarsenal:blood_diamond:2>, <deepmoblearning:polymer_clay>, <bloodarsenal:blood_diamond:2>, <bloodarsenal:blood_diamond:2>]
]);

//Glitch heart
chamber([<deepmoblearning:pristine_matter_zombie>, <deepmoblearning:pristine_matter_skeleton>, <deepmoblearning:pristine_matter_creeper>, <deepmoblearning:pristine_matter_spider>,
		<deepmoblearning:pristine_matter_slime>, <deepmoblearning:pristine_matter_witch>, <deepmoblearning:pristine_matter_blaze>, <deepmoblearning:pristine_matter_ghast>,
		<deepmoblearning:pristine_matter_enderman>, <deepmoblearning:pristine_matter_wither>, <deepmoblearning:pristine_matter_dragon>, <deepmoblearning:pristine_matter_shulker>,
		<deepmoblearning:pristine_matter_guardian>, <deepmoblearning:pristine_matter_thermal_elemental>, <deepmoblearning:pristine_matter_tinker_slime>, <deepmoblearning:pristine_matter_wither_skeleton>
		], 5.0, [<deepmoblearning:glitch_heart> * 3]);

//Helmet
recipes.remove(<deepmoblearning:glitch_infused_helmet>);
recipes.addShaped(<deepmoblearning:glitch_infused_helmet>, [
	[null, null, null],
	[<deepmoblearning:glitch_infused_ingot>, <botania:manasteelhelm>, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>]
]);

//Chestplate
recipes.remove(<deepmoblearning:glitch_infused_helmet>);
recipes.addShaped(<deepmoblearning:glitch_infused_helmet>, [
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, <botania:manasteelchest>, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>, <deepmoblearning:glitch_infused_ingot>]
]);

//Leggings
recipes.remove(<deepmoblearning:glitch_infused_helmet>);
recipes.addShaped(<deepmoblearning:glitch_infused_helmet>, [
	[<deepmoblearning:glitch_infused_ingot>, <botania:manasteellegs>, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>]
]);

//Boots
recipes.remove(<deepmoblearning:glitch_infused_helmet>);
recipes.addShaped(<deepmoblearning:glitch_infused_helmet>, [
	[null, null, null],
	[<deepmoblearning:glitch_infused_ingot>, null, <deepmoblearning:glitch_infused_ingot>],
	[<deepmoblearning:glitch_infused_ingot>, null, <botania:manasteelboots>]
]);