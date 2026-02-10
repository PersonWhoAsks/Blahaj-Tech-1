//      This code filters entity drops to prevent blacklisted
//      items in "items" list from being dropped by entities.

import crafttweaker.item.IItemStack;
import crafttweaker.item.IItemDefinition;
import crafttweaker.events.IEventManager;
import crafttweaker.event.EntityLivingDeathDropsEvent;
import crafttweaker.entity.IEntityItem;

val items = [
    "minecraft:golden_sword",
    "minecraft:diamond_sword",
    "minecraft:stone_sword",
    "minecraft:wooden_sword",
    "minecraft:iron_sword",
    "immersiveengineering:sword_steel",
    "minecraft:iron_shovel",
    "minecraft:wooden_shovel",
    "minecraft:stone_shovel",
    "minecraft:diamond_shovel",
    "minecraft:golden_shovel",
    "immersiveengineering:shovel_steel",
    "minecraft:iron_pickaxe",
    "minecraft:wooden_pickaxe",
    "minecraft:stone_pickaxe",
    "minecraft:diamond_pickaxe",
    "minecraft:golden_pickaxe",
    "immersiveengineering:pickaxe_steel",
    "minecraft:iron_axe",
    "minecraft:wooden_axe",
    "minecraft:stone_axe",
    "minecraft:diamond_axe",
    "minecraft:golden_axe",
    "immersiveengineering:axe_steel",
    "minecraft:wooden_hoe",
    "minecraft:stone_hoe",
    "minecraft:iron_hoe",
    "minecraft:diamond_hoe",
    "minecraft:golden_hoe",
    "immersiveengineering:hoe_steel"
] as string[];

events.onEntityLivingDeathDrops(function (event as EntityLivingDeathDropsEvent) {
    var newDrops = [] as IEntityItem[];
    
    for drop in event.drops {
        if (!isNull(drop)) {
            if (!isNull(drop.item)) {
                if (!(items has drop.item.definition.id)) {
                    newDrops += drop;
                }
            } else {
                newDrops += drop;
            }
        }
    }
    
    event.drops = newDrops;
});