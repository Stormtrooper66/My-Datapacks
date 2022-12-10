recipe take @s stormworks:star_core_helmet
advancement revoke @s only stormworks:crafting/star_core_helmet
clear @s minecraft:knowledge_book

execute if entity @s[level=..19] run give @s netherite_ingot 2
execute if entity @s[level=..19] run give @s netherite_helmet 1
execute if entity @s[level=..19] run give @s ender_eye 1
execute if entity @s[level=..19] run give @s prismarine_shard 2
execute if entity @s[level=..19] run give @s prismarine_crystals 2
execute if entity @s[level=..19] run give @s conduit 1
execute if entity @s[level=..19] run tellraw @s ["",{"text": "Not enough levels. You need at least 20 XP levels","color": "red"}]

execute if entity @s[level=20..] run give @s minecraft:netherite_helmet{CustomModelData:6160006,display:{Name:'{"text":"Star Core Helmet"}',Lore:['{"text":"Imbued with a conduit,"}','{"text":"this helmet gives allows"}','{"text":"you to conserve your breath"}','{"text":"underwater for a very long time"}']},Enchantments:[{id:"respiration",lvl:5},{id:"aqua_affinity",lvl:1}],AttributeModifiers:[{Slot:"head",AttributeName:"generic.armor",Name:"generic.armor",Amount:3,Operation:0,UUID:[I;-110004,100004,-15000004,200004]},{Slot:"head",AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-110005,100005,-15000005,200005]},{Slot:"head",AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.3,Operation:0,UUID:[I;-110003,100003,-15000003,200003]}]} 1


execute if entity @s[level=20..] run xp add @s -20 levels

