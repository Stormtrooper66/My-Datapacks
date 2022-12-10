scoreboard players operation x math %= #32 constant
scoreboard players operation z math %= #32 constant
execute if score x math matches 1.. if score z math matches 1.. run fill ~ -64 ~ ~15 -64 ~15 white_wool
execute if score x math matches 0 if score z math matches 0 run fill ~ -64 ~ ~15 -64 ~15 white_wool
execute if score x math matches 1.. if score z math matches 0 run fill ~ -64 ~ ~15 -64 ~15 black_wool
execute if score x math matches 0 if score z math matches 1.. run fill ~ -64 ~ ~15 -64 ~15 black_wool

##Run whatever happens in the chunk here

## ~ ~ ~ is corner of chunk, ~7 ~# ~7 is center of chunk
execute if predicate stormworks:biome_ocean_any if predicate stormworks:random_chance_0_25 run function stormworks:structures_functions/structures_generated/floating_island

##execute if predicate stormworks:random_chance_50 positioned ~7 6 ~7 run summon pig ~ ~ ~

##say Set Chunk
