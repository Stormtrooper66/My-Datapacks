##This checks if any blocks havn't been checked yet, and then checks them all to generate any modified terrain
##This is the more friendly version. AKA it runs much slower and will never check more than one chunk per tick.


## 16 * ((21/2)-1) = 160
##check if there is new area to load
execute unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck] unless block ~ -64 ~ white_wool unless block ~ -64 ~ black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
execute unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck] unless block ~160 -64 ~160 white_wool unless block ~160 -64 ~160 black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
execute unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck] unless block ~-160 -64 ~160 white_wool unless block ~-160 -64 ~160 black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
execute unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck] unless block ~160 -64 ~-160 white_wool unless block ~160 -64 ~-160 black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
execute unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck] unless block ~-160 -64 ~-160 white_wool unless block ~-160 -64 ~-160 black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
##if area is found, start the zone tracker
scoreboard players add @e[type=area_effect_cloud,tag=newChunkCheck,tag=!chunckCheckActive] chunkCheckx 21
scoreboard players add @e[type=area_effect_cloud,tag=newChunkCheck,tag=!chunckCheckActive] chunkCheckz 21
tag @e[type=area_effect_cloud,tag=newChunkCheck,tag=!chunckCheckActive] add chunckCheckActive

##tracker movement loop

##it's like a for loop
##for loop inner done with x coord
execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] if score @s chunkCheckx matches 1.. at @s positioned ~ ~ ~ unless block ~ -64 ~ white_wool unless block ~ -64 ~ black_wool run summon area_effect_cloud ~ ~ ~ {Tags:["check_chunk"]}
execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] if score @s chunkCheckx matches 1.. at @s run tp @s ~-16 ~ ~
execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] if score @s chunkCheckx matches 1.. run scoreboard players remove @s chunkCheckx 1
##for loop outer done with z
execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] if score @s chunkCheckz matches 1.. if score @s chunkCheckx matches 0 at @s run tp @s ~336 ~ ~-16
execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] if score @s chunkCheckz matches 1.. if score @s chunkCheckx matches 0 run scoreboard players remove @s chunkCheckz 1
execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] if score @s chunkCheckz matches 1.. if score @s chunkCheckx matches 0 run scoreboard players add @s chunkCheckx 21

##when the loop is done, delete the tracker
execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] if score @s chunkCheckz matches 0 run kill @s

##generate stuff in any flagged chunks
execute as @e[tag=check_chunk] run function stormworks:structures_functions/chunk_align
kill @e[tag=check_chunk]

##lag check in to make sure there isn't more than 1 going in the same area
execute store result score chunkcheckdebug count if entity @e[type=area_effect_cloud,tag=newChunkCheck,distance=..200]
execute if score chunkcheckdebug count matches 5.. run say too many!
execute if score chunkcheckdebug count matches 5.. run kill @e[type=area_effect_cloud,tag=newChunkCheck,distance=..200,limit=4]