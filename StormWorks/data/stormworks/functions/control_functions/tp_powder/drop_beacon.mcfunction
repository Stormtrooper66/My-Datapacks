tag @e[nbt={Item:{Count:1b,tag:{CustomModelData:6160002}}}] add TPBeacon

execute store success score #bool beaconCheck run scoreboard players add @e[tag=TPBeacon] Beacontime 1
execute if score #bool beaconCheck matches 1..2147483647 run data merge entity @e[scores={Beacontime=1},limit=1] {PickupDelay:1000000}
execute if score #bool beaconCheck matches 1..2147483647 run execute at @e[scores={Beacontime=1..}] run particle cloud ~ ~0.1 ~ 0 0 0 0.01 1
execute if score #bool beaconCheck matches 1..2147483647 run execute at @e[scores={Beacontime=50..}] run particle cloud ~ ~0.1 ~ 0 0 0 0.05 5
execute if score #bool beaconCheck matches 1..2147483647 run execute at @e[scores={Beacontime=100..}] run particle soul_fire_flame ~ ~0.1 ~ 0 0 0 0.05 5
execute if score #bool beaconCheck matches 1..2147483647 run execute at @e[scores={Beacontime=150..}] run particle soul_fire_flame ~ ~0.1 ~ 0 0 0 0.1 10

execute if score #bool beaconCheck matches 1..2147483647 run execute at @e[scores={Beacontime=200..}] as @p[distance=..5] run function stormworks:custom_commands/set_tp
execute if score #bool beaconCheck matches 1..2147483647 run execute at @e[scores={Beacontime=200..}] run particle cloud ~ ~0.5 ~ 0 0 0 0.25 100
execute if score #bool beaconCheck matches 1..2147483647 run execute at @e[scores={Beacontime=200..}] run playsound minecraft:entity.arrow.hit_player master @p[distance=..5]


execute if score #bool beaconCheck matches 1..2147483647 run kill @e[scores={Beacontime=200..}]

