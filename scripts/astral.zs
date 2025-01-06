import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.astralsorcery.Altar;

// Changing recipe with a removed vanilla item
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

// Tier 2 seeds recipes
val t2essen = <mysticalagriculture:crafting:1>;
val t2seeds = <mysticalagriculture:crafting:18>;

val t2table = {
    "fire" : <liquid:lava>,
    "dye" : <mysticalagriculture:crafting:7>,
    "nether" : <mysticalagriculture:crafting:8>,
    "coal" : <minecraft:coal>,
    "iron" : <minecraft:iron_ingot>,
    "redstone" : <minecraft:redstone>,
    "pig" : <mysticalagriculture:chunk:7>,
    "chicken" : <mysticalagriculture:chunk:8>,
    "cow" : <mysticalagriculture:chunk:9>,
    "sheep" : <mysticalagriculture:chunk:10>,
    "slime" : <mysticalagriculture:chunk:11>,
    "silicon" : <nuclearcraft:gem:6>,
    "aluminum" : <immersiveengineering:metal:1>,
    "copper" : <immersiveengineering:metal>,
    "tin" : <thermalfoundation:material:129>,
    "silver" : <immersiveengineering:metal:3>,
    "marble" : <astralsorcery:blockmarble>,
    "aquamarine" : <astralsorcery:itemcraftingcomponent>
} as IIngredient[string];

for key in t2table {
    val seed = itemUtils.getItem("mysticalagriculture:" ~ key ~ "_seeds"); 
    recipes.remove(seed);
    mods.astralsorcery.Altar.addDiscoveryAltarRecipe("mypackname:shaped/internal/altar/" ~ key ~ "_seeds", seed, 200, 200, [
        t2table[key], t2essen, t2table[key],
        t2essen, t2seeds, t2essen,
        t2table[key], t2essen, t2table[key]
    ]);
}