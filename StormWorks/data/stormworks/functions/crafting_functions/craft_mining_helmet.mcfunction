recipe take @s stormworks:mining_helmet
advancement revoke @s only stormworks:crafting/mining_helmet
clear @s minecraft:knowledge_book

execute if entity @s[level=..4] run give @s iron_ingot 5
execute if entity @s[level=..4] run give @s redstone_block 2
execute if entity @s[level=..4] run give @s redstone_lamp 1
execute if entity @s[level=..4] run tellraw @s ["",{"text": "Not enough levels. You need at least 5 XP levels","color": "red"}]

execute if entity @s[level=5..] run give @s minecraft:iron_helmet{CustomModelData:6160003,display:{Name:'{"text":"Miners Helm"}',Lore:['{"text":"Lets go Mining!"}','{"text":"Grants Haste and Night Vision"}']},Enchantments:[{id:"fire_protection",lvl:5},{id:"unbreaking",lvl:5}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;-110004,100004,-15000004,200004]}]} 1
execute if entity @s[level=5..] run xp add @s -5 levels
