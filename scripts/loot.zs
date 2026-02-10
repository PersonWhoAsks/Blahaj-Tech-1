#ikwid
import loottweaker.LootTweaker;
import loottweaker.LootTable;
import loottweaker.LootPool;

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

val chests = {
    "minecraft:chests/end_city_treasure" : "main",
    "minecraft:chests/village_blacksmith" : "main",
    "minecraft:chests/abandoned_mineshaft" : "main",
    "minecraft:chests/nether_bridge" : "main",
    "minecraft:chests/stronghold_crossing" : "main",
    "minecraft:chests/stronghold_corridor" : "main",
    "minecraft:chests/igloo_chest" : "main",
    "minecraft:chests/woodland_mansion" : "main",
    "minecraft:chests/spawn_bonus_chest" : "pool1",
    "immersiveengineering:chests/engineers_house" : "immersiveengineering:engineers_village_house_2"
} as string[string];

for table, pool in chests {
    val chest = LootTweaker.getTable(table).getPool(pool);
    for item in items {
        chest.removeEntry(item);
    }
}