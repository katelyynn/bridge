# BRIDGE track pos


execute as @a at @s store result score @s x run data get entity @s Pos[0]
execute as @a at @s store result score @s y run data get entity @s Pos[1]
execute as @a at @s store result score @s z run data get entity @s Pos[2]

# determine team side
## red
execute as @a if score @s x >= side_red internal run scoreboard players set @s team_side 0
## blue
execute as @a if score @s x <= side_blue internal run scoreboard players set @s team_side 1