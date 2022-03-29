# BRIDGE continue game
## runs after countdown (when scored point)


# reset time
function fm:clock/reset
# pickup time where it left off
scoreboard players operation time_s internal = time_s_temp internal
scoreboard players reset time_s_temp internal

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Continue!","color":"yellow"}]
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