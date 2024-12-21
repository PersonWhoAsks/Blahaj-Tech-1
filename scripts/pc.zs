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

// Handle colliding items with OpenComputers
// PCB
recipes.remove(<opencomputers:material:2>);
removeAndHide(<opencomputers:material:2>);
recipes.replaceAllOccurences(<opencomputers:material:4>, <pneumaticcraft:printed_circuit_board>);
furnace.remove(<opencomputers:material:4>);
removeAndHide(<opencomputers:material:4>);

// Transistor
recipes.replaceAllOccurences(<opencomputers:material:6>, <pneumaticcraft:transistor>);
removeAndHide(<opencomputers:material:6>);