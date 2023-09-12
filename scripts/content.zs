#loader contenttweaker
import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.IItemRightClick;
import mods.contenttweaker.Commands;
import mods.contenttweaker.ResourceLocation;

var pebble = VanillaFactory.createItem("pebble");
pebble.maxStackSize = 1;
pebble.register();