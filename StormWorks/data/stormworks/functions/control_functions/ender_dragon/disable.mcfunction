##makes the dragon and crystals both Invulnerable, so players can't damage them before the Dragon fight event
execute as @e[type=ender_dragon] run data modify entity @s Invulnerable set value 1b
execute as @e[type=end_crystal] run data modify entity @s Invulnerable set value 1b

tellraw @s {"text": "Ender Dragon Fight Disabled","color": "red"}