//Lens of The Killer
recipes.remove(<actuallyadditions:item_more_damage_lens>);

//Lens of The Miner
recipes.remove(<actuallyadditions:item_mining_lens>);

//Powered Furnace
recipes.remove(<actuallyadditions:block_furnace_double>);
recipes.addShaped(<actuallyadditions:block_furnace_double>, [
    [<actuallyadditions:item_crystal_empowered:5>, <immersiveengineering:wirecoil:2>, <extrautils2:compressedcobblestone>],
    [<minecraft:furnace>, <actuallyadditions:block_misc:9>, <minecraft:furnace>],
    [<extrautils2:compressedcobblestone>, <immersiveengineering:wirecoil:2>, <actuallyadditions:item_crystal_empowered:5>]
]);

//Atomic Reconstructor
recipes.remove(<actuallyadditions:block_atomic_reconstructor>);
recipes.addShaped(<actuallyadditions:block_atomic_reconstructor>, [
    [<ore:plateIron>, <enderio:item_alloy_ingot:3>, <ore:plateIron>],
    [<enderio:item_alloy_ingot:3>, <actuallyadditions:block_misc:9>, <enderio:item_alloy_ingot:3>],
    [<minecraft:iron_block>, <enderio:item_alloy_ingot:3>, <minecraft:iron_block>]
]);