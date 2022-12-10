tag @e[type=zombie] add spawnedIn
tag @e[type=skeleton] add spawnedIn
tag @e[type=creeper] add spawnedIn
tag @e[type=spider] add spawnedIn
tag @e[type=husk] add spawnedIn
tag @e[type=drowned] add spawnedIn
tag @e[type=chicken] add spawnedIn
tag @e[type=iron_golem] add spawnedIn
tag @e[type=warden] add spawnedIn




##Creeper 2% to spawn as charged
execute as @e[type=creeper, tag=spawnedIn, tag=!spawnChecked] at @s if predicate mobstorm:random_chance_2 run function mobstorm:custom_mob_spawning/charged_creeper

##Spider 25% to spawn as Cave Spider when under y=32
execute as @e[type=spider, tag=spawnedIn, tag=!spawnChecked, predicate=mobstorm:height_below_y32] at @s if predicate mobstorm:random_chance_25 run function mobstorm:custom_mob_spawning/cave_spider


##Husk double HP, half speed
execute as @e[type=husk, tag=spawnedIn, tag=!spawnChecked] at @s run function mobstorm:custom_mob_spawning/husk

##Drowned 1.5x speed underwater
execute as @e[type=drowned, tag=spawnedIn, tag=!spawnChecked] at @s run function mobstorm:custom_mob_spawning/drowned


##Chicken 1.5x speed
execute as @e[type=chicken, tag=spawnedIn, tag=!spawnChecked] at @s run function mobstorm:custom_mob_spawning/chicken

##Iron Golem 1.25x speed
execute as @e[type=iron_golem, tag=spawnedIn, tag=!spawnChecked] at @s run function mobstorm:custom_mob_spawning/iron_golem

##Warden 300 Health - down from 500, E-dragon is 200
execute as @e[type=warden, tag=spawnedIn, tag=!spawnChecked] at @s run function mobstorm:custom_mob_spawning/warden


##Nighttime Spawns

##Armored Zombie + Baby Zombie 1.5x speed
execute if predicate mobstorm:is_nighttime as @e[type=zombie, tag=spawnedIn, tag=!spawnChecked] at @s run function mobstorm:custom_mob_spawning/zombie_night
##skeleton 10% to spawn as Wither Skeleton
execute if predicate mobstorm:is_nighttime as @e[type=skeleton, tag=spawnedIn, tag=!spawnChecked] at @s if predicate mobstorm:random_chance_10 run function mobstorm:custom_mob_spawning/skeleton_night


##Nighttime spawns happen Underground :)
execute if predicate mobstorm:height_below_y32 as @e[type=zombie, tag=spawnedIn, tag=!spawnChecked] at @s run function mobstorm:custom_mob_spawning/zombie_night
execute if predicate mobstorm:height_below_y32 as @e[type=skeleton, tag=spawnedIn, tag=!spawnChecked] at @s if predicate mobstorm:random_chance_10 run function mobstorm:custom_mob_spawning/skeleton_night


execute unless predicate mobstorm:is_nighttime unless predicate mobstorm:height_below_y32 as @e[type=wither_skeleton,predicate=mobstorm:in_the_overworld] run kill @s


tag @e[tag=spawnedIn, tag=!spawnChecked] add spawnChecked
