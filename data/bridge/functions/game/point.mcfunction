# BRIDGE give point
## if valid (on correct side)
## period: 1 -> 2


# add
## red
execute if entity @s[team=red] run scoreboard players add red points 1
## blue
execute if entity @s[team=blue] run scoreboard players add blue points 1

# build spawn platforms
## red
fill 29 103 -2 33 107 2 red_stained_glass
fill 30 104 -1 32 106 1 air
## blue
fill -29 103 -2 -33 107 2 blue_stained_glass
fill -30 104 -1 -32 106 1 air

# world
scoreboard players set period internal 2
gamemode adventure @a[team=!spec]
function bridge:reset/kit
# teleport
## red
tp @a[team=red] 31 104 0
## blue
tp @a[team=blue] -31 104 0

# announce
## red
execute if entity @s[team=red] run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"red"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" scored a point!","color":"yellow"}]
## blue
execute if entity @s[team=blue] run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"♦","color":"blue"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" scored a point!","color":"yellow"}]
# sfx
execute as @a at @s run playsound entity.arrow.hit_player player @s

# save time
scoreboard players operation time_s_temp internal = time_s internal
# reset time
function fm:clock/reset
# reset scores
scoreboard players reset @a in_blue_portal
scoreboard players reset @a in_red_portal