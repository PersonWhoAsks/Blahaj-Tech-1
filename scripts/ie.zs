import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.immersiveengineering.CokeOven;
import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Blueprint;
import mods.immersiveengineering.Squeezer;
import mods.immersiveengineering.Crusher;
import mods.immersiveengineering.ArcFurnace;
import mods.immersiveengineering.BlastFurnace;

import mods.thermalexpansion.Insolator;
import mods.nuclearcraft.Manufactory;
import mods.thermalexpansion.Pulverizer;

// Coke
removeAndHide(<immersiveengineering:material:17>); // Coke dust

mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:material:17>);

mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:material:6>);
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:material:6>, 500, <minecraft:coal> * 2, 1000);

mods.immersiveengineering.CokeOven.removeRecipe(<immersiveengineering:stone_decoration:3>);
mods.immersiveengineering.CokeOven.addRecipe(<immersiveengineering:stone_decoration:3>, 4500, <minecraft:coal_block> * 2, 9000);

mods.immersiveengineering.BlastFurnace.removeFuel(<minecraft:coal:1>);
mods.immersiveengineering.BlastFurnace.removeFuel(<thermalfoundation:storage_resource>);

// HOP Graphite, Graphite Electrode & Fluorescent Tube
removeAndHide(<immersiveengineering:graphite_electrode>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>.withTag({graphDmg: 48000}));
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);

removeAndHide(<mysticalagriculture:hop_graphite_seeds>);
removeAndHide(<mysticalagriculture:hop_graphite_essence>);

removeAndHide(<immersiveengineering:material:19>);
removeAndHide(<immersiveengineering:material:18>);
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<immersiveengineering:material:18>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:material:19>);
mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:material:18>);
mods.immersiveengineering.Squeezer.removeItemRecipe(<immersiveengineering:material:18>);
mods.thermalexpansion.Pulverizer.removeRecipe(<immersiveengineering:material:19>);

// Recipes removal
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:136>); // Mana Infused Ingot
mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:2>); // Manyullyn Ingot
mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:5>); // Aluminum Brass Ingot

// Engineer's Hammer degradation
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold>);
mods.immersiveengineering.Blueprint.addRecipe("molds", <immersiveengineering:mold>, [<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <immersiveengineering:tool:1>]);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:8>);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:8>, [<ore:ingotIron>, <ore:ingotIron>]);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:9>);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:9>, [<ore:ingotSteel>, <ore:ingotSteel>]);
