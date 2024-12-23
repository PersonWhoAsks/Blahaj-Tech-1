#priority 100

import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI.hideCategory;
import mods.jei.JEI;

// looks for items with the same ore dict, and removes their ore dicts and removes & hides them from JEI
function unify(pref as IItemStack) {
    var oreEntry as IOreDictEntry = null;

    for entry in pref.ores {
        oreEntry = entry;
        for item in oreEntry.items {
            if (item.name != pref.name) {
                val st = furnace.getSmeltingResult(item);
                if (isNull(st) == false) {
                    furnace.remove(st, item);
                }
                recipes.replaceAllOccurences(item, pref);
                oreEntry.remove(item);
                removeAndHide(item);
            }
        }
    }
}

// Removes item's ore dictionary, and removes and hides it from JEI
function erase(item as IItemStack) {
    var oreEntry as IOreDictEntry = null;

    // Loops through item's ore dictionaries and removes them
    for entry in item.ores {
        oreEntry = entry;
        oreEntry.remove(item);
    }

    print("ERASED: "+ item.displayName);
    removeAndHide(item);
}

val categoriesToHide = [
    "thermalexpansion.furnace",
    "thermalexpansion.furnace_food",
    "thermalexpansion.furnace_ore",
    "thermalexpansion.furnace_pyrolysis",
    "thermalexpansion.factorizer_combine",
    "thermalexpansion.factorizer_split",
    "thermalexpansion.smelter",
    "thermalexpansion.smelter_pyrotheum"
] as string[];
for str in categoriesToHide {
    mods.jei.JEI.hideCategory(str);
}

val thingsToErase = [
    <thermalfoundation:material:865>,   // Rich Slag

    // Thermal Foundation's Mithril
    <thermalfoundation:ore:8>,
    <thermalfoundation:storage:8>,
    <thermalfoundation:coin:72>,
    <thermalfoundation:material:72>,
    <thermalfoundation:material:136>,
    <thermalfoundation:material:200>,
    <thermalfoundation:material:264>,
    <thermalfoundation:material:328>,

    // Thermal Foundation's Mana
    <thermalfoundation:material:1028>,
    <thermalfoundation:glass:8>,

    // Thermal Foundation's Oil
    <thermalfoundation:material:892>,
    <thermalfoundation:ore_fluid:5>,
    <thermalfoundation:ore_fluid:1>,
    <thermalfoundation:ore_fluid>,
    <thermalfoundation:fluid_crude_oil>,

    // Thermal Foundation's some mechanisms
    <thermalexpansion:augment:256>,
    <thermalexpansion:augment:257>,
    <thermalexpansion:augment:258>,
    <thermalexpansion:augment:303>,
    <thermalexpansion:augment:304>,

    // Tinkers Construct materials
    <tconstruct:ore>,
    <tconstruct:ore:1>,
    <tconstruct:ingots>,
    <tconstruct:ingots:1>,
    <tconstruct:ingots:2>,
    <tconstruct:ingots:3>,
    <tconstruct:ingots:4>,
    <tconstruct:ingots:5>,
    <forge:bucketfilled>.withTag({FluidName: "cobalt", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "ardite", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "manyullyn", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "knightslime", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "pigiron", Amount: 1000}),
    <forge:bucketfilled>.withTag({FluidName: "alubrass", Amount: 1000}),
    <tconstruct:metal>,
    <tconstruct:metal:1>,
    <tconstruct:metal:2>,
    <tconstruct:metal:3>,
    <tconstruct:metal:4>,
    <tconstruct:metal:5>,
    <tconstruct:nuggets>,
    <tconstruct:nuggets:1>,
    <tconstruct:nuggets:2>,
    <tconstruct:nuggets:3>,
    <tconstruct:nuggets:4>,
    <tconstruct:nuggets:5>,
    <tconstruct:fancy_frame:4>,
    <tconstruct:fancy_frame:3>,
    <tconstruct:fancy_frame:2>,
    <tconstruct:fancy_frame:1>,

    // Tools
    <immersiveengineering:sword_steel>,
    <minecraft:golden_sword>,
    <minecraft:diamond_sword>,
    <minecraft:stone_sword>,
    <minecraft:wooden_sword>,
    <minecraft:iron_sword>,
    <minecraft:iron_shovel>,
    <minecraft:wooden_shovel>,
    <minecraft:stone_shovel>,
    <minecraft:diamond_shovel>,
    <minecraft:golden_shovel>,
    <immersiveengineering:shovel_steel>,
    <minecraft:iron_pickaxe>,
    <minecraft:wooden_pickaxe>,
    <minecraft:stone_pickaxe>,
    <minecraft:diamond_pickaxe>,
    <minecraft:golden_pickaxe>,
    <betternether:cincinnasite_pickaxe>,
    <betternether:cincinnasite_pickaxe_diamond>,
    <immersiveengineering:pickaxe_steel>,
    <minecraft:iron_axe>,
    <minecraft:wooden_axe>,
    <minecraft:stone_axe>,
    <minecraft:diamond_axe>,
    <minecraft:golden_axe>,
    <betternether:cincinnasite_axe>,
    <betternether:cincinnasite_axe_diamond>,
    <immersiveengineering:axe_steel>,
    <minecraft:wooden_hoe>,
    <minecraft:stone_hoe>,
    <minecraft:iron_hoe>,
    <minecraft:diamond_hoe>,
    <minecraft:golden_hoe>,
    <immersiveengineering:hoe_steel>
] as IItemStack[];
for thing in thingsToErase {
    erase(thing);
}
val thingsToUnify = [

    // Charcoal
    <thermalfoundation:storage_resource>,  // blockCharcoal
    
    // Coke
    <immersiveengineering:material:6>,          // fuelCoke
    <immersiveengineering:stone_decoration:3>,  // blockFuelCoke

    // Iron
    <minecraft:iron_nugget>,            // nuggetIron
    <immersiveengineering:metal:18>,    // dustIron
    <immersiveengineering:material:1>,  // stickIron
    <immersiveengineering:metal:39>,    // plateIron

    // Gold
    <immersiveengineering:metal:19>,    // dustGold
    <immersiveengineering:metal:40>,    // plateGold

    // Diamond
    <mekanism:otherdust>,               // dustDiamond

    // Aluminum
    <immersiveengineering:ore:1>,       // oreAluminum
    <immersiveengineering:metal:1>,     // ingotAluminum
    <immersiveengineering:storage:1>,   // blockAluminum
    <immersiveengineering:metal:21>,    // nuggetAluminum
    <immersiveengineering:metal:10>,    // dustAluminum
    <immersiveengineering:metal:31>,    // plateAluminum

    // Copper
    <immersiveengineering:ore>,         // oreCopper
    <immersiveengineering:metal>,       // ingotCopper
    <immersiveengineering:storage>,     // blockCopper
    <immersiveengineering:metal:20>,    // nuggetCopper
    <immersiveengineering:metal:9>,     // dustCopper
    <immersiveengineering:metal:30>,    // plateCopper

    // Lead
    <immersiveengineering:ore:2>,       // oreLead
    <immersiveengineering:metal:2>,     // ingotLead
    <immersiveengineering:storage:2>,   // blockLead
    <immersiveengineering:metal:22>,    // nuggetLead
    <immersiveengineering:metal:11>,    // dustLead          
    <immersiveengineering:metal:32>,    // plateLead

    // Nickel
    <immersiveengineering:ore:4>,       // oreNickel
    <immersiveengineering:metal:4>,     // ingotNickel
    <immersiveengineering:storage:4>,   // blockNickel
    <immersiveengineering:metal:24>,    // nuggetNickel
    <immersiveengineering:metal:13>,    // dustNickel
    <immersiveengineering:metal:34>,    // plateNickel

    // Silver
    <immersiveengineering:ore:3>,       // oreSilver
    <immersiveengineering:metal:3>,     // ingotSilver
    <immersiveengineering:storage:3>,   // blockSilver
    <immersiveengineering:metal:23>,    // nuggetSilver
    <immersiveengineering:metal:12>,    // dustSilver
    <immersiveengineering:metal:33>,    // plateSilver

    // Steel
    <immersiveengineering:metal:8>,     // ingotSteel
    <immersiveengineering:storage:8>,   // blockSteel
    <immersiveengineering:metal:28>,    // nuggetSteel
    <immersiveengineering:material:2>,  // stickSteel
    <immersiveengineering:metal:17>,    // dustSteel
    <immersiveengineering:metal:38>,    // plateSteel
    <thermalfoundation:material:288>,   // gearSteel

    // Tin
    <thermalfoundation:ore:1>,          // oreTin
    <thermalfoundation:material:129>,   // ingotTin
    <thermalfoundation:storage:1>,      // blockTin
    <thermalfoundation:material:193>,   // nuggetTin
    <thermalfoundation:material:65>,    // dustTin
    <thermalfoundation:material:321>,   // plateTin

    // Uranium
    <immersiveengineering:ore:5>,       // oreUranium
    <immersiveengineering:metal:5>,     // ingotUranium
    <immersiveengineering:storage:5>,   // blockUranium
    <immersiveengineering:metal:14>,    // dustUranium

    // Osmium
    <mekanism:dust:2>,      // dustOsmium
    <mekanism:ingot:1>,     // ingotOsmium

    // Constantan
    <immersiveengineering:storage:6>,   // blockConstantan
    <immersiveengineering:metal:15>,    // dustConstantan
    <immersiveengineering:metal:6>,     // ingotConstantan
    <immersiveengineering:metal:26>,    // nuggetConstantan
    <immersiveengineering:metal:36>,    // plateConstantan

    // Electrum
    <immersiveengineering:storage:7>,   // blockElectrum
    <immersiveengineering:metal:16>,    // dustConstantan
    <immersiveengineering:metal:7>,     // ingotConstantan
    <immersiveengineering:metal:27>,    // nuggetConstantan
    <immersiveengineering:metal:37>,    // plateConstantan

    // Bronze
    <thermalfoundation:storage_alloy:3>,    // blockBronze
    <thermalfoundation:material:163>,       // ingotBronze
    <thermalfoundation:material:227>,       // nuggetBronze

    // Iridium
    <thermalfoundation:material:71>,    // dustIridium
    <thermalfoundation:material:135>,   // ingotIridium

    // Platinum
    <thermalfoundation:material:70>,    // dustPlatinum
    <thermalfoundation:material:134>,   // ingotPlatinum

    // Niter
    <thermalfoundation:material:772>,    // dustSaltpeter

    // Quartz
    <nuclearcraft:gem_dust:2>,  // dustQuartz, dustNetherQuartz

    // Slag
    <immersiveengineering:material:7>  // crystalSlag, itemSlag
] as IItemStack[];
for thing in thingsToUnify {
    unify(thing);
}