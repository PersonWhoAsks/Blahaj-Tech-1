import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;

import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.RockCrusher;
import mods.qmd.mass_spectrometer;

// UNITING SULFUR OREDICT
scripts.main.unify(<thermalfoundation:material:771>);

    // Replacing IE Crusher recipes
mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:quartz_ore>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:quartz> * 3, <minecraft:quartz_ore>, 2048, <thermalfoundation:material:771>, 0.15);

mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:lapis_ore>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:dye:4> * 9, <minecraft:lapis_ore>, 2048, <thermalfoundation:material:771>, 0.15);

mods.immersiveengineering.Crusher.removeRecipesForInput(<minecraft:blaze_rod>);
mods.immersiveengineering.Crusher.addRecipe(<minecraft:blaze_powder> * 4, <minecraft:blaze_rod>, 2048, <thermalfoundation:material:771>, 0.5);

    // Replacing NC Rock Crusher recipe
mods.nuclearcraft.RockCrusher.removeRecipeWithInput(<minecraft:stone:1>);
mods.nuclearcraft.RockCrusher.addRecipe(<minecraft:stone:1> | <minecraft:stone:2>, 
ChanceItemIngredient.create(<nuclearcraft:gem_dust:1> * 2, 40), ChanceItemIngredient.create(<thermalfoundation:material:771> * 2, 30), ChanceItemIngredient.create(<nuclearcraft:gem_dust:8>, 35));

    // Replacing QMD's Mass Spectrometer recipe
mods.qmd.mass_spectrometer.removeRecipeWithInput(<minecraft:redstone>, null);
mods.qmd.mass_spectrometer.addRecipe(<minecraft:redstone>, null,
<thermalfoundation:material:771>, null, null, null, null, <liquid:mercury>*144, null, null, 1.0);

mods.qmd.mass_spectrometer.removeRecipeWithInput(<minecraft:coal>, null);
mods.qmd.mass_spectrometer.addRecipe(<minecraft:coal>, null,
<nuclearcraft:dust:8>, ChanceItemIngredient.create(<thermalfoundation:material:771>, 15), null, null, null, null, null, null, 1.0);

mods.qmd.mass_spectrometer.removeRecipeWithInput(<minecraft:dye:4>, null);
mods.qmd.mass_spectrometer.addRecipe(<minecraft:dye:4>, null,
<qmd:dust:13>*4, <immersiveengineering:metal:10>*3, <nuclearcraft:gem:6>*3, <thermalfoundation:material:771>, null, null, null, null, 1.0);

mods.qmd.mass_spectrometer.removeRecipeWithInput(<nuclearcraft:compound>, null);
mods.qmd.mass_spectrometer.addRecipe(<nuclearcraft:compound>, null,
null, <thermalfoundation:material:771>, <qmd:dust:13>, null, <liquid:oxygen>*2000, null, null, null, 1.0);

mods.qmd.mass_spectrometer.removeRecipeWithInput(<qmd:chemical_dust:7>, null);
mods.qmd.mass_spectrometer.addRecipe(<qmd:chemical_dust:7>, null,
<thermalfoundation:material:771>, <qmd:dust:7>, null, null, null, null, null, null, 1.0);

mods.qmd.mass_spectrometer.removeRecipeWithInput(null, <liquid:sulfur_dioxide>*1000);
mods.qmd.mass_spectrometer.addRecipe(null, <liquid:sulfur_dioxide>*1000,
null, <thermalfoundation:material:771>, null, null, <liquid:oxygen>*1000, null, null, null, 1.0);

mods.qmd.mass_spectrometer.removeRecipeWithInput(null, <liquid:sulfur_trioxide>*1000);
mods.qmd.mass_spectrometer.addRecipe(null, <liquid:sulfur_trioxide>*1000,
null, <thermalfoundation:material:771>, null, null, <liquid:oxygen>*1500, null, null, null, 1.0);

mods.qmd.mass_spectrometer.removeRecipeWithInput(null, <liquid:sulfuric_acid>*1000);
mods.qmd.mass_spectrometer.addRecipe(null, <liquid:sulfuric_acid>*1000,
null, null, <thermalfoundation:material:771>, null, <liquid:hydrogen>*1000, <liquid:oxygen>*2000, null, null, 1.0);

// Uniting itemSilicon
furnace.remove(<appliedenergistics2:material:5>, <appliedenergistics2:material:2>);
furnace.remove(<appliedenergistics2:material:5>, <nuclearcraft:gem_dust:2>);

furnace.addRecipe(<nuclearcraft:gem:6>, <appliedenergistics2:material:2>, 0.0);
furnace.addRecipe(<nuclearcraft:gem:6>, <nuclearcraft:gem_dust:2>, 0.0);

// TIER 1 COMPONENTS
recipes.remove(<thermalexpansion:frame>);
recipes.addShaped(<thermalexpansion:frame>, [
    [<minecraft:iron_ingot>, <ore:blockGlass>, <minecraft:iron_ingot>],
    [<ore:blockGlass>, <pneumaticcraft:printed_circuit_board>, <ore:blockGlass>],
    [<minecraft:iron_ingot>, <ore:blockGlass>, <minecraft:iron_ingot>]
]);

recipes.remove(<thermalexpansion:frame:64>);
recipes.addShaped(<thermalexpansion:frame:64>, [
    [<thermalfoundation:material:129>, <ore:blockGlass>, <thermalfoundation:material:129>],
    [<ore:blockGlass>, <pneumaticcraft:printed_circuit_board>, <ore:blockGlass>],
    [<thermalfoundation:material:129>, <ore:blockGlass>, <thermalfoundation:material:129>]
]);

recipes.remove(<thermalexpansion:frame:128>);
recipes.addShaped(<thermalexpansion:frame:128>, [
    [<immersiveengineering:metal:2>, <thermalexpansion:frame>, <immersiveengineering:metal:2>],
    [<minecraft:redstone_block>, <pneumaticcraft:printed_circuit_board>, <minecraft:redstone_block>],
    [<immersiveengineering:metal:2>, <thermalexpansion:frame:64>, <immersiveengineering:metal:2>]
]);

recipes.remove(<thermalexpansion:machine:2>);
recipes.addShaped(<thermalexpansion:machine:2>, [
    [<immersiveengineering:material:9>, <thermalfoundation:material:657>, <immersiveengineering:material:9>],
    [<immersiveengineering:conveyor>, <thermalexpansion:frame>, <immersiveengineering:conveyor>],
    [<thermalfoundation:material:256>, <thermalexpansion:frame:128>, <thermalfoundation:material:256>]
]);

recipes.addShaped(<thermalfoundation:material:657>, [
    [null, <immersiveengineering:metal:8>, null],
    [<immersiveengineering:metal:8>, <immersiveengineering:material:9>, <immersiveengineering:metal:8>],
    [null, <immersiveengineering:metal:8>, null]
]);

recipes.remove(<thermalexpansion:machine:12>);
recipes.addShaped(<thermalexpansion:machine:12>, [
    [<immersiveengineering:material:8>, <minecraft:brewing_stand>, <immersiveengineering:material:8>],
    [<ore:blockGlass>, <thermalexpansion:frame>, <ore:blockGlass>],
    [<thermalfoundation:material:292>, <thermalexpansion:frame:128>, <thermalfoundation:material:292>]
]);

recipes.remove(<thermalexpansion:device>);
recipes.addShaped(<thermalexpansion:device>, [
    [<immersiveengineering:metal_device1:6>, <minecraft:bucket>, <immersiveengineering:metal_device1:6>],
    [<thermalfoundation:material:24>, <thermalexpansion:frame:64>, <thermalfoundation:material:24>],
    [<immersiveengineering:metal_device0:5>, <thermalexpansion:frame:128>, <immersiveengineering:metal_device0:5>]
]);

recipes.remove(<thermalexpansion:device:12>);
recipes.addShaped(<thermalexpansion:device:12>, [
    [<immersiveengineering:conveyor>, <minecraft:hopper>, <immersiveengineering:conveyor>],
    [<thermalfoundation:material:24>, <thermalexpansion:frame:64>, <thermalfoundation:material:24>],
    [<immersiveengineering:material:26>, <thermalexpansion:frame:128>, <immersiveengineering:material:26>]
]);

recipes.remove(<nuclearcraft:manufactory>);
recipes.addShaped(<nuclearcraft:manufactory>, [
    [<immersiveengineering:metal:2>, <minecraft:piston>, <immersiveengineering:metal:2>],
    [<thermalfoundation:material:259>, <thermalexpansion:frame:128>, <thermalfoundation:material:259>],
    [<immersiveengineering:metal:2>, <nuclearcraft:part:4>, <immersiveengineering:metal:2>]
]);

recipes.remove(<appliedenergistics2:inscriber>);
recipes.addShaped(<appliedenergistics2:inscriber>, [
    [<immersiveengineering:metal:8>, <minecraft:sticky_piston>, <immersiveengineering:metal:8>],
    [<appliedenergistics2:material:12>, <thermalexpansion:frame:128>, <immersiveengineering:material:9>],
    [<immersiveengineering:metal:8>, <minecraft:sticky_piston>, <immersiveengineering:metal:8>]
]);


// RECIPES
// Recipes using slag
furnace.remove(<thermalfoundation:rockwool:7>, <thermalfoundation:material:864>);
furnace.addRecipe(<thermalfoundation:rockwool:7>, <immersiveengineering:material:7>, 1.30);

// Recipes using dustWood oreDict
recipes.removeShaped(<minecraft:paper> * 6, [[<ore:dustWood>, <ore:dustWood>, <ore:dustWood>]]);
recipes.addShaped(<thermalfoundation:fertilizer:1> * 16, [
    [<ore:dustCharcoal>, <thermalfoundation:material:772>],
    [<thermalfoundation:material:866>, null]
]);
recipes.addShaped(<thermalfoundation:fertilizer:1> * 4, [
    [<ore:dustWood>, <ore:dustWood>],
    [<thermalfoundation:material:772>, <thermalfoundation:material:866>]
]);
