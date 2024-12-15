import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.tconstruct.Alloy;
import mods.tconstruct.Casting;

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