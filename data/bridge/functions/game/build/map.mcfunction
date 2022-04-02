# BRIDGE build map


# create structures
## generated with generate.html
# Urban
execute if score map internal matches 0 run setblock 16 93 0 structure_block{mirror:"NONE",seed:0L,posX:0,posY:-6,posZ:-14,sizeX:34,sizeY:37,sizeZ:29,name:"bridge:maps/urban_red",rotation:"NONE",mode:"LOAD"}
execute if score map internal matches 0 run setblock -16 93 0 structure_block{mirror:"NONE",seed:0L,posX:-33,posY:-6,posZ:-14,sizeX:34,sizeY:37,sizeZ:29,name:"bridge:maps/urban_blue",rotation:"NONE",mode:"LOAD"}
# TreeHouse
execute if score map internal matches 1 run setblock 16 93 0 structure_block{mirror:"NONE",seed:0L,posX:0,posY:-6,posZ:-10,sizeX:35,sizeY:33,sizeZ:25,name:"bridge:maps/treehouse_red",rotation:"NONE",mode:"LOAD"}
execute if score map internal matches 1 run setblock -16 93 0 structure_block{mirror:"NONE",seed:0L,posX:-32,posY:-7,posZ:-10,sizeX:32,sizeY:33,sizeZ:25,name:"bridge:maps/treehouse_blue",rotation:"NONE",mode:"LOAD"}
# Twilight
execute if score map internal matches 2 run setblock 16 93 0 structure_block{mirror:"NONE",seed:0L,posX:0,posY:-13,posZ:-13,sizeX:25,sizeY:34,sizeZ:41,name:"bridge:maps/twilight_red",rotation:"NONE",mode:"LOAD"}
execute if score map internal matches 2 run setblock -16 93 0 structure_block{mirror:"NONE",seed:0L,posX:-25,posY:-13,posZ:-13,sizeX:34,sizeY:37,sizeZ:29,name:"bridge:maps/twilight_blue",rotation:"NONE",mode:"LOAD"}

# load structures
## red
setblock 16 92 0 redstone_block
## blue
setblock -16 92 0 redstone_block

# portal locations
## generated with generate.html
# Urban
execute if score map internal matches 0 run scoreboard players set portal_red_x internal 31
execute if score map internal matches 0 run scoreboard players set portal_red_x2 internal 35
execute if score map internal matches 0 run scoreboard players set portal_blue_x internal -31
execute if score map internal matches 0 run scoreboard players set portal_blue_x2 internal -35
execute if score map internal matches 0 run scoreboard players set portal_y internal 88
execute if score map internal matches 0 run scoreboard players set portal_y2 internal 89
execute if score map internal matches 0 run scoreboard players set portal_z internal -2
execute if score map internal matches 0 run scoreboard players set portal_z2 internal 2
# TreeHouse
execute if score map internal matches 1 run scoreboard players set portal_red_x internal 31
execute if score map internal matches 1 run scoreboard players set portal_red_x2 internal 35
execute if score map internal matches 1 run scoreboard players set portal_blue_x internal -31
execute if score map internal matches 1 run scoreboard players set portal_blue_x2 internal -35
execute if score map internal matches 1 run scoreboard players set portal_y internal 89
execute if score map internal matches 1 run scoreboard players set portal_y2 internal 90
execute if score map internal matches 1 run scoreboard players set portal_z internal -2
execute if score map internal matches 1 run scoreboard players set portal_z2 internal 2
# Twilight
execute if score map internal matches 2 run scoreboard players set portal_red_x internal 32
execute if score map internal matches 2 run scoreboard players set portal_red_x2 internal 36
execute if score map internal matches 2 run scoreboard players set portal_blue_x internal -32
execute if score map internal matches 2 run scoreboard players set portal_blue_x2 internal -36
execute if score map internal matches 2 run scoreboard players set portal_y internal 90
execute if score map internal matches 2 run scoreboard players set portal_y2 internal 91
execute if score map internal matches 2 run scoreboard players set portal_z internal -2
execute if score map internal matches 2 run scoreboard players set portal_z2 internal 2