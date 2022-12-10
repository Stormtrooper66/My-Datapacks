recipe take @s stormworks:star_core_leggings
advancement revoke @s only stormworks:crafting/star_core_leggings
clear @s minecraft:knowledge_book

execute if entity @s[level=..29] run give @s netherite_ingot 2
execute if entity @s[level=..29] run give @s netherite_leggings 1
execute if entity @s[level=..29] run give @s echo_shard 1
execute if entity @s[level=..29] run give @s leather 2
execute if entity @s[level=..29] run give @s ender_eye 1
execute if entity @s[level=..29] run clear @s gunpowder 2
execute if entity @s[level=..29] run tellraw @s ["",{"text": "Not enough levels. You need at least 30 XP levels","color": "red"}]

execute if entity @s[level=30..] run give @s minecraft:netherite_leggings{CustomModelData:6160008,display:{Name:'{"text":"Star Core Leggings"}',Lore:['{"text":"Imbued with an Echo Shard"}','{"text":"and padded with leather, "}','{"text":"these leggings greatly increase"}','{"text":"your speed when sneaking"}']},Enchantments:[{id:"swift_sneak",lvl:4}],AttributeModifiers:[{Slot:"legs",AttributeName:"generic.movement_speed", Name:"generic.movement_speed", Amount:0.2,Operation:1,UUID:[I; -110020,100020,-15000020,200020]},{Slot:"legs",AttributeName:"generic.armor",Name:"generic.armor",Amount:6,Operation:0,UUID:[I;-110024,100024,-15000024,200024]},{Slot:"legs",AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:3,Operation:0,UUID:[I;-110025,100025,-15000025,200025]},{Slot:"legs",AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-110023,100023,-15000023,200023]}]} 1


execute if entity @s[level=30..] run xp add @s -30 levels

