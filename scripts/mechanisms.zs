import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;

import mods.nuclearcraft.RockCrusher;
import mods.qmd.mass_spectrometer;

// Mana Infused oredict
mods.immersiveengineering.MetalPress.removeRecipe(<thermalfoundation:material:264>);
mods.immersiveengineering.MetalPress.removeRecipe(<thermalfoundation:material:328>);

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
mods.nuclearcraft.RockCrusher.addRecipe(<minecraft:stone:1>, <nuclearcraft:gem_dust:1> * 2, <thermalfoundation:material:771> * 2, <nuclearcraft:gem_dust:8>);
mods.nuclearcraft.RockCrusher.addRecipe(<minecraft:stone:2>, <nuclearcraft:gem_dust:1> * 2, <thermalfoundation:material:771> * 2, <nuclearcraft:gem_dust:8>);

    // Replacing QMD's Mass Spectrometer recipe
mods.qmd.mass_spectrometer.removeRecipeWithInput(<minecraft:redstone>, null);
mods.qmd.mass_spectrometer.addRecipe(<minecraft:redstone>, null,
<thermalfoundation:material:771>, null, null, null, null, <liquid:mercury>*144, null, null, 1.0);

mods.qmd.mass_spectrometer.removeRecipeWithInput(<minecraft:coal>, null);
mods.qmd.mass_spectrometer.addRecipe(<minecraft:coal>, null,
<nuclearcraft:dust:8>, <thermalfoundation:material:771>, null, null, null, null, null, null, 1.0);

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
