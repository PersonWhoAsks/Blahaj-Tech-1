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

// Remove HOP Graphite, Graphite Electrode & Fluorescent Tube
recipes.remove(<immersiveengineering:fluorescent_tube>);
removeAndHide(<immersiveengineering:graphite_electrode>);
mods.immersiveengineering.MetalPress.removeRecipe(<immersiveengineering:graphite_electrode>.withTag({graphDmg: 48000}));
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:graphite_electrode>);

furnace.remove(<immersiveengineering:material:19>);
recipes.remove(<immersiveengineering:material:19> * 3);
removeAndHide(<immersiveengineering:material:19>);
removeAndHide(<immersiveengineering:material:18>);
mods.nuclearcraft.Manufactory.removeRecipeWithOutput(<immersiveengineering:material:18>);
mods.immersiveengineering.ArcFurnace.removeRecipe(<immersiveengineering:material:19>);
mods.immersiveengineering.Crusher.removeRecipe(<immersiveengineering:material:18>);
mods.immersiveengineering.Squeezer.removeItemRecipe(<immersiveengineering:material:18>);
mods.thermalexpansion.Pulverizer.removeRecipe(<immersiveengineering:material:19>);

// Arc Furnace recipes removal
mods.immersiveengineering.ArcFurnace.removeRecipe(<thermalfoundation:material:136>); // Mana Infused Ingot
mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:2>); // Manyullyn Ingot
mods.immersiveengineering.ArcFurnace.removeRecipe(<tconstruct:ingots:5>); // Aluminum Brass Ingot

// Engineer's Hammer degradation
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:mold>);
mods.immersiveengineering.Blueprint.addRecipe("molds", <immersiveengineering:mold>, [
    <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>, <immersiveengineering:tool:1>
]);

recipes.remove(<immersiveengineering:material:8>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:8>);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:8>, [
    <ore:ingotIron>, <ore:ingotIron>
]);

recipes.remove(<immersiveengineering:material:9>);
mods.immersiveengineering.Blueprint.removeRecipe(<immersiveengineering:material:9>);
mods.immersiveengineering.Blueprint.addRecipe("components", <immersiveengineering:material:9>, [
    <ore:ingotSteel>, <ore:ingotSteel>
]);

recipes.removeShapeless(<immersiveengineering:metal:30>, [<immersiveengineering:metal:0>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:31>, [<immersiveengineering:metal:1>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:32>, [<immersiveengineering:metal:2>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:33>, [<immersiveengineering:metal:3>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:34>, [<immersiveengineering:metal:4>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:35>, [<immersiveengineering:metal:5>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:36>, [<immersiveengineering:metal:6>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:37>, [<immersiveengineering:metal:7>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:38>, [<immersiveengineering:metal:8>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:39>, [<minecraft:iron_ingot>, <immersiveengineering:tool>]);
recipes.removeShapeless(<immersiveengineering:metal:40>, [<minecraft:gold_ingot>, <immersiveengineering:tool>]);

recipes.addShapedMirrored(<immersiveengineering:material:20>, [
    [<ore:ingotCopper>],
    [<ore:ingotCopper>]
]);

// RECIPES
// Building Gadgets recipes tweaks
recipes.remove(<buildinggadgets:destructiontool>);
recipes.addShaped(<buildinggadgets:destructiontool>, [
    [<immersiveengineering:metal:38>, <immersiveengineering:material:26>, <immersiveengineering:metal:38>],
    [<immersiveengineering:metal:38>, <immersiveengineering:material:27>, <immersiveengineering:metal:38>],
    [<immersiveengineering:metal:38>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal:38>]
]);

recipes.remove(<buildinggadgets:templatemanager>);
recipes.addShaped(<buildinggadgets:templatemanager>, [
    [<immersiveengineering:sheetmetal:9>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:sheetmetal:9>],
    [<immersiveengineering:sheetmetal:9>, <immersiveengineering:material:27>, <immersiveengineering:sheetmetal:9>],
    [<immersiveengineering:sheetmetal:9>, <immersiveengineering:metal_decoration0:5>, <immersiveengineering:sheetmetal:9>]
]);

recipes.remove(<buildinggadgets:buildingtool>);
recipes.addShaped(<buildinggadgets:buildingtool>, [
    [<immersiveengineering:metal:34>, <minecraft:stained_glass_pane:5>, <immersiveengineering:metal:34>],
    [<immersiveengineering:metal:34>, <immersiveengineering:material:27>, <immersiveengineering:metal:34>],
    [<immersiveengineering:metal:34>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal:34>]
]);

recipes.remove(<buildinggadgets:exchangertool>);
recipes.addShaped(<buildinggadgets:exchangertool>, [
    [<immersiveengineering:metal:33>, <minecraft:stained_glass_pane:5>, <immersiveengineering:metal:33>],
    [<immersiveengineering:metal:33>, <immersiveengineering:material:27>, <immersiveengineering:metal:33>],
    [<immersiveengineering:metal:33>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal:33>]
]);

recipes.remove(<buildinggadgets:copypastetool>);
recipes.addShaped(<buildinggadgets:copypastetool>, [
    [<immersiveengineering:metal:39>, <minecraft:stained_glass_pane:5>, <immersiveengineering:metal:39>],
    [<immersiveengineering:metal:39>, <immersiveengineering:material:27>, <immersiveengineering:metal:39>],
    [<immersiveengineering:metal:39>, <immersiveengineering:metal_decoration0:3>, <immersiveengineering:metal:39>]
]);

// Main tweaks
recipes.remove(<immersiveengineering:metal_decoration0>);
recipes.addShaped(<immersiveengineering:metal_decoration0>, [
    [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>],
    [<immersiveengineering:wirecoil>, <immersiveengineering:metal:8>, <immersiveengineering:wirecoil>],
    [<immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>, <immersiveengineering:wirecoil>]
]);

recipes.remove(<immersiveengineering:metal_decoration0:3>);
recipes.addShaped(<immersiveengineering:metal_decoration0:3> * 2, [
    [<immersiveengineering:metal:8>, <minecraft:redstone>, <immersiveengineering:metal:8>],
    [<minecraft:redstone>, <immersiveengineering:metal>, <minecraft:redstone>],
    [<immersiveengineering:metal:8>, <minecraft:redstone>, <immersiveengineering:metal:8>]
]);

recipes.remove(<immersiveengineering:material:1> * 4);
recipes.addShapedMirrored(<immersiveengineering:material:1> * 2, [
    [<ore:ingotIron>],
    [<ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:material:2> * 4);
recipes.addShapedMirrored(<immersiveengineering:material:2> * 2, [
    [<ore:ingotSteel>],
    [<ore:ingotSteel>]
]);

recipes.remove(<immersiveengineering:material:3> * 4);
recipes.addShapedMirrored(<immersiveengineering:material:3> * 2, [
    [<ore:ingotAluminum>],
    [<ore:ingotAluminum>]
]);

recipes.remove(<immersiveengineering:metal:15> * 2);
recipes.remove(<immersiveengineering:metal:16> * 2);

recipes.remove(<immersiveengineering:connector:9>);
recipes.addShaped(<immersiveengineering:connector:9>, [
    [null, <ore:stickTreatedWood>, null],
    [<ore:ingotIron>, <immersiveengineering:metal:6>, <ore:ingotIron>]
]);

recipes.remove(<immersiveengineering:wooden_device0:2>);
recipes.addShaped(<immersiveengineering:wooden_device0:2>, [
    [<immersiveengineering:connector:9>, <ore:stickSteel>, null],
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [<ore:workbench>, null, <ore:fenceTreatedWood>]
]);

recipes.remove(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}));
recipes.addShaped(<immersiveengineering:blueprint>.withTag({blueprint: "molds"}), [
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>],
    [<ore:dyeBlue>, <ore:dyeBlue>, <ore:dyeBlue>],
    [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
]);

recipes.remove(<immersiveengineering:conveyor> * 8);
recipes.addShaped(<immersiveengineering:conveyor> * 8, [
    [<minecraft:leather>, <minecraft:leather>, <minecraft:leather>],
    [<immersiveengineering:metal:8>, <minecraft:redstone>, <immersiveengineering:metal:8>]
]);

recipes.remove(<immersiveengineering:stone_decoration> * 3);
recipes.addShaped(<immersiveengineering:stone_decoration> * 3, [
    [<minecraft:clay_ball>, <tconstruct:materials:1>, <minecraft:clay_ball>],
    [<tconstruct:materials:1>, <ore:sandstone>, <tconstruct:materials:1>],
    [<minecraft:clay_ball>, <tconstruct:materials:1>, <minecraft:clay_ball>]
]);

recipes.remove(<immersiveengineering:stone_decoration:1> * 3);
recipes.addShaped(<immersiveengineering:stone_decoration:1> * 3, [
    [<tconstruct:materials:1>, <minecraft:brick>, <tconstruct:materials:1>],
    [<minecraft:brick>, <minecraft:brick_block>, <minecraft:brick>],
    [<tconstruct:materials:1>, <minecraft:brick>, <tconstruct:materials:1>]
]);

// Vanilla recipes tweaks
recipes.remove(<minecraft:flint_and_steel>);
recipes.addShapeless(<minecraft:flint_and_steel>, [
    <minecraft:flint>,<immersiveengineering:metal:8>
]);

recipes.remove(<minecraft:piston>);
recipes.addShaped(<minecraft:piston>, [
    [<ore:plankTreatedWood>, <ore:plankTreatedWood>, <ore:plankTreatedWood>],
    [<minecraft:cobblestone>, <immersiveengineering:metal:8>, <minecraft:cobblestone>],
    [<minecraft:cobblestone>, <minecraft:redstone>, <minecraft:cobblestone>]
]);