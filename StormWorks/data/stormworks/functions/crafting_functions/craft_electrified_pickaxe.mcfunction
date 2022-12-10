recipe take @s stormworks:electrified_pickaxe
advancement revoke @s only stormworks:crafting/electrified_pickaxe
clear @s minecraft:knowledge_book

execute if entity @s[level=..14] run give @s iron_block 2
execute if entity @s[level=..14] run give @s redstone_block 1
execute if entity @s[level=..14] run give @s diamond_block 2
execute if entity @s[level=..14] run give @s netherite_ingot 2
execute if entity @s[level=..14] run tellraw @s ["",{"text": "Not enough levels. You need at least 15 XP levels","color": "red"}]

execute if entity @s[level=15..] run give @s minecraft:netherite_pickaxe{CustomModelData:6160004,display:{Name:'{"text":"Electrified Pickaxe"}',Lore:['{"text":"Utilizing a redstone core,"}','{"text":"this pickaxe cracks through rocks"}','{"text":"faster than previously thought possible"}']},Enchantments:[{id:"efficiency",lvl:8}]} 1
execute if entity @s[level=15..] run xp add @s -15 levels