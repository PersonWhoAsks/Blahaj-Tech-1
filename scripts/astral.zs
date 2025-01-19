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
    mods.astralsorcery.Altar.addDiscoveryAltarRecipe("mypack:shaped/internal/altar/" ~ key ~ "_seeds", seed, 400, 400, [
        t2table[key], t2essen, t2table[key],
        t2essen, t2seeds, t2essen,
        t2table[key], t2essen, t2table[key]
    ]);
}

// Tier 3 seeds recipes
val t3essen = <mysticalagriculture:crafting:2>;
val t3seeds = <mysticalagriculture:crafting:19>;

val t3table = {
    "nether_quartz" : <minecraft:quartz>,
    "glowstone" : <minecraft:glowstone>,
    "obsidian" : <minecraft:obsidian>,
    "gold" : <minecraft:gold_ingot>,
    "lapis_lazuli" : <minecraft:dye:4>,
    "skeleton" : <mysticalagriculture:chunk:12>,
    "creeper" : <mysticalagriculture:chunk:13>,
    "spider" : <mysticalagriculture:chunk:14>,
    "rabbit" : <mysticalagriculture:chunk:15>,
    "guardian" : <mysticalagriculture:chunk:16>,
    "sulfur" : <thermalfoundation:material:771>,
    "saltpeter" : <thermalfoundation:material:772>,
    "bronze" : <thermalfoundation:material:163>,
    "lead" : <immersiveengineering:metal:2>,
    "graphite" : <nuclearcraft:ingot:8>,
    "steel" : <immersiveengineering:metal:8>,
    "constantan" : <immersiveengineering:metal:6>,
    "electrum" : <immersiveengineering:metal:7>,
    "invar" : <thermalfoundation:material:162>,
    "blizz" : <mysticalagriculture:chunk:21>,
    "blitz" : <mysticalagriculture:chunk:22>,
    "basalz" : <mysticalagriculture:chunk:23>,
    "boron" : <nuclearcraft:ingot:5>,
    "lithium" : <nuclearcraft:ingot:6>,
    "magnesium" : <nuclearcraft:ingot:7>,
    "rock_crystal" : <astralsorcery:itemrockcrystalsimple>,
    "compressed_iron" : <pneumaticcraft:ingot_iron_compressed>,
    "certus_quartz" : <appliedenergistics2:material>
} as IIngredient[string];

for key in t3table {
    val seed = itemUtils.getItem("mysticalagriculture:" ~ key ~ "_seeds"); 
    recipes.remove(seed);
    mods.astralsorcery.Altar.addAttunementAltarRecipe("mypack:shaped/internal/altar/" ~ key ~ "_seeds", seed, 800, 800, [
        t3essen, t3table[key], t3essen,
        t3table[key], t3seeds, t3table[key],
        t3essen, t3table[key], t3essen,
        t3table[key], t3table[key], t3table[key], t3table[key]
    ]);
}