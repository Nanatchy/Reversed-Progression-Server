/* Import */
import mods.inworldcrafting.FluidToItem.transform as fluid;
//FluidToItem.transform(IItemStack output, ILiquidStack inputFluid, IIngredient[] inputItems, @Optional boolean consume);

//Flux
recipes.remove(<fluxnetworks:flux>);
fluid(<fluxnetworks:flux>, <liquid:etchacid>, [<minecraft:redstone>], false);