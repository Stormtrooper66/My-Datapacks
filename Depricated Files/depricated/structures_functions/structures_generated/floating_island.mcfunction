
setblock ~7 150 ~7 structure_block{ignoreEntities: 1b,mode:"LOAD",sizeX:32,sizeY:25,sizeZ:35,name:"stormworks:island_medium_growth"} replace
setblock ~7 151 ~7 redstone_block

execute if block ~7 150 ~7 structure_block run setblock ~7 150 ~7 air
execute if block ~7 151 ~7 redstone_block run setblock ~7 151 ~7 air

