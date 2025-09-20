import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.astralsorcery.Altar;

// Remove crashing items
scripts.main.erase(<qmd:rtg_strontium>);
scripts.main.erase(<qmd:fission_shield>);

mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier4", <astralsorcery:blockaltar:3>, 3200, 3200, [
    <astralsorcery:blockmarble:6>, <astralsorcery:itemcraftingcomponent:3>, <astralsorcery:blockmarble:6>,
    <qmd:ingot_alloy:6>, <astralsorcery:itemcelestialcrystal> | <astralsorcery:itemtunedcelestialcrystal>, <qmd:ingot_alloy:6>,
    <astralsorcery:blockmarble:6>, <qmd:semiconductor:6>, <astralsorcery:blockmarble:6>,
    <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>, <astralsorcery:blockmarble:6>,
    <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>,
    <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:itemcraftingcomponent:4>, <astralsorcery:itemcraftingcomponent:4>,
    <astralsorcery:blockblackmarble>, <astralsorcery:blockblackmarble>
]);

// Recipes for final items
mods.astralsorcery.Altar.addTraitAltarRecipe("mypack:shaped/internal/altar/gray_shark", <blahaj:gray_shark>, 4800, 4800, [
    null, <pneumaticcraft:compressed_iron_block>, null,
    <appliedenergistics2:paint_ball:15>, <qmd:cell:6>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}}), <pneumaticcraft:compressed_iron_block>,
    <qmd:ingot:7>, <pneumaticcraft:compressed_iron_block>, <pneumaticcraft:compressed_iron_block>,
    null, null, null, null,
    null, null,
    null, <pneumaticcraft:compressed_iron_block>,
    <qmd:ingot:7>, null,
    null, null,
    null, <pneumaticcraft:compressed_iron_block>, <pneumaticcraft:compressed_iron_block>, null
    ], "astralsorcery.constellation.octans"
);

mods.astralsorcery.Altar.addTraitAltarRecipe("mypack:shaped/internal/altar/bread", <blahaj:bread>, 4800, 4800, [
    <nuclearcraft:flour>, <nuclearcraft:flour>, <nuclearcraft:flour>,
    <minecraft:water_bucket>, <qmd:cell:8>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}}), <minecraft:water_bucket>,
    <nuclearcraft:flour>, <nuclearcraft:flour>, <nuclearcraft:flour>,
    <qmd:luminous_paint:2>, <qmd:luminous_paint:2>, <qmd:luminous_paint:2>, <qmd:luminous_paint:2>,
    <qmd:luminous_paint:2>, <qmd:luminous_paint:2>,
    <nuclearcraft:flour>, <nuclearcraft:flour>,
    <nuclearcraft:flour>, <nuclearcraft:flour>,
    <qmd:luminous_paint:2>, <qmd:luminous_paint:2>,
    <qmd:luminous_paint:2>, <quark:rune:1>, <quark:rune:1>, <qmd:luminous_paint:2>
    ], "astralsorcery.constellation.fornax"
);

mods.astralsorcery.Altar.addTraitAltarRecipe("mypack:shaped/internal/altar/blue_shark", <blahaj:blue_shark>, 6400, 6400, [
    null, <nuclearcraft:ingot_block2:4>, null,
    <appliedenergistics2:paint_ball:15>, <nuclearcraft:ingot_block2:4>, <nuclearcraft:ingot_block2:4>,
    <qmd:ingot2:2>, <nuclearcraft:ingot_block2:4>, <nuclearcraft:ingot_block2:4>,
    <qmd:luminous_paint:1>, <qmd:luminous_paint:1>, <minecraft:fish>, <minecraft:fish>,
    <qmd:luminous_paint:1>, <qmd:luminous_paint:1>,
    null, <nuclearcraft:ingot_block2:4>,
    <qmd:ingot2:2>, null,
    <qmd:cell:6>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}}), <qmd:cell:8>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}}),
    <qmd:luminous_paint:1>, <nuclearcraft:ingot_block2:4>, <nuclearcraft:ingot_block2:4>, <qmd:cell:3>.withTag({particle_storage: {particle_amount: 100000, particle_capacity: 100000}})
    ], "astralsorcery.constellation.aevitas"
);