import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.pneumaticcraft.explosioncrafting;

// Explosion Crafting removal
mods.pneumaticcraft.explosioncrafting.removeAllRecipes();

// MCMEDS CRAFTING
// Opium
recipes.remove(<mcmeds:opium>);
brewing.addBrew(<minecraft:potion>.withTag({Potion: "minecraft:water"}), <minecraft:red_flower>, <mcmeds:opium>);

// Morphine
recipes.remove(<mcmeds:morphine>);
mods.pneumaticcraft.pressurechamber.addRecipe(
    [<mcmeds:opium>, <minecraft:dye:15>],
    2.0, [<mcmeds:morphine>]
);

// Hytoctine
recipes.remove(<mcmeds:hytoctine>);
mods.pneumaticcraft.pressurechamber.addRecipe(
    [<minecraft:sugar>, <minecraft:glowstone_dust>, <minecraft:blaze_powder>, <minecraft:potion>.withTag({Potion: "minecraft:water"})], 
    2.5, [<mcmeds:hytoctine>]
);

// Deusizine
recipes.remove(<mcmeds:deusizine>);
mods.pneumaticcraft.pressurechamber.addRecipe(
    [<mcmeds:fentanyl>, <minecraft:dye:15>, <minecraft:blaze_powder>, <minecraft:potion>.withTag({Potion: "minecraft:water"})],
    3.0, [<mcmeds:deusizine>]
);

// HANDLE COLLIDING ITEMS WITH OPENCOMPUTERS
// PCB
scripts.main.erase(<opencomputers:material:2>);
recipes.replaceAllOccurences(<opencomputers:material:4>, <pneumaticcraft:printed_circuit_board>);
scripts.main.erase(<opencomputers:material:4>);
furnace.remove(<opencomputers:material:4>);

// Transistor
recipes.replaceAllOccurences(<opencomputers:material:6>, <pneumaticcraft:transistor>);
scripts.main.erase(<opencomputers:material:6>);

// RECIPES
// Calculators recipes tweaks
recipes.remove(<jecalculation:item_calculator:1>);
recipes.addShaped(<jecalculation:item_calculator:1>, [
    [<pneumaticcraft:plastic:8>, <opencomputers:screen1>, <pneumaticcraft:plastic:8>],
    [<pneumaticcraft:plastic:8>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:8>],
    [<pneumaticcraft:plastic:8>, <opencomputers:material:16>, <pneumaticcraft:plastic:8>]
]);

recipes.remove(<jecalculation:item_calculator>);
recipes.addShaped(<jecalculation:item_calculator>, [
    [<pneumaticcraft:plastic:8>, <opencomputers:screen2>, <pneumaticcraft:plastic:8>],
    [<pneumaticcraft:plastic:8>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic:8>],
    [<pneumaticcraft:plastic:8>, <opencomputers:material:16>, <pneumaticcraft:plastic:8>]
]);

// OpenComputers recipes tweaks
recipes.remove(<opencomputers:material:16>);
recipes.addShaped(<opencomputers:material:16>, [
    [<quark:iron_button>, <quark:iron_button>, <quark:iron_button>],
    [<pneumaticcraft:plastic:7>, <quark:iron_button>, <pneumaticcraft:plastic:7>],
    [<quark:iron_button>, <quark:iron_button>, <quark:iron_button>]
]);

recipes.remove(<opencomputers:screen2>);
recipes.addShapedMirrored(<opencomputers:screen2>, [
    [<pneumaticcraft:plastic:8>, <opencomputers:material:8>, <ore:dyeRed>],
    [<opencomputers:material:8>, <opencomputers:screen1>, <ore:dyeGreen>],
    [<pneumaticcraft:plastic:8>, <opencomputers:material:8>, <ore:dyeBlue>]
]);

recipes.remove(<opencomputers:screen1>);
recipes.addShapedMirrored(<opencomputers:screen1>, [
    [<pneumaticcraft:plastic:8>, <opencomputers:material:7>, <ore:paneGlass>],
    [<opencomputers:material:7>, <pneumaticcraft:printed_circuit_board>, <ore:paneGlass>],
    [<pneumaticcraft:plastic:8>, <opencomputers:material:7>, <ore:paneGlass>]
]);

recipes.remove(<opencomputers:material:8>);
recipes.addShaped(<opencomputers:material:8> * 4, [
    [<opencomputers:material:7>, <minecraft:gold_nugget>, <opencomputers:material:7>],
    [<pneumaticcraft:plastic>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic>],
    [<opencomputers:material:7>, <minecraft:gold_nugget>, <opencomputers:material:7>]
]);

recipes.remove(<opencomputers:material:7>);
recipes.addShaped(<opencomputers:material:7> * 8, [
    [<pneumaticcraft:transistor>, <minecraft:iron_nugget>, <pneumaticcraft:transistor>],
    [<pneumaticcraft:plastic>, <pneumaticcraft:printed_circuit_board>, <pneumaticcraft:plastic>],
    [<pneumaticcraft:transistor>, <minecraft:iron_nugget>, <pneumaticcraft:transistor>]
]);

// Main tweaks
recipes.remove(<pneumaticcraft:air_canister:30000>);
recipes.addShaped(<pneumaticcraft:air_canister:30000>, [
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:pressure_tube>, <pneumaticcraft:ingot_iron_compressed>],
    [<ore:ingotIronCompressed>, <pneumaticcraft:pressure_gauge>, <ore:ingotIronCompressed>],
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:ingot_iron_compressed>]
]);

recipes.removeShaped(<pneumaticcraft:gps_tool>, [
    [null, <ore:torchRedstoneActive>, null],
    [<ore:plasticRed>, <ore:paneGlassColorless>, <ore:plasticRed>],
    [<pneumaticcraft:plastic:1>, <minecraft:diamond>, <pneumaticcraft:plastic:1>]
]);
recipes.addShaped(<pneumaticcraft:gps_tool>, [
    [null, <ore:torchRedstoneActive>, null],
    [<ore:plasticRed>, <ore:paneGlass>, <ore:plasticRed>],
    [<pneumaticcraft:plastic:1>, <immersiveengineering:material:27>, <pneumaticcraft:plastic:1>]
]);

recipes.remove(<pneumaticcraft:amadron_tablet>);
recipes.addShaped(<pneumaticcraft:amadron_tablet>, [
    [<pneumaticcraft:plastic:8>, <pneumaticcraft:gps_tool>, <pneumaticcraft:plastic:8>],
    [<ore:plasticGray>, <ore:paneGlass>, <ore:plasticGray>],
    [<pneumaticcraft:plastic:8>, <pneumaticcraft:air_canister>, <pneumaticcraft:plastic:8>]
]);

recipes.remove(<pneumaticcraft:vacuum_pump>);
recipes.addShaped(<pneumaticcraft:vacuum_pump>, [
    [<pneumaticcraft:pressure_gauge>, <pneumaticcraft:turbine_rotor>, <pneumaticcraft:pressure_gauge>],
    [<pneumaticcraft:pressure_tube>, <immersiveengineering:material:26>, <pneumaticcraft:pressure_tube>],
    [<minecraft:stone_slab:3>, <minecraft:stone_slab:3>, <minecraft:stone_slab:3>]
]);

recipes.remove(<pneumaticcraft:plastic_mixer>);
recipes.addShaped(<pneumaticcraft:plastic_mixer>, [
    [<immersiveengineering:metal:38>, <ore:paneGlass>, <immersiveengineering:metal:38>],
    [<ore:paneGlass>, <pneumaticcraft:compressed_iron_gear>, <ore:paneGlass>],
    [<pneumaticcraft:ingot_iron_compressed>, <immersiveengineering:material:27>, <pneumaticcraft:ingot_iron_compressed>]
]);

recipes.remove(<pneumaticcraft:thermopneumatic_processing_plant>);
recipes.addShaped(<pneumaticcraft:thermopneumatic_processing_plant>, [
    [<immersiveengineering:metal:38>, <pneumaticcraft:pressure_tube>, <immersiveengineering:metal:38>],
    [<ore:paneGlass>, <immersiveengineering:material:27>, <ore:paneGlass>],
    [<immersiveengineering:metal:38>, <pneumaticcraft:compressed_iron_gear>, <immersiveengineering:metal:38>]
]);

recipes.remove(<pneumaticcraft:uv_light_box>);
recipes.addShapedMirrored(<pneumaticcraft:uv_light_box>, [
    [<immersiveengineering:toolupgrade:10>, <immersiveengineering:toolupgrade:10>, <immersiveengineering:toolupgrade:10>],
    [<pneumaticcraft:ingot_iron_compressed>, <pneumaticcraft:pcb_blueprint>, <pneumaticcraft:pressure_tube>],
    [<immersiveengineering:metal:38>, <immersiveengineering:metal:38>, <immersiveengineering:metal:38>]
]);

recipes.remove(<pneumaticcraft:refinery>);
recipes.addShaped(<pneumaticcraft:refinery>, [
    [<immersiveengineering:metal:38>, <minecraft:glass_pane>, <immersiveengineering:metal:38>],
    [<pneumaticcraft:compressed_iron_gear>, <immersiveengineering:material:27>, <pneumaticcraft:compressed_iron_gear>],
    [<immersiveengineering:metal:38>, <minecraft:glass_pane>, <immersiveengineering:metal:38>]
]);

recipes.remove(<pneumaticcraft:air_compressor>);
recipes.addShaped(<pneumaticcraft:air_compressor>, [
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, <immersiveengineering:material:27>, <pneumaticcraft:pressure_tube>],
    [<immersiveengineering:metal:8>, <minecraft:furnace>, <immersiveengineering:metal:8>]
]);

recipes.remove(<pneumaticcraft:pressure_chamber_interface>);
recipes.addShapeless(<pneumaticcraft:pressure_chamber_interface>, [
    <immersiveengineering:material:27>, <minecraft:hopper>, <pneumaticcraft:pressure_chamber_wall>
]);

recipes.remove(<pneumaticcraft:pressure_chamber_valve>);
recipes.addShaped(<pneumaticcraft:pressure_chamber_valve> * 8, [
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, <pneumaticcraft:pressure_tube>, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>]
]);

recipes.remove(<pneumaticcraft:pressure_tube>);
recipes.addShaped(<pneumaticcraft:pressure_tube> * 4, [
    [<immersiveengineering:metal:8>, <ore:blockGlass>, <immersiveengineering:metal:8>]
]);

recipes.remove(<pneumaticcraft:pressure_chamber_glass>);
recipes.addShaped(<pneumaticcraft:pressure_chamber_glass> * 8, [
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, <ore:blockGlass>, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>]
]);

recipes.remove(<pneumaticcraft:pressure_chamber_wall>);
recipes.addShaped(<pneumaticcraft:pressure_chamber_wall> * 8, [
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, null, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>]
]);
