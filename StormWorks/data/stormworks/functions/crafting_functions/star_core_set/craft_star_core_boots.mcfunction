recipe take @s stormworks:star_core_boots
advancement revoke @s only stormworks:crafting/star_core_boots
clear @s minecraft:knowledge_book

execute if entity @s[level=..29] run give @s netherite_ingot 2
execute if entity @s[level=..29] run give @s netherite_boots 1
execute if entity @s[level=..29] run give @s ender_eye 1
execute if entity @s[level=..29] run give @s feather 2
execute if entity @s[level=..29] run give @s wither_skeleton_skull 2
execute if entity @s[level=..29] run clear @s phantom_membrane 1
execute if entity @s[level=..29] run tellraw @s ["",{"text": "Not enough levels. You need at least 30 XP levels","color": "red"}]

execute if entity @s[level=30..] run give @s minecraft:netherite_boots{CustomModelData:6160009,display:{Name:'{"text":"Star Core Boots"}',Lore:['{"text":"Imbued with the heads of"}','{"text":"Wither Skeletons, these boots"}','{"text":"give a large boost to"}','{"text":"movement while on soul sand"}']},Enchantments:[{id:"feather_falling",lvl:5},{id:"soul_speed",lvl:4}],AttributeModifiers:[{Slot:"feet",AttributeName:"generic.movement_speed", Name:"generic.movement_speed", Amount:0.2,Operation:1,UUID:[I;-110030,100030,-15000030,200030]},{Slot:"feet",AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUID:[I;-110034,100034,-15000034,200034]},{Slot:"feet",AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-110035,100035,-15000035,200035]},{Slot:"feet",AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-110033,100033,-15000033,200033]}]} 1



execute if entity @s[level=30..] run xp add @s -30 levels

