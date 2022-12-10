execute store result score @s tp_x run data get entity @s Pos[0]
execute store result score @s tp_y run data get entity @s Pos[1]
execute store result score @s tp_z run data get entity @s Pos[2]
execute store result score @s tp_dim run data get entity @s Dimension
scoreboard players set @s tp_set 1
tellraw @s ["",{"text": "Teleport Location Saved: ("},{"score":{ "name": "@s","objective": "tp_x"}},{"text": ", "},{"score":{"name": "@s","objective": "tp_y"}},{"text": ", "},{"score":{ "name": "@s","objective": "tp_z"}},{"text": ")"}]

