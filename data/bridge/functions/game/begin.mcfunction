# BRIDGE start
## starts the game after the 5s countdown
## period: 0 -> 1


# build map
function bridge:game/build/bridge
function bridge:game/build/map

# reset time
function fm:clock/reset

# remove tags
tag @a remove win
scoreboard players reset @a kill
# reset scores
scoreboard players reset @a arrow_regen
scoreboard players reset @a a_time
scoreboard players reset @a a_time_s
scoreboard players reset @a arrow

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Let the games begin!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.generic.explode player @s ~ ~ ~
execute as @a at @s run playsound block.note_block.pling player @s ~ ~ ~

# remove spawn platforms
## red
fill 29 103 -2 33 107 2 air
## blue
fill -29 103 -2 -33 107 2 air

# world
gamemode survival @a[team=!spec]
scoreboard players set period internal 1