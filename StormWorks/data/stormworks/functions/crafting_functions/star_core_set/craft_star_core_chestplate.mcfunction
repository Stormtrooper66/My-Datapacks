recipe take @s stormworks:star_core_chestplate
advancement revoke @s only stormworks:crafting/star_core_chestplate
clear @s minecraft:knowledge_book

execute if entity @s[level=..39] run give @s dragon_breath 1
execute if entity @s[level=..39] run give @s netherite_chestplate 1
execute if entity @s[level=..39] run give @s nether_star 1
execute if entity @s[level=..39] run give @s netherite_ingot 4
execute if entity @s[level=..39] run give @s golden_apple 2
execute if entity @s[level=..39] run clear @s glass_bottle 1
execute if entity @s[level=..39] run tellraw @s ["",{"text": "Not enough levels. You need at least 40 XP levels","color": "red"}]

execute if entity @s[level=40..] run give @s minecraft:netherite_chestplate{CustomModelData:6160007,display:{Name:'{"text":"Star Core Chestplate"}',Lore:['{"text":"Imbued with the heart"}','{"text":"of the Wither, this chestplate"}','{"text":"gives a tremendous boost"}','{"text":"to your health"}']},Enchantments:[{id:"unbreaking",lvl:4}],AttributeModifiers:[{Slot:"chest",AttributeName:"generic.max_health", Name:"generic.max_health", Amount:1,Operation:1,UUID:[I; -110011,100011,-15000011,200011]},{Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;-110014,100014,-15000014,200014]},{Slot:"chest",AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-110015,100015,-15000015,200015]},{Slot:"chest",AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-110013,100013,-15000013,200013]}]} 1


execute if entity @s[level=40..] run xp add @s -40 levels

