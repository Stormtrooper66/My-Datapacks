execute store result score x math run data get entity @s Pos[0]
execute store result score z math run data get entity @s Pos[2]

scoreboard players operation #x math = x math
scoreboard players operation #z math = z math
scoreboard players operation #x math %= #16 constant
scoreboard players operation #z math %= #16 constant
summon area_effect_cloud ~ ~ ~ {Tags:["chunk_align"]}

execute store result entity @e[type=area_effect_cloud,tag=chunk_align,limit=1] Pos[0] double 1 run scoreboard players operation x math -= #x math

execute store result entity @e[type=area_effect_cloud,tag=chunk_align,limit=1] Pos[2] double 1 run scoreboard players operation z math -= #z math


execute at @e[tag=chunk_align] run function stormworks:structures_functions/set_chunk

kill @e[type=area_effect_cloud,tag=chunk_align]
