##This checks if any blocks havn't been checked yet, and then checks them all to generate any modified terrain
##This is the less friendly version. AKA it runs much faster and will check more than one chunk per tick. (Currently checks 11 chunks per tick)




## 16 * ((21/2)-1) = 160
##check if there is new area to load
execute if entity @e[type=area_effect_cloud,tag=SafetyCheck] unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck,distance=..500] unless block ~ -64 ~ white_wool unless block ~ -64 ~ black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
execute if entity @e[type=area_effect_cloud,tag=SafetyCheck] unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck,distance=..500] unless block ~160 -64 ~160 white_wool unless block ~160 -64 ~160 black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
execute if entity @e[type=area_effect_cloud,tag=SafetyCheck] unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck,distance=..500] unless block ~-160 -64 ~160 white_wool unless block ~-160 -64 ~160 black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
execute if entity @e[type=area_effect_cloud,tag=SafetyCheck] unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck,distance=..500] unless block ~160 -64 ~-160 white_wool unless block ~160 -64 ~-160 black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}
execute if entity @e[type=area_effect_cloud,tag=SafetyCheck] unless predicate stormworks:in_the_end unless entity @e[type=area_effect_cloud,tag=newChunkCheck,distance=..500] unless block ~-160 -64 ~-160 white_wool unless block ~-160 -64 ~-160 black_wool run summon area_effect_cloud ~160 -64 ~160 {Tags:[newChunkCheck],Duration:1000,NoGravity:true}



##make sure it doesn't try to spawn more than one, if they stack up you end up with the same chunk being checked like 500 times, and it makes a 0.0025 probability become like 0.5
execute as @e[type=area_effect_cloud,tag=newChunkCheck] if entity @e[type=area_effect_cloud,tag=newChunkCheck,distance=..5] run kill @s

##if area is found, start the zone tracker
scoreboard players add @e[type=area_effect_cloud,tag=newChunkCheck,tag=!chunckCheckActive] chunkCheckx 21
scoreboard players add @e[type=area_effect_cloud,tag=newChunkCheck,tag=!chunckCheckActive] chunkCheckz 21
tag @e[type=area_effect_cloud,tag=newChunkCheck,tag=!chunckCheckActive] add chunckCheckActive

##lag check in to make sure there isn't more than 1 going in the same area
execute store result score chunkcheckdebug count if entity @e[type=area_effect_cloud,tag=newChunkCheck,distance=..500]
##execute if score chunkcheckdebug count matches 2.. run say too many!
execute if score chunkcheckdebug count matches 2.. run kill @e[type=area_effect_cloud,tag=newChunkCheck,distance=..500]

##tracker movement loop

##it's like a for loop
##for loop inner done with x coord

execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] run function stormworks:structures_functions/chunk_test_faster_loop

##for loop outer done with z

execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] run function stormworks:structures_functions/chunk_test_loopz


##when the loop is done, delete the tracker
execute as @e[type=area_effect_cloud,tag=newChunkCheck,tag=chunckCheckActive] if score @s chunkCheckz matches 0 run kill @s

##generate stuff in any flagged chunks
execute as @e[tag=check_chunk] run function stormworks:structures_functions/chunk_align
kill @e[tag=check_chunk]

##helps make sure when you load a new area it is able to do the full cycle before trying to start loading in stuff. keeps the probabilities consistant that way.
##this way, when there is bad lag, it should only be able to run the full cycle once it clears up
summon area_effect_cloud ~ ~ ~ {Tags:[SafetyCheck],Duration:2}

