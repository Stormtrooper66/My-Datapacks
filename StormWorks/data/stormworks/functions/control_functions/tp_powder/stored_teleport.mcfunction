tag @a[distance=..2] add tp_player
summon armor_stand ~ ~ ~ {Tags:["tp_pos"], Invisible:1b, Marker:1b}
execute as @e[tag=tp_pos,limit=1,distance=..2] run function stormworks:control_functions/tp_powder/tp
