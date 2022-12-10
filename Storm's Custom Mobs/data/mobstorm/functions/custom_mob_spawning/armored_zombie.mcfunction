##Armored Zombie:     70% Leather,  25% Iron, 5% Diamond

##Diamond armor variant
execute if predicate mobstorm:random_chance_5 run data merge entity @s {Tags:[Armored_Zombie],ArmorItems:[{id:"diamond_boots",Count:1},{id:"diamond_leggings",Count:1},{id:"diamond_chestplate",Count:1},{id:"diamond_helmet",Count:1}],ArmorDropChances:[0.05f,0.05f,0.05f,0.05f]}

##Iron armor variant, its effectively a 23.75% chance but whatever
execute if predicate mobstorm:random_chance_25 run data merge entity @s[tag=!Armored_Zombie] {Tags:[Armored_Zombie],ArmorItems:[{id:"iron_boots",Count:1},{id:"iron_leggings",Count:1},{id:"iron_chestplate",Count:1},{id:"iron_helmet",Count:1}],ArmorDropChances:[0.05f,0.05f,0.05f,0.05f]}


##The rest are Leather armor
data merge entity @s[tag=!Armored_Zombie] {ArmorItems:[{id:"leather_boots",Count:1},{id:"leather_leggings",Count:1},{id:"leather_chestplate",Count:1},{id:"leather_helmet",Count:1}],ArmorDropChances:[0.05f,0.05f,0.05f,0.05f]}

