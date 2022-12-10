##makes the dragon and crystals both Vulnerable again. Don't forget to run it before the dragon fight.
execute as @e[type=ender_dragon] run data modify entity @s Invulnerable set value 0b
execute as @e[type=end_crystal] run data modify entity @s Invulnerable set value 0b

tellraw @s {"text": "Ender Dragon Fight Enabled","color": "gold"}