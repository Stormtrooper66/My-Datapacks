
summon minecraft:zombie ~ ~ ~ {Tags:[spawnChecked],CustomName:'[{"text":"Boss Zombie"}]',CustomNameVisible:0b,Health:50,PersistenceRequired:1b,HandItems:[{id:"diamond_sword",Count:1,tag:{Enchantments:[{id:"sharpness",lvl:5},{id:"fire_aspect",lvl:2}]}}],HandDropChances:[0.00f],ArmorItems:[{id:"diamond_boots",Count:1},{id:"diamond_leggings",Count:1},{id:"netherite_chestplate",Count:1},{id:"diamond_helmet",Count:1}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.max_health",Base:50d},{Name:"generic.movement_speed",Base:0.25d}]}



summon minecraft:zombie ~1.5 ~ ~1.5 {Tags:[spawnChecked]}
summon minecraft:zombie ~1.5 ~ ~ {Tags:[spawnChecked]}
summon minecraft:zombie ~1.5 ~ ~-1.5 {Tags:[spawnChecked]}
summon minecraft:zombie ~ ~ ~1.5 {Tags:[spawnChecked]}
summon minecraft:zombie ~ ~ ~-1.5 {Tags:[spawnChecked]}
summon minecraft:zombie ~-1.5 ~ ~1.5 {Tags:[spawnChecked]}
summon minecraft:zombie ~-1.5 ~ ~ {Tags:[spawnChecked]}
summon minecraft:zombie ~-1.5 ~ ~-1.5 {Tags:[spawnChecked]}



data modify entity @s Health set value 0f
data modify entity @s DeathTime set value 19