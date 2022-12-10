execute store result entity @s Pos[0] double 1 run scoreboard players add @p[tag=tp_player,scores={tp_set=1},distance=..2] tp_x 0
execute store result entity @s Pos[1] double 1 run scoreboard players add @p[tag=tp_player,scores={tp_set=1},distance=..2] tp_y 0
execute store result entity @s Pos[2] double 1 run scoreboard players add @p[tag=tp_player,scores={tp_set=1},distance=..2] tp_z 0

execute at @s unless entity @s[x=0,y=0,z=0,distance=..1] run tp @a[tag=tp_player] ~0.5 ~ ~0.5

execute at @s run tellraw @a[distance=..2] ["", {"text": "Successfully Teleported", "color": "gold"}]
execute at @s run scoreboard players reset @a[distance=..2] tp_go
execute at @s run tag @a[distance=..2] remove tp_player
kill @s
