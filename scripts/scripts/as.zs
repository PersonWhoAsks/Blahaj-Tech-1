import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.astralsorcery.Altar;

mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/lens_break");
mods.astralsorcery.Altar.addConstellationAltarRecipe("astralsorcery:shaped/internal/altar/lens_break", <astralsorcery:itemcoloredlens:1>, 2000, 10, [
    null, <minecraft:diamond>, null,
    null, <astralsorcery:itemcraftingcomponent:3>, null,
    null, <astralsorcery:itemcrystalpickaxe>, null,
    <astralsorcery:itemcraftingcomponent>, <astralsorcery:itemcraftingcomponent>, null, null,
    null, null,
    null, null,
    <minecraft:gold_ingot>, <minecraft:gold_ingot>,
    null, null
]);