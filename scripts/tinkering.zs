import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;

// Tweak recipes using removed vanilla tools
recipes.remove(<ftbquests:loot_crate_opener>);
recipes.addShaped(<ftbquests:loot_crate_opener>, [
    [<ore:plankWood>, <minecraft:dropper>, <ore:plankWood>],
    [<ore:plankWood>, <ftbquests:book>, <ore:plankWood>],
    [<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
]);

recipes.remove(<immersiveengineering:toolupgrade:4>);
recipes.addShaped(<immersiveengineering:toolupgrade:4>, [
    [<minecraft:flint>, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, <immersiveengineering:treated_wood:*>]
]);

recipes.remove(<thermalexpansion:augment:416>);
recipes.addShaped(<thermalexpansion:augment:416>, [[null, <thermalfoundation:material:290>, null],[<minecraft:diamond>, <thermalfoundation:material:512>, <minecraft:diamond>], [null, <minecraft:piston>, null]]);

// Remove alloying recipes for all Tinkers' Construct alloys
val liquidsNoAlloying = [
    <liquid:steel>,
    <liquid:alubrass>,
    <liquid:electrum>,
    <liquid:bronze>,
    <liquid:manyullyn>,
    <liquid:pigiron>,
    <liquid:knightslime>
] as ILiquidStack[];

for liquid in liquidsNoAlloying {
    mods.tconstruct.Alloy.removeRecipe(liquid);
}

// Remove casting recipes for all Aluminium Brass casts
val castsNoAlubrass = [
    <tconstruct:cast>,
    <tconstruct:cast_custom>,
    <tconstruct:cast_custom:1>,
    <tconstruct:cast_custom:2>,
    <tconstruct:cast_custom:3>,
    <tconstruct:cast_custom:4>
] as IItemStack[];

for cast in castsNoAlubrass {
    mods.tconstruct.Casting.removeTableRecipe(cast, <liquid:alubrass>);
}

// RECIPES
// No vanilla smelting ores
furnace.remove(<immersiveengineering:metal>, <immersiveengineering:ore>);
furnace.remove(<immersiveengineering:metal:1>, <immersiveengineering:ore:1>);
furnace.remove(<immersiveengineering:metal:3>, <immersiveengineering:ore:3>);
furnace.remove(<immersiveengineering:metal:4>, <immersiveengineering:ore:4>);
furnace.remove(<immersiveengineering:metal:2>, <immersiveengineering:ore:2>);
furnace.remove(<thermalfoundation:material:129>, <thermalfoundation:ore:1>);
furnace.remove(<minecraft:iron_ingot>, <minecraft:iron_ore>);
furnace.remove(<minecraft:gold_ingot>, <minecraft:gold_ore>);

// Bonsai Trees recipes tweaks
recipes.remove(<bonsaitrees:bonsaipot>);
recipes.addShaped(<bonsaitrees:bonsaipot>, [
    [<immersiveengineering:metal:8>, <minecraft:enchanted_book>, <immersiveengineering:metal:8>],
    [<immersiveengineering:metal:8>, <immersiveengineering:metal:8>, <immersiveengineering:metal:8>]
]);

// Main tweaks
recipes.remove(<tconstruct:slime_boots>);
recipes.addShaped(<tconstruct:slime_boots>, [
    [<minecraft:slime_ball>, null, <minecraft:slime_ball>],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
    [<tconstruct:slime_congealed>, null, <tconstruct:slime_congealed>]
]);

recipes.remove(<tconstruct:slime_boots:1>);
recipes.addShaped(<tconstruct:slime_boots:1>, [
    [<tconstruct:edible:1>, null, <tconstruct:edible:1>],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
    [<tconstruct:slime_congealed:1>, null, <tconstruct:slime_congealed:1>]
]);

recipes.remove(<tconstruct:slime_boots:2>);
recipes.addShaped(<tconstruct:slime_boots:2>, [
    [<tconstruct:edible:2>, null, <tconstruct:edible:2>],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
    [<tconstruct:slime_congealed:2>, null, <tconstruct:slime_congealed:2>]
]);

recipes.remove(<tconstruct:slime_boots:3>);
recipes.addShaped(<tconstruct:slime_boots:3>, [
    [<tconstruct:edible:3>, null, <tconstruct:edible:3>],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
    [<tconstruct:slime_congealed:3>, null, <tconstruct:slime_congealed:3>]
]);

recipes.remove(<tconstruct:slime_boots:4>);
recipes.addShaped(<tconstruct:slime_boots:4>, [
    [<tconstruct:edible:4>, null, <tconstruct:edible:4>],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
    [<tconstruct:slime_congealed:4>, null, <tconstruct:slime_congealed:4>]
]);

recipes.remove(<tconstruct:slime_boots:5>);
recipes.addShaped(<tconstruct:slime_boots:5>, [
    [<ore:slimeball>, null, <ore:slimeball>],
    [<minecraft:iron_ingot>, null, <minecraft:iron_ingot>],
    [<ore:blockSlimeCongealed>, null, <ore:blockSlimeCongealed>]
]);

recipes.remove(<tconstruct:slimesling>);
recipes.addShaped(<tconstruct:slimesling>, [
    [<minecraft:string>, <tconstruct:slime_congealed>, <minecraft:string>],
    [<minecraft:slime_ball>, <minecraft:iron_ingot>, <minecraft:slime_ball>],
    [null, <minecraft:slime_ball>, null]
]);

recipes.remove(<tconstruct:slimesling:1>);
recipes.addShaped(<tconstruct:slimesling:1>, [
    [<minecraft:string>, <tconstruct:slime_congealed:1>, <minecraft:string>],
    [<tconstruct:edible:1>, <minecraft:iron_ingot>, <tconstruct:edible:1>],
    [null, <tconstruct:edible:1>, null]
]);

recipes.remove(<tconstruct:slimesling:2>);
recipes.addShaped(<tconstruct:slimesling:2>, [
    [<minecraft:string>, <tconstruct:slime_congealed:2>, <minecraft:string>],
    [<tconstruct:edible:2>, <minecraft:iron_ingot>, <tconstruct:edible:2>],
    [null, <tconstruct:edible:2>, null]
]);

recipes.remove(<tconstruct:slimesling:3>);
recipes.addShaped(<tconstruct:slimesling:3>, [
    [<minecraft:string>, <tconstruct:slime_congealed:3>, <minecraft:string>],
    [<tconstruct:edible:3>, <minecraft:iron_ingot>, <tconstruct:edible:3>],
    [null, <tconstruct:edible:3>, null]
]);

recipes.remove(<tconstruct:slimesling:4>);
recipes.addShaped(<tconstruct:slimesling:4>, [
    [<minecraft:string>, <tconstruct:slime_congealed:4>, <minecraft:string>],
    [<tconstruct:edible:4>, <minecraft:iron_ingot>, <tconstruct:edible:4>],
    [null, <tconstruct:edible:4>, null]
]);

recipes.remove(<tconstruct:slimesling:5>);
recipes.addShaped(<tconstruct:slimesling:5>, [
    [<minecraft:string>, <ore:blockSlimeCongealed>, <minecraft:string>],
    [<ore:slimeball>, <minecraft:iron_ingot>, <ore:slimeball>],
    [null, <ore:slimeball>, null]
]);

recipes.remove(<tconstruct:casting:1>);
recipes.addShaped(<tconstruct:casting:1>, [
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [<tconstruct:materials>, null, <tconstruct:materials>],
    [<tconstruct:materials>, <minecraft:iron_ingot>, <tconstruct:materials>]
]);

