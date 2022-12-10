tag @e[nbt={Item:{Count:1b,tag:{CustomModelData:6160001}}}] add TPpowder

execute store success score #bool powderCheck run scoreboard players add @e[tag=TPpowder] TP 1
execute if score #bool powderCheck matches 1..2147483647 run data merge entity @e[scores={TP=1},limit=1] {PickupDelay:1000000}
execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=1..}] run particle cloud ~ ~0.1 ~ 0 0 0 0.01 1
execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=20..}] run particle cloud ~ ~0.1 ~ 0 0 0 0.05 5
execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=50..}] run particle cloud ~ ~0.1 ~ 0 0 0 0.1 10
execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=100..}] run function stormworks:control_functions/tp_powder/stored_teleport

execute if score #bool powderCheck matches 1..2147483647 run kill @e[scores={TP=101..}]

execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=1}] run playsound item.elytra.flying player @a[distance=..2] ~ ~ ~
execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=1..}] run playsound item.elytra.flying player @a[distance=..2,tag=!TP_sound] ~ ~ ~
execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=1..}] run tag @a[distance=..2] add TP_sound

execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=1..}] run stopsound @a[distance=2..5,tag=TP_sound] player item.elytra.flying
execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=1..}] run tag @a[distance=2..5] remove TP_sound

execute if score #bool powderCheck matches 1..2147483647 run execute at @e[scores={TP=99}] run stopsound @a[distance=..2] player item.elytra.flying