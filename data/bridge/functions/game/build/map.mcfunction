# BRIDGE build map


# create structures
## generated with generate.html
execute if score map internal matches 0 run setblock 16 93 0 structure_block{mirror:"NONE",seed:0L,posX:0,posY:-6,posZ:-14,sizeX:34,sizeY:37,sizeZ:29,name:"bridge:maps/urban_red",rotation:"NONE",mode:"LOAD"}
execute if score map internal matches 0 run setblock -16 93 0 structure_block{mirror:"NONE",seed:0L,posX:-33,posY:-6,posZ:-14,sizeX:34,sizeY:37,sizeZ:29,name:"bridge:maps/urban_blue",rotation:"NONE",mode:"LOAD"}
execute if score map internal matches 1 run setblock 16 93 0 structure_block{mirror:"NONE",seed:0L,posX:0,posY:-6,posZ:-10,sizeX:35,sizeY:33,sizeZ:25,name:"bridge:maps/treehouse_red",rotation:"NONE",mode:"LOAD"}
execute if score map internal matches 1 run setblock -16 93 0 structure_block{mirror:"NONE",seed:0L,posX:-33,posY:-6,posZ:-10,sizeX:32,sizeY:33,sizeZ:25,name:"bridge:maps/treehouse_blue",rotation:"NONE",mode:"LOAD"}

# load structures
## red
setblock 16 92 0 redstone_block
## blue
setblock -16 92 0 redstone_block