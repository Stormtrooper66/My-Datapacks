recipe take @s stormworks:dragon_wings
advancement revoke @s only stormworks:crafting/dragon_wings
clear @s minecraft:knowledge_book

execute if entity @s[level=..39] run give @s dragon_breath 1
execute if entity @s[level=..39] run give @s elytra 1
execute if entity @s[level=..39] run give @s phantom_membrane 4
execute if entity @s[level=..39] run give @s netherite_ingot 2
execute if entity @s[level=..39] run give @s ender_eye 1
execute if entity @s[level=..39] run clear @s glass_bottle 1
execute if entity @s[level=..39] run tellraw @s ["",{"text": "Not enough levels. You need at least 40 XP levels","color": "red"}]

execute if entity @s[level=40..] run give @s minecraft:elytra{CustomModelData:6160005,display:{Name:'{"text":"Dragon Wings"}',Lore:['{"text":"A wingsuit infused with"}','{"text":"the essence of a Dragon"}']},Enchantments:[{id:"unbreaking",lvl:5}],AttributeModifiers:[{Slot:"chest",AttributeName:"generic.max_health", Name:"generic.max_health", Amount:0.2,Operation:1,UUID:[I; -110011,100011,-15000011,200011]},{Slot:"chest",AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:0.2,Operation:1,UUID:[I;-110010,100010,-15000010,200010]},{Slot:"chest",AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;-110014,100014,-15000014,200014]}]} 1

execute if entity @s[level=40..] run xp add @s -40 levels

