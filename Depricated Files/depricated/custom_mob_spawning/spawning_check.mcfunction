tag @e[type=zombie] add spawnedIn


execute as @e[tag=spawnedIn, tag=!spawnChecked, type=zombie] at @s if predicate stormworks:random_chance_1 run function stormworks:control_functions/custom_mob_spawning/super_zombie

tag @e[tag=spawnedIn] add spawnChecked

