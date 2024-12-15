import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.nuclearcraft.ElectricFurnace;
import mods.nuclearcraft.AlloyFurnace;

// Electric Furnace Removal
removeAndHide(<nuclearcraft:electric_furnace>);
mods.nuclearcraft.ElectricFurnace.removeAllRecipes();

// Removing Alloy Furnace's void recipes
mods.nuclearcraft.AlloyFurnace.removeRecipeWithInput(<tconstruct:metal>, <tconstruct:metal:1>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithInput(<tconstruct:nuggets>, <tconstruct:nuggets:1>);
mods.nuclearcraft.AlloyFurnace.removeRecipeWithInput(<ore:ingotCobalt>, <tconstruct:ingots:1>);
