##Armored Zombie + Baby Zombie 1.5x speed

data merge entity @s {Tags:[spawnChecked]}

##Base baby zombie is 0.23*1.5, with a overall speed of 0.345, target speed is 0.5, which is 1.45x speed
execute if data entity @s IsBaby run data merge entity @s {Tags:[spawnChecked],Attributes:[{"Base":0.335d,Name:"minecraft:generic.movement_speed"}]}

##Armored Zombies spawn 25% of the time when it's Nighttime
execute if predicate mobstorm:random_chance_25 as @s run function mobstorm:custom_mob_spawning/armored_zombie

