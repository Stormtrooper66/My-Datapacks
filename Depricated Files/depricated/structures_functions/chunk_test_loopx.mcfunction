execute if score @s chunkCheckx matches 1.. at @s positioned ~ ~ ~ unless block ~ -64 ~ white_wool unless block ~ -64 ~ black_wool run summon area_effect_cloud ~ ~ ~ {Tags:["check_chunk"]}
execute if score @s chunkCheckx matches 1.. at @s run tp @s ~-16 ~ ~
execute if score @s chunkCheckx matches 1.. run scoreboard players remove @s chunkCheckx 1
