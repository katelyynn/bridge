# BRIDGE track pos


execute as @a at @s store result score @s x run data get entity @s Pos[0]
execute as @a at @s store result score @s y run data get entity @s Pos[1]
execute as @a at @s store result score @s z run data get entity @s Pos[2]

# determine team side
## red
execute as @a if score @s x >= side_red internal run scoreboard players set @s team_side 0
## blue
execute as @a if score @s x <= side_blue internal run scoreboard players set @s team_side 1

# determine if in portal
## red
execute as @a if score @s x >= portal_red_x internal if score @s x <= portal_red_x2 internal if score @s z >= portal_z internal if score @s z <= portal_z2 internal if score @s y >= portal_y internal if score @s y <= portal_y2 internal run scoreboard players set @s in_red_portal 1
execute as @a unless score @s x >= portal_red_x internal unless score @s x <= portal_red_x2 internal unless score @s z >= portal_z internal unless score @s z <= portal_z2 internal unless score @s y >= portal_y internal unless score @s y <= portal_y2 internal run scoreboard players set @s in_red_portal 0
## blue
execute as @a if score @s x <= portal_blue_x internal if score @s x >= portal_blue_x2 internal if score @s z >= portal_z internal if score @s z <= portal_z2 internal if score @s y >= portal_y internal if score @s y <= portal_y2 internal run scoreboard players set @s in_blue_portal 1
execute as @a unless score @s x <= portal_blue_x internal unless score @s x >= portal_blue_x2 internal unless score @s z >= portal_z internal unless score @s z <= portal_z2 internal unless score @s y >= portal_y internal unless score @s y <= portal_y2 internal run scoreboard players set @s in_blue_portal 0

# if enter portal
## red
#  (on blue side)
execute as @a[team=red] at @s if score @s in_blue_portal matches 1.. run function bridge:game/point
#  (on red side)
execute as @a[team=red] at @s if score @s in_red_portal matches 1.. run function bridge:game/point_invalid
## blue
#  (on blue side)
execute as @a[team=blue] at @s if score @s in_blue_portal matches 1.. run function bridge:game/point_invalid
#  (on red side)
execute as @a[team=blue] at @s if score @s in_red_portal matches 1.. run function bridge:game/point