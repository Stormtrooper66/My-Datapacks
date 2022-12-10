##skeleton 5% to spawn as Wither Skeleton

summon minecraft:wither_skeleton ~ ~ ~ {Tags:[spawnChecked],DeathLootTable:"mobstorm:night_wither_skeleton",HandItems:[{id:"minecraft:stone_sword",Count:1}]}




data modify entity @s Health set value 0f
data modify entity @s DeathTime set value 19