import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.nuclearcraft.Melter;
import mods.nuclearcraft.AlloyFurnace;

// Removing void recipes
mods.nuclearcraft.Melter.removeRecipeWithInput(<tconstruct:nuggets>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<tconstruct:ingots>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithInput(<tconstruct:metal>, <tconstruct:metal:1>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithInput(<tconstruct:nuggets>, <tconstruct:nuggets:1>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithInput(<ore:ingotCobalt>, <tconstruct:ingots:1>);
