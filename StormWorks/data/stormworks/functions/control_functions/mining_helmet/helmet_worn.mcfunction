tag @a[nbt={Inventory:[{Slot:103b,id:"minecraft:iron_helmet",tag:{CustomModelData:6160003}}]}] add MiningHelm
effect give @a[tag=MiningHelm] minecraft:haste 1 1 true
effect give @a[tag=MiningHelm,predicate=stormworks:is_in_darkness] minecraft:night_vision 11 0 true

tag @a[nbt=!{Inventory:[{Slot:103b,id:"minecraft:iron_helmet",tag:{CustomModelData:6160003}}]}] remove MiningHelm
