import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.pneumaticcraft.explosioncrafting;

// Explosion Crafting removal
mods.pneumaticcraft.explosioncrafting.removeAllRecipes();

// mcmeds crafting
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:red_flower>, <mcmeds:opium>);   // Opium
mods.pneumaticcraft.pressurechamber.addRecipe([<mcmeds:opium>, <minecraft:dye:15>], 2.0, [<mcmeds:morphine>]);  // Morphine
mods.pneumaticcraft.pressurechamber.addRecipe([<minecraft:sugar>, <minecraft:glowstone_dust>, <minecraft:blaze_powder>, <minecraft:potion>.withTag({Potion: "minecraft:water"})], 2.5, [<mcmeds:hytoctine>]);  // Hytoctine
mods.pneumaticcraft.pressurechamber.addRecipe([<mcmeds:fentanyl>, <minecraft:dye:15>, <minecraft:blaze_powder>, <minecraft:potion>.withTag({Potion: "minecraft:water"})], 3.0, [<mcmeds:deusizine>]);  // Deusizine

