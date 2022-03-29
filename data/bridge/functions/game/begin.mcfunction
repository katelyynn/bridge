# BRIDGE start
## starts the game after the 5s countdown
## period: 0 -> 1


# remove tags
tag @a remove win
scoreboard players reset @a kill

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
scoreboard players set period internal 1