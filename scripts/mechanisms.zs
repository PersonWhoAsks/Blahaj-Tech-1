import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.nuclearcraft.ChanceItemIngredient;
import mods.nuclearcraft.RockCrusher;
import mods.nuclearcraft.AlloyFurnace;
import mods.qmd.mass_spectrometer;
import mods.appliedenergistics2.Inscriber;
import mods.thermalexpansion.Transposer;
import mods.astralsorcery.Altar;

import mods.immersiveengineering.MetalPress;
import mods.immersiveengineering.Crusher;

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

// UNITING SILICON OREDICT
    furnace.remove(<appliedenergistics2:material:5>, <appliedenergistics2:material:2>);
    furnace.remove(<appliedenergistics2:material:5>, <nuclearcraft:gem_dust:2>);

    furnace.addRecipe(<nuclearcraft:gem:6>, <appliedenergistics2:material:2>, 0.0);
    furnace.addRecipe(<nuclearcraft:gem:6>, <nuclearcraft:gem_dust:2>, 0.0);

// TIER 1 COMPONENTS RECIPES
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

    recipes.addShaped(<thermalfoundation:material:657>, [
        [null, <immersiveengineering:metal:8>, null],
        [<immersiveengineering:metal:8>, <immersiveengineering:material:9>, <immersiveengineering:metal:8>],
        [null, <immersiveengineering:metal:8>, null]
    ]);

    recipes.remove(<nuclearcraft:part:4>);
    recipes.addShaped(<nuclearcraft:part:4>, [
        [<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>],
        [null, <immersiveengineering:material:1>, null],
        [<immersiveengineering:material:20>, <immersiveengineering:material:20>, <immersiveengineering:material:20>]
    ]);

    Inscriber.addRecipe(<thermalfoundation:material:512>, <pneumaticcraft:ingot_iron_compressed>, false, <minecraft:redstone>, <minecraft:redstone>);
    Inscriber.addRecipe(<thermalfoundation:material:513>, <minecraft:gold_ingot>, false, <minecraft:redstone>, <minecraft:redstone>);

// TIER 2 COMPONENTS RECIPES
    recipes.remove(<thermalexpansion:frame:129>);
    recipes.addShaped(<thermalexpansion:frame:129>, [
        [<thermalfoundation:material:162>, <thermalfoundation:material:513>, <thermalfoundation:material:162>],
        [<appliedenergistics2:material:24>, <thermalexpansion:frame:128>, <appliedenergistics2:material:24>],
        [<thermalfoundation:material:162>, <thermalfoundation:material:512>, <thermalfoundation:material:162>]
    ]);

    recipes.remove(<thermalexpansion:machine:8>);
    recipes.addShaped(<thermalexpansion:machine:8>, [
        [<minecraft:bucket>, <pneumaticcraft:liquid_hopper>, <minecraft:bucket>],
        [<immersiveengineering:metal_device1:6>, <thermalexpansion:frame>, <immersiveengineering:metal_device1:6>],
        [<thermalfoundation:material:288>, <thermalexpansion:frame:129>, <thermalfoundation:material:288>]
    ]);

    recipes.remove(<thermalexpansion:machine:14>);
    recipes.addShaped(<thermalexpansion:machine:14>, [
        [<thermalfoundation:material:162>, <minecraft:piston>, <thermalfoundation:material:162>],
        [<minecraft:ice>, <thermalexpansion:frame>, <minecraft:ice>],
        [<thermalfoundation:material:288>, <thermalexpansion:frame:129>, <thermalfoundation:material:288>]
    ]);

    recipes.remove(<nuclearcraft:alloy_furnace>);
    recipes.addShaped(<nuclearcraft:alloy_furnace>, [
        [<nuclearcraft:part>, <thermalfoundation:material:512>, <nuclearcraft:part>],
        [<tconstruct:materials>, <thermalexpansion:frame:129>, <tconstruct:materials>],
        [<nuclearcraft:part>, <nuclearcraft:part:4>, <nuclearcraft:part>]
    ]);

    recipes.remove(<thermalexpansion:device:6>);
    recipes.addShaped(<thermalexpansion:device:6>, [
        [<immersiveengineering:metal:1>, <ore:blockGlass>, <immersiveengineering:metal:1>],
        [<immersiveengineering:metal:1>, <thermalexpansion:frame:64>, <immersiveengineering:metal:1>],
        [<thermalfoundation:material:260>, <thermalexpansion:frame:129>, <thermalfoundation:material:260>]
    ]);

    recipes.remove(<thermalexpansion:device:1>);
    recipes.addShaped(<thermalexpansion:device:1>, [
        [<thermalfoundation:material:162>, <minecraft:lava_bucket>, <thermalfoundation:material:162>],
        [<minecraft:netherbrick>, <thermalexpansion:frame:64>, <minecraft:netherbrick>],
        [<thermalfoundation:material:260>, <thermalexpansion:frame:129>, <thermalfoundation:material:260>]
    ]);

    recipes.remove(<appliedenergistics2:controller>);
    recipes.addShaped(<appliedenergistics2:controller>, [
        [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:24>, <appliedenergistics2:smooth_sky_stone_block>],
        [<appliedenergistics2:material:12>, <thermalexpansion:frame:129>, <appliedenergistics2:material:12>],
        [<appliedenergistics2:smooth_sky_stone_block>, <appliedenergistics2:material:24>, <appliedenergistics2:smooth_sky_stone_block>]
    ]);

    mods.thermalexpansion.Transposer.addFillRecipe(<thermalfoundation:material:515>, <immersiveengineering:metal:7>, <liquid:redstone> * 200, 200);

    recipes.remove(<thermalfoundation:glass:3>);
    mods.nuclearcraft.AlloyFurnace.addRecipe(<minecraft:glass>, <thermalfoundation:material:770>, <thermalfoundation:glass:3>);

// TIER 3 COMPONENTS RECIPES
    recipes.remove(<thermalexpansion:frame:130>);
    recipes.addShaped(<thermalexpansion:frame:130>, [
        [<immersiveengineering:metal:7>, <thermalfoundation:material:515>, <immersiveengineering:metal:7>],
        [<thermalfoundation:glass:3>, <thermalexpansion:frame:129>, <thermalfoundation:glass:3>],
        [<immersiveengineering:metal:7>, <thermalfoundation:material:515>, <immersiveengineering:metal:7>]
    ]);

    recipes.remove(<thermalexpansion:machine:15>);
    recipes.addShaped(<thermalexpansion:machine:15>, [
        [<pneumaticcraft:heat_sink>, <thermalfoundation:glass:3>, <pneumaticcraft:heat_sink>],
        [<immersiveengineering:metal:7>, <thermalexpansion:frame>, <immersiveengineering:metal:7>],
        [<thermalfoundation:material:289>, <thermalexpansion:frame:130>, <thermalfoundation:material:289>]
    ]);

    recipes.remove(<thermalexpansion:machine:4>);
    recipes.addShaped(<thermalexpansion:machine:4>, [
        [<thermalfoundation:glass:3>, <thermalfoundation:material:515>, <thermalfoundation:glass:3>],
        [<ore:dirt>, <thermalexpansion:frame>, <ore:dirt>],
        [<thermalfoundation:material:289>, <thermalexpansion:frame:130>, <thermalfoundation:material:289>]
    ]);

    recipes.remove(<nuclearcraft:infuser>);
    recipes.addShaped(<nuclearcraft:infuser>, [
        [<nuclearcraft:part:1>, <pneumaticcraft:liquid_hopper>, <nuclearcraft:part:1>],
        [<immersiveengineering:material:26>, <thermalexpansion:frame:130>, <immersiveengineering:material:26>],
        [<nuclearcraft:part:1>, <nuclearcraft:part:7>, <nuclearcraft:part:1>]
    ]);

    recipes.remove(<thermalexpansion:device:4>);
    recipes.addShaped(<thermalexpansion:device:4>, [
        [<minecraft:iron_bars>, <minecraft:fishing_rod>, <minecraft:iron_bars>],
        [<immersiveengineering:metal:7>, <thermalexpansion:frame:64>, <immersiveengineering:metal:7>],
        [<thermalfoundation:material:289>, <thermalexpansion:frame:130>, <thermalfoundation:material:289>]
    ]);

    recipes.remove(<thermalexpansion:device:9>);
    recipes.addShaped(<thermalexpansion:device:9>, [
        [<thermalfoundation:glass:3>, <minecraft:dispenser>, <thermalfoundation:glass:3>],
        [<immersiveengineering:metal:7>, <thermalexpansion:frame:64>, <immersiveengineering:metal:7>],
        [<thermalfoundation:material:289>, <thermalexpansion:frame:130>, <thermalfoundation:material:289>]
    ]);

    mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier2");
    mods.astralsorcery.Altar.addDiscoveryAltarRecipe("mypack:shaped/internal/altar/attunementAltar", <astralsorcery:blockaltar:1>, 800, 800, [
        <astralsorcery:blockmarble:2>, <astralsorcery:itemtunedcelestialcrystal> | <astralsorcery:itemtunedrockcrystal>, <astralsorcery:blockmarble:2>,
        <astralsorcery:blockmarble:4>, <liquid:astralsorcery.liquidstarlight>, <astralsorcery:blockmarble:4>,
        <astralsorcery:blockmarble:2>, <thermalexpansion:frame:130>, <astralsorcery:blockmarble:2>
    ]);

    recipes.remove(<thermalfoundation:material:101>);

// TIER 4 COMPONENTS RECIPES
recipes.remove(<thermalexpansion:frame:131>);
recipes.addShaped(<thermalexpansion:frame:131>, [
    [<nuclearcraft:part:1>, <thermalfoundation:material:165>, <nuclearcraft:part:1>],
    [<thermalfoundation:material:165>, <thermalexpansion:frame:146>, <thermalfoundation:material:165>],
    [<nuclearcraft:part:1>, <thermalfoundation:material:165>, <nuclearcraft:part:1>]
]);

recipes.remove(<thermalexpansion:machine:9>);
recipes.addShaped(<thermalexpansion:machine:9>, [
    [<thermalfoundation:material:514>, <thermalfoundation:material:293>, <thermalfoundation:material:514>],
    [<immersiveengineering:metal_decoration0:2>, <thermalexpansion:frame>, <immersiveengineering:metal_decoration0:2>],
    [<thermalfoundation:material:294>, <thermalexpansion:frame:131>, <thermalfoundation:material:294>]
]);

recipes.remove(<thermalexpansion:machine:7>);
recipes.addShaped(<thermalexpansion:machine:7>, [
    [<immersiveengineering:metal:38>, <pneumaticcraft:compressed_iron_gear>, <immersiveengineering:metal:38>],
    [<thermalfoundation:glass:3>, <thermalexpansion:frame>, <thermalfoundation:glass:3>],
    [<thermalfoundation:material:292>, <thermalexpansion:frame:131>, <thermalfoundation:material:292>]
]);

recipes.remove(<nuclearcraft:melter>);
recipes.addShaped(<nuclearcraft:melter>, [
    [<nuclearcraft:part:1>, <immersiveengineering:material:9>, <nuclearcraft:part:1>],
    [<immersiveengineering:metal_decoration0:1>, <thermalexpansion:frame:131>, <immersiveengineering:metal_decoration0:1>],
    [<nuclearcraft:part:1>, <nuclearcraft:part:7>, <nuclearcraft:part:1>]
]);

recipes.remove(<thermalexpansion:device:3>);
recipes.addShaped(<thermalexpansion:device:3>, [
    [<immersiveengineering:material:9>, <immersiveengineering:material:26>, <immersiveengineering:material:9>],
    [<immersiveengineering:metal>, <thermalexpansion:frame:64>, <immersiveengineering:metal>],
    [<thermalfoundation:material:291>, <thermalexpansion:frame:131>, <thermalfoundation:material:291>]
]);

recipes.remove(<thermalexpansion:device:2>);
recipes.addShaped(<thermalexpansion:device:2>, [
    [<immersiveengineering:material:9>, <immersiveengineering:metal_decoration0:2>, <immersiveengineering:material:9>],
    [<thermalfoundation:material:513>, <thermalexpansion:frame:64>, <thermalfoundation:material:513>],
    [<thermalfoundation:material:261>, <thermalexpansion:frame:131>, <thermalfoundation:material:261>]
]);

recipes.remove(<compactmachines3:fieldprojector>);
recipes.addShaped(<compactmachines3:fieldprojector> * 4, [
    [null, <opencomputers:hologram1>, null],
    [null, <compactmachines3:psd>, null],
    [<appliedenergistics2:sky_stone_brick>, <thermalexpansion:frame:131>, <appliedenergistics2:sky_stone_brick>]
]);

recipes.remove(<compactmachines3:psd>);
recipes.addShaped(<compactmachines3:psd>, [
    [<immersiveengineering:metal:39>, <appliedenergistics2:material:12>, <immersiveengineering:metal:39>],
    [<immersiveengineering:metal:39>, <opencomputers:screen1>, <immersiveengineering:metal:39>],
    [<immersiveengineering:metal:39>, <pneumaticcraft:printed_circuit_board>, <immersiveengineering:metal:39>]
]);

recipes.remove(<thermalexpansion:frame:147>);
mods.thermalexpansion.Transposer.removeFillRecipe(<thermalexpansion:frame:131>, <liquid:redstone> * 4000);
mods.thermalexpansion.Transposer.addFillRecipe(<thermalexpansion:frame:147>, <thermalexpansion:frame:131>, <liquid:redstone> * 8000, 32000);

recipes.remove(<thermalfoundation:material:103>);

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
