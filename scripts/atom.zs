import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;
import crafttweaker.liquid.ILiquidStack;

import mods.jei.JEI.removeAndHide;
import mods.jei.JEI;

import mods.nuclearcraft.Melter;
import mods.nuclearcraft.AlloyFurnace;
import mods.nuclearcraft.Assembler;
import mods.nuclearcraft.SaltFission;
import mods.nuclearcraft.SaltMixer;
import mods.nuclearcraft.HeatExchanger;
import mods.nuclearcraft.Centrifuge;
import mods.nuclearcraft.Electrolyzer;
import mods.nuclearcraft.FuelReprocessor;
import mods.nuclearcraft.Separator;
import mods.nuclearcraft.DecayHastener;
import mods.nuclearcraft.IngotFormer;
import mods.nuclearcraft.ChemicalReactor;
import mods.nuclearcraft.FissionHeating;

import mods.astralsorcery.Altar;

// Removing impossible recipes
mods.nuclearcraft.Melter.removeRecipeWithInput(<tconstruct:nuggets>);
mods.nuclearcraft.Melter.removeRecipeWithInput(<tconstruct:ingots>);

// REMOVING CONTENT

    // Pebble-bed fission
    mods.jei.JEI.hideCategory("nuclearcraft_pebble_fission");
    val pebbleItems = [
        <nuclearcraft:fuel_thorium>,
        <nuclearcraft:fuel_uranium>,
        <nuclearcraft:fuel_uranium:4>,
        <nuclearcraft:fuel_uranium:8>,
        <nuclearcraft:fuel_uranium:12>,
        <nuclearcraft:fuel_neptunium>,
        <nuclearcraft:fuel_neptunium:4>,
        <nuclearcraft:fuel_plutonium>,
        <nuclearcraft:fuel_plutonium:4>,
        <nuclearcraft:fuel_plutonium:8>,
        <nuclearcraft:fuel_plutonium:12>,
        <nuclearcraft:fuel_mixed>,
        <nuclearcraft:fuel_mixed:4>,
        <nuclearcraft:fuel_americium>,
        <nuclearcraft:fuel_americium:4>,
        <nuclearcraft:fuel_curium>,
        <nuclearcraft:fuel_curium:4>,
        <nuclearcraft:fuel_curium:8>,
        <nuclearcraft:fuel_curium:12>,
        <nuclearcraft:fuel_curium:16>,
        <nuclearcraft:fuel_curium:20>,
        <nuclearcraft:fuel_berkelium>,
        <nuclearcraft:fuel_berkelium:4>,
        <nuclearcraft:fuel_californium>,
        <nuclearcraft:fuel_californium:4>,
        <nuclearcraft:fuel_californium:8>,
        <nuclearcraft:fuel_californium:12>,
        <nuclearcraft:depleted_fuel_thorium>,
        <nuclearcraft:depleted_fuel_uranium>,
        <nuclearcraft:depleted_fuel_uranium:4>,
        <nuclearcraft:depleted_fuel_uranium:8>,
        <nuclearcraft:depleted_fuel_uranium:12>,
        <nuclearcraft:depleted_fuel_neptunium>,
        <nuclearcraft:depleted_fuel_neptunium:4>,
        <nuclearcraft:depleted_fuel_plutonium>,
        <nuclearcraft:depleted_fuel_plutonium:4>,
        <nuclearcraft:depleted_fuel_plutonium:8>,
        <nuclearcraft:depleted_fuel_plutonium:12>,
        <nuclearcraft:depleted_fuel_mixed>,
        <nuclearcraft:depleted_fuel_mixed:4>,
        <nuclearcraft:depleted_fuel_americium>,
        <nuclearcraft:depleted_fuel_americium:4>,
        <nuclearcraft:depleted_fuel_curium>,
        <nuclearcraft:depleted_fuel_curium:4>,
        <nuclearcraft:depleted_fuel_curium:8>,
        <nuclearcraft:depleted_fuel_curium:12>,
        <nuclearcraft:depleted_fuel_curium:16>,
        <nuclearcraft:depleted_fuel_curium:20>,
        <nuclearcraft:depleted_fuel_berkelium>,
        <nuclearcraft:depleted_fuel_berkelium:4>,
        <nuclearcraft:depleted_fuel_californium>,
        <nuclearcraft:depleted_fuel_californium:4>,
        <nuclearcraft:depleted_fuel_californium:8>,
        <nuclearcraft:depleted_fuel_californium:12>,
        <qmd:fuel_copernicium>,
        <qmd:depleted_fuel_copernicium>
    ] as IItemStack[];
    for pebble in pebbleItems {
        mods.jei.JEI.removeAndHide(pebble);

        if (!(pebble.name has "depleted")) {
            mods.nuclearcraft.Assembler.removeRecipeWithOutput(pebble*9);
        } else {
            mods.nuclearcraft.FuelReprocessor.removeRecipeWithInput(pebble*9);
        }
    }

    val NaKLiquids = [
        <liquid:aluminum_nak>,
        <liquid:aluminum_nak_hot>,
        <liquid:arsenic_nak>,
        <liquid:arsenic_nak_hot>,
        <liquid:boron_nak>,
        <liquid:boron_nak_hot>,
        <liquid:carobbiite_nak>,
        <liquid:carobbiite_nak_hot>,
        <liquid:copper_nak>,
        <liquid:copper_nak_hot>,
        <liquid:cryotheum_nak>,
        <liquid:cryotheum_nak_hot>,
        <liquid:diamond_nak>,
        <liquid:diamond_nak_hot>,
        <liquid:emerald_nak>,
        <liquid:emerald_nak_hot>,
        <liquid:end_stone_nak>,
        <liquid:end_stone_nak_hot>,
        <liquid:enderium_nak>,
        <liquid:enderium_nak_hot>,
        <liquid:fluorite_nak>,
        <liquid:fluorite_nak_hot>,
        <liquid:glowstone_nak>,
        <liquid:glowstone_nak_hot>,
        <liquid:gold_nak>,
        <liquid:gold_nak_hot>,
        <liquid:iron_nak>,
        <liquid:iron_nak_hot>,
        <liquid:lapis_nak>,
        <liquid:lapis_nak_hot>,
        <liquid:lead_nak>,
        <liquid:lead_nak_hot>,
        <liquid:liquid_helium_nak>,
        <liquid:liquid_helium_nak_hot>,
        <liquid:liquid_nitrogen_nak>,
        <liquid:liquid_nitrogen_nak_hot>,
        <liquid:lithium_nak>,
        <liquid:lithium_nak_hot>,
        <liquid:magnesium_nak>,
        <liquid:magnesium_nak_hot>,
        <liquid:manganese_nak>,
        <liquid:manganese_nak_hot>,
        <liquid:nak>,
        <liquid:nak_hot>,
        <liquid:nether_brick_nak>,
        <liquid:nether_brick_nak_hot>,
        <liquid:obsidian_nak>,
        <liquid:obsidian_nak_hot>,
        <liquid:prismarine_nak>,
        <liquid:prismarine_nak_hot>,
        <liquid:purpur_nak>,
        <liquid:purpur_nak_hot>,
        <liquid:quartz_nak>,
        <liquid:quartz_nak_hot>,
        <liquid:redstone_nak>,
        <liquid:redstone_nak_hot>,
        <liquid:silver_nak>,
        <liquid:silver_nak_hot>,
        <liquid:slime_nak>,
        <liquid:slime_nak_hot>,
        <liquid:tin_nak>,
        <liquid:tin_nak_hot>,
        <liquid:villiaumite_nak>,
        <liquid:villiaumite_nak_hot>
    ] as ILiquidStack[];
    for liquid in NaKLiquids {
        if (!(liquid.name has "hot")) {
            mods.nuclearcraft.SaltMixer.removeRecipeWithOutput(liquid*144);
            mods.nuclearcraft.FissionHeating.removeRecipeWithInput(liquid);

            if (liquid.name != "nak") {
                mods.nuclearcraft.Centrifuge.removeRecipeWithInput(liquid*144);
            }
        }

        mods.jei.JEI.hide(liquid);
    }

    // Molten salt fission
    mods.nuclearcraft.SaltFission.removeAllRecipes();
    mods.jei.JEI.hideCategory("nuclearcraft_coolant_heater");
    scripts.main.erase(<nuclearcraft:salt_fission_controller>);

    val heaters = [
        <nuclearcraft:fission_heater_port>,
        <nuclearcraft:fission_heater_port:1>,
        <nuclearcraft:fission_heater_port:2>,
        <nuclearcraft:fission_heater_port:3>,
        <nuclearcraft:fission_heater_port:4>,
        <nuclearcraft:fission_heater_port:5>,
        <nuclearcraft:fission_heater_port:6>,
        <nuclearcraft:fission_heater_port:7>,
        <nuclearcraft:fission_heater_port:8>,
        <nuclearcraft:fission_heater_port:9>,
        <nuclearcraft:fission_heater_port:10>,
        <nuclearcraft:fission_heater_port:11>,
        <nuclearcraft:fission_heater_port:12>,
        <nuclearcraft:fission_heater_port:13>,
        <nuclearcraft:fission_heater_port:14>,
        <nuclearcraft:fission_heater_port:15>,
        <nuclearcraft:fission_heater_port2>,
        <nuclearcraft:fission_heater_port2:1>,
        <nuclearcraft:fission_heater_port2:2>,
        <nuclearcraft:fission_heater_port2:3>,
        <nuclearcraft:fission_heater_port2:4>,
        <nuclearcraft:fission_heater_port2:5>,
        <nuclearcraft:fission_heater_port2:6>,
        <nuclearcraft:fission_heater_port2:7>,
        <nuclearcraft:fission_heater_port2:8>,
        <nuclearcraft:fission_heater_port2:9>,
        <nuclearcraft:fission_heater_port2:10>,
        <nuclearcraft:fission_heater_port2:11>,
        <nuclearcraft:fission_heater_port2:12>,
        <nuclearcraft:fission_heater_port2:13>,
        <nuclearcraft:fission_heater_port2:14>,
        <nuclearcraft:fission_heater_port2:15>,
        <nuclearcraft:salt_fission_heater>,
        <nuclearcraft:salt_fission_heater:1>,
        <nuclearcraft:salt_fission_heater:2>,
        <nuclearcraft:salt_fission_heater:3>,
        <nuclearcraft:salt_fission_heater:4>,
        <nuclearcraft:salt_fission_heater:5>,
        <nuclearcraft:salt_fission_heater:6>,
        <nuclearcraft:salt_fission_heater:7>,
        <nuclearcraft:salt_fission_heater:8>,
        <nuclearcraft:salt_fission_heater:9>,
        <nuclearcraft:salt_fission_heater:10>,
        <nuclearcraft:salt_fission_heater:11>,
        <nuclearcraft:salt_fission_heater:12>,
        <nuclearcraft:salt_fission_heater:13>,
        <nuclearcraft:salt_fission_heater:14>,
        <nuclearcraft:salt_fission_heater:15>,
        <nuclearcraft:salt_fission_heater2>,
        <nuclearcraft:salt_fission_heater2:1>,
        <nuclearcraft:salt_fission_heater2:2>,
        <nuclearcraft:salt_fission_heater2:3>,
        <nuclearcraft:salt_fission_heater2:4>,
        <nuclearcraft:salt_fission_heater2:5>,
        <nuclearcraft:salt_fission_heater2:6>,
        <nuclearcraft:salt_fission_heater2:7>,
        <nuclearcraft:salt_fission_heater2:8>,
        <nuclearcraft:salt_fission_heater2:9>,
        <nuclearcraft:salt_fission_heater2:10>,
        <nuclearcraft:salt_fission_heater2:11>,
        <nuclearcraft:salt_fission_heater2:12>,
        <nuclearcraft:salt_fission_heater2:13>,
        <nuclearcraft:salt_fission_heater2:14>,
        <nuclearcraft:salt_fission_heater2:15>
    ] as IItemStack[];

    for item in heaters {
        scripts.main.erase(item);
    }

    val salts = [
        <liquid:depleted_hea_242_fluoride_flibe>,
        <liquid:depleted_heb_248_fluoride_flibe>,
        <liquid:depleted_hecf_249_fluoride_flibe>,
        <liquid:depleted_hecf_251_fluoride_flibe>,
        <liquid:depleted_hecm_243_fluoride_flibe>,
        <liquid:depleted_hecm_245_fluoride_flibe>,
        <liquid:depleted_hecm_247_fluoride_flibe>,
        <liquid:depleted_hen_236_fluoride_flibe>,
        <liquid:depleted_hep_239_fluoride_flibe>,
        <liquid:depleted_hep_241_fluoride_flibe>,
        <liquid:depleted_heu_233_fluoride_flibe>,
        <liquid:depleted_heu_235_fluoride_flibe>,
        <liquid:depleted_lea_242_fluoride_flibe>,
        <liquid:depleted_leb_248_fluoride_flibe>,
        <liquid:depleted_lecf_249_fluoride_flibe>,
        <liquid:depleted_lecf_251_fluoride_flibe>,
        <liquid:depleted_lecm_243_fluoride_flibe>,
        <liquid:depleted_lecm_245_fluoride_flibe>,
        <liquid:depleted_lecm_247_fluoride_flibe>,
        <liquid:depleted_len_236_fluoride_flibe>,
        <liquid:depleted_lep_239_fluoride_flibe>,
        <liquid:depleted_lep_241_fluoride_flibe>,
        <liquid:depleted_leu_233_fluoride_flibe>,
        <liquid:depleted_leu_235_fluoride_flibe>,
        <liquid:depleted_mix_239_fluoride_flibe>,
        <liquid:depleted_mix_241_fluoride_flibe>,
        <liquid:depleted_tbu_fluoride_flibe>,
        <liquid:flibe>,
        <liquid:hea_242_fluoride_flibe>,
        <liquid:heb_248_fluoride_flibe>,
        <liquid:hecf_249_fluoride_flibe>,
        <liquid:hecf_251_fluoride_flibe>,
        <liquid:hecm_243_fluoride_flibe>,
        <liquid:hecm_245_fluoride_flibe>,
        <liquid:hecm_247_fluoride_flibe>,
        <liquid:hen_236_fluoride_flibe>,
        <liquid:hep_239_fluoride_flibe>,
        <liquid:hep_241_fluoride_flibe>,
        <liquid:heu_233_fluoride_flibe>,
        <liquid:heu_235_fluoride_flibe>,
        <liquid:lea_242_fluoride_flibe>,
        <liquid:leb_248_fluoride_flibe>,
        <liquid:lecf_249_fluoride_flibe>,
        <liquid:lecf_251_fluoride_flibe>,
        <liquid:lecm_243_fluoride_flibe>,
        <liquid:lecm_245_fluoride_flibe>,
        <liquid:lecm_247_fluoride_flibe>,
        <liquid:len_236_fluoride_flibe>,
        <liquid:lep_239_fluoride_flibe>,
        <liquid:lep_241_fluoride_flibe>,
        <liquid:leu_233_fluoride_flibe>,
        <liquid:leu_235_fluoride_flibe>,
        <liquid:mix_239_fluoride_flibe>,
        <liquid:mix_241_fluoride_flibe>,
        <liquid:tbu_fluoride_flibe>
    ] as ILiquidStack[];
    
    for liquid in salts {
        if (!(liquid.name has "depleted")) {
            mods.nuclearcraft.SaltMixer.removeRecipeWithOutput(liquid*72);
        }

        if (liquid.name != "flibe") {
            mods.nuclearcraft.Centrifuge.removeRecipeWithInput(liquid*72);
        }

        mods.jei.JEI.hide(liquid);
    }
    scripts.main.erase(<nuclearcraft:condenser_controller>);

    // Carbides
    val carbidePellets = [
        <nuclearcraft:pellet_thorium:1>,
        <nuclearcraft:pellet_uranium:1>,
        <nuclearcraft:pellet_uranium:3>,
        <nuclearcraft:pellet_uranium:5>,
        <nuclearcraft:pellet_uranium:7>,
        <nuclearcraft:pellet_neptunium:1>,
        <nuclearcraft:pellet_neptunium:3>,
        <nuclearcraft:pellet_plutonium:1>,
        <nuclearcraft:pellet_plutonium:3>,
        <nuclearcraft:pellet_plutonium:5>,
        <nuclearcraft:pellet_plutonium:7>,
        <nuclearcraft:pellet_mixed:1>,
        <nuclearcraft:pellet_mixed:3>,
        <nuclearcraft:pellet_americium:1>,
        <nuclearcraft:pellet_americium:3>,
        <nuclearcraft:pellet_curium:1>,
        <nuclearcraft:pellet_curium:3>,
        <nuclearcraft:pellet_curium:5>,
        <nuclearcraft:pellet_curium:7>,
        <nuclearcraft:pellet_curium:9>,
        <nuclearcraft:pellet_curium:11>,
        <nuclearcraft:pellet_berkelium:1>,
        <nuclearcraft:pellet_berkelium:3>,
        <nuclearcraft:pellet_californium:1>,
        <nuclearcraft:pellet_californium:3>,
        <nuclearcraft:pellet_californium:5>,
        <nuclearcraft:pellet_californium:7>,
        <qmd:pellet_copernicium:1>
    ] as IItemStack[];
    
    for carbide in carbidePellets {
        mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(carbide);
        mods.nuclearcraft.Separator.removeRecipeWithInput(carbide);
        scripts.main.erase(carbide);
    }

    val decayableCarbides = [
        <nuclearcraft:neptunium:6>,
        <nuclearcraft:plutonium:6>,
        <nuclearcraft:plutonium:11>,
        <nuclearcraft:plutonium:16>,
        <nuclearcraft:americium:1>,
        <nuclearcraft:americium:11>,
        <nuclearcraft:curium:1>,
        <nuclearcraft:curium:6>,
        <nuclearcraft:curium:11>,
        <nuclearcraft:curium:16>,
        <nuclearcraft:berkelium:1>,
        <nuclearcraft:californium:1>,
        <nuclearcraft:californium:6>,
        <nuclearcraft:californium:11>
    ] as IItemStack[];

    for carbide in decayableCarbides {
        mods.nuclearcraft.DecayHastener.removeRecipeWithInput(carbide);
    }

    val carbideIsotopes = [
        <nuclearcraft:uranium:1>,
        <nuclearcraft:uranium:6>,
        <nuclearcraft:uranium:11>,
        <nuclearcraft:neptunium:1>,
        <nuclearcraft:neptunium:6>,
        <nuclearcraft:plutonium:1>,
        <nuclearcraft:plutonium:6>,
        <nuclearcraft:plutonium:11>,
        <nuclearcraft:plutonium:16>,
        <nuclearcraft:americium:1>,
        <nuclearcraft:americium:6>,
        <nuclearcraft:americium:11>,
        <nuclearcraft:curium:1>,
        <nuclearcraft:curium:6>,
        <nuclearcraft:curium:11>,
        <nuclearcraft:curium:16>,
        <nuclearcraft:berkelium:1>,
        <nuclearcraft:berkelium:6>,
        <nuclearcraft:californium:1>,
        <nuclearcraft:californium:6>,
        <nuclearcraft:californium:11>,
        <nuclearcraft:californium:16>,
        <qmd:copernicium:1>
    ] as IItemStack[];

    for carbide in carbideIsotopes {
        mods.nuclearcraft.AlloyFurnace.removeRecipeWithOutput(carbide);
        mods.nuclearcraft.Separator.removeRecipeWithInput(carbide);
        scripts.main.erase(carbide);
    }

// Removing molten fuels
val moltenDepletedFuels = [
    <liquid:depleted_hea_242>,
    <liquid:depleted_hea_242_fluoride>,
    <liquid:depleted_heb_248>,
    <liquid:depleted_heb_248_fluoride>,
    <liquid:depleted_hecf_249>,
    <liquid:depleted_hecf_249_fluoride>,
    <liquid:depleted_hecf_251>,
    <liquid:depleted_hecf_251_fluoride>,
    <liquid:depleted_hecm_243>,
    <liquid:depleted_hecm_243_fluoride>,
    <liquid:depleted_hecm_245>,
    <liquid:depleted_hecm_245_fluoride>,
    <liquid:depleted_hecm_247>,
    <liquid:depleted_hecm_247_fluoride>,
    <liquid:depleted_hen_236>,
    <liquid:depleted_hen_236_fluoride>,
    <liquid:depleted_hep_239>,
    <liquid:depleted_hep_239_fluoride>,
    <liquid:depleted_hep_241>,
    <liquid:depleted_hep_241_fluoride>,
    <liquid:depleted_heu_233>,
    <liquid:depleted_heu_233_fluoride>,
    <liquid:depleted_heu_235>,
    <liquid:depleted_heu_235_fluoride>,
    <liquid:depleted_lea_242>,
    <liquid:depleted_lea_242_fluoride>,
    <liquid:depleted_leb_248>,
    <liquid:depleted_leb_248_fluoride>,
    <liquid:depleted_lecf_249>,
    <liquid:depleted_lecf_249_fluoride>,
    <liquid:depleted_lecf_251>,
    <liquid:depleted_lecf_251_fluoride>,
    <liquid:depleted_lecm_243>,
    <liquid:depleted_lecm_243_fluoride>,
    <liquid:depleted_lecm_245>,
    <liquid:depleted_lecm_245_fluoride>,
    <liquid:depleted_lecm_247>,
    <liquid:depleted_lecm_247_fluoride>,
    <liquid:depleted_len_236>,
    <liquid:depleted_len_236_fluoride>,
    <liquid:depleted_lep_239>,
    <liquid:depleted_lep_239_fluoride>,
    <liquid:depleted_lep_241>,
    <liquid:depleted_lep_241_fluoride>,
    <liquid:depleted_leu_233>,
    <liquid:depleted_leu_233_fluoride>,
    <liquid:depleted_leu_235>,
    <liquid:depleted_leu_235_fluoride>,
    <liquid:depleted_mix_239>,
    <liquid:depleted_mix_239_fluoride>,
    <liquid:depleted_mix_241>,
    <liquid:depleted_mix_241_fluoride>,
    <liquid:depleted_tbu>,
    <liquid:depleted_tbu_fluoride>
] as ILiquidStack[];

for liquid in moltenDepletedFuels {
    print(liquid.name);
    if (liquid.name has "fluoride") {
        mods.nuclearcraft.Electrolyzer.removeRecipeWithInput(liquid*72);
    } else {
        mods.nuclearcraft.Centrifuge.removeRecipeWithInput(liquid*144);
    }

    mods.jei.JEI.hide(liquid);
}

val moltenFuels = [
    <liquid:hea_242>,
    <liquid:hea_242_fluoride>,
    <liquid:heb_248>,
    <liquid:heb_248_fluoride>,
    <liquid:hecf_249>,
    <liquid:hecf_249_fluoride>,
    <liquid:hecf_251>,
    <liquid:hecf_251_fluoride>,
    <liquid:hecm_243>,
    <liquid:hecm_243_fluoride>,
    <liquid:hecm_245>,
    <liquid:hecm_245_fluoride>,
    <liquid:hecm_247>,
    <liquid:hecm_247_fluoride>,
    <liquid:hen_236>,
    <liquid:hen_236_fluoride>,
    <liquid:hep_239>,
    <liquid:hep_239_fluoride>,
    <liquid:hep_241>,
    <liquid:hep_241_fluoride>,
    <liquid:heu_233>,
    <liquid:heu_233_fluoride>,
    <liquid:heu_235>,
    <liquid:heu_235_fluoride>,
    <liquid:lea_242>,
    <liquid:lea_242_fluoride>,
    <liquid:leb_248>,
    <liquid:leb_248_fluoride>,
    <liquid:lecf_249>,
    <liquid:lecf_249_fluoride>,
    <liquid:lecf_251>,
    <liquid:lecf_251_fluoride>,
    <liquid:lecm_243>,
    <liquid:lecm_243_fluoride>,
    <liquid:lecm_245>,
    <liquid:lecm_245_fluoride>,
    <liquid:lecm_247>,
    <liquid:lecm_247_fluoride>,
    <liquid:len_236>,
    <liquid:len_236_fluoride>,
    <liquid:lep_239>,
    <liquid:lep_239_fluoride>,
    <liquid:lep_241>,
    <liquid:lep_241_fluoride>,
    <liquid:leu_233>,
    <liquid:leu_233_fluoride>,
    <liquid:leu_235>,
    <liquid:leu_235_fluoride>,
    <liquid:mix_239>,
    <liquid:mix_239_fluoride>,
    <liquid:mix_241>,
    <liquid:mix_241_fluoride>,
    <liquid:tbu>,
    <liquid:tbu_fluoride>
] as ILiquidStack[];

for liquid in moltenFuels {
    if (!(liquid.name has "fluoride")) {
        mods.nuclearcraft.IngotFormer.removeRecipeWithInput(liquid*144);
        mods.nuclearcraft.Melter.removeRecipeWithOutput(liquid*144);

        if (!(liquid.name == "mix_239" || liquid.name == "tbu" || liquid.name == "mix_241")) {
            if (liquid.name.substring(0, 1) == "h") {  // Separates heavy liquids for appropriate recipe
                mods.nuclearcraft.SaltMixer.removeRecipeWithOutput(liquid*64);
            } else {
                mods.nuclearcraft.SaltMixer.removeRecipeWithOutput(liquid*144);
            }
        }

        if (!(liquid.name == "tbu")) {
            mods.nuclearcraft.Centrifuge.removeRecipeWithInput(liquid*144);
        }

    } else {
        mods.nuclearcraft.ChemicalReactor.removeRecipeWithOutput(liquid*72, null);
        mods.nuclearcraft.Electrolyzer.removeRecipeWithInput(liquid*72);
    }
}

// Zirconium recipes
recipes.addShaped(<nuclearcraft:part:10>, [
    [<immersiveengineering:metal:32>, <immersiveengineering:metal:38>, <immersiveengineering:metal:32>],
    [<opencomputers:material:11>, <nuclearcraft:ingot_block:10>, <opencomputers:material:11>],
    [<immersiveengineering:metal:32>, <immersiveengineering:metal:38>, <immersiveengineering:metal:32>]
]);

recipes.remove(<nuclearcraft:upgrade:1>);
recipes.addShaped(<nuclearcraft:upgrade:1> * 2, [
    [<thermalfoundation:material:770>, <nuclearcraft:ingot:10>, <thermalfoundation:material:770>],
    [<nuclearcraft:gem_dust:2>, <immersiveengineering:metal:40>, <nuclearcraft:gem_dust:2>],
    [<thermalfoundation:material:770>, <nuclearcraft:ingot:10>, <thermalfoundation:material:770>]
]);

recipes.remove(<nuclearcraft:upgrade>);
recipes.addShaped(<nuclearcraft:upgrade> * 2, [
    [<pneumaticcraft:plastic:4>, <nuclearcraft:ingot:10>, <pneumaticcraft:plastic:4>],
    [<thermalfoundation:material:515>, <immersiveengineering:metal:39>, <thermalfoundation:material:515>],
    [<pneumaticcraft:plastic:4>, <nuclearcraft:ingot:10>, <pneumaticcraft:plastic:4>]
]);

mods.astralsorcery.Altar.removeAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3");
mods.astralsorcery.Altar.addAttunementAltarRecipe("astralsorcery:shaped/internal/altar/upgrade_tier3", <astralsorcery:blockaltar:2>, 1600, 1600, [
    <astralsorcery:itemcraftingcomponent>, <ore:ingotNeptunium237All>, <astralsorcery:itemcraftingcomponent>,
    <astralsorcery:blockmarble:4>, <astralsorcery:itemrockcrystalsimple> | <astralsorcery:itemcelestialcrystal>, <astralsorcery:blockmarble:4>,
    <astralsorcery:blockmarble:2>, <astralsorcery:itemcraftingcomponent:1>, <astralsorcery:blockmarble:2>,
    <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:itemcraftingcomponent:2>, <astralsorcery:blockmarble:4>, <astralsorcery:blockmarble:4>
]);