# BRIDGE main loop


# track positions
execute if score period internal matches 1 run function bridge:track/pos

# time loop
execute if score period internal matches 0..2 run function bridge:time

# kill checks
execute if score period internal matches 1 as @a[scores={kill=1..}] at @s run function bridge:track/kill
execute unless score period internal matches 1 run scoreboard players reset @a kill

# win checks
## red
execute if score period internal matches 1..2 if score red points >= win_points global run tag @a[team=red] add win
execute if score period internal matches 1..2 if score red points >= win_points global run function bridge:game/win
## blue
execute if score period internal matches 1..2 if score blue points >= win_points global run tag @a[team=blue] add win
execute if score period internal matches 1..2 if score blue points >= win_points global run function bridge:game/win

# assign triggers
scoreboard players enable @a start
execute as @a if score @s start matches 1.. run function bridge:trigger/start

# track deaths
execute if score period internal matches 1 as @a if score @s death matches 1.. run function bridge:track/death
execute unless score period internal matches 1 as @a if score @s death matches 1.. run scoreboard players reset @s death

# pick up items
execute as @e[type=item,name="Red Concrete"] run data merge entity @s {Item:{tag:{CanPlaceOn:["red_concrete","blue_concrete","white_concrete"]}}}
execute as @e[type=item,name="Blue Concrete"] run data merge entity @s {Item:{tag:{CanPlaceOn:["red_concrete","blue_concrete","white_concrete"]}}}
execute as @e[type=item] run data merge entity @s {PickupDelay:0s}
kill @e[type=arrow,nbt={inGround:1b}]

# eat gapple
execute as @a if score @s gapple matches 1.. run function bridge:track/gapple

# give players blocks
## red
execute if score period internal matches 1..2 run item replace entity @a[team=red] weapon.offhand with red_concrete{CanPlaceOn:["red_concrete","blue_concrete","white_concrete"]} 64
## blue
execute if score period internal matches 1..2 run item replace entity @a[team=blue] weapon.offhand with blue_concrete{CanPlaceOn:["red_concrete","blue_concrete","white_concrete"]} 64

# use bow
execute if score period internal matches 1..2 if score arrow_regen global matches 1.. as @a[team=!spec] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run function bridge:track/arrow
# announce
execute if score period internal matches 1..2 if score arrow_regen global matches 1.. as @a[scores={arrow_regen=1..}] run title @s actionbar ["",{"text":"Your arrow will regenerate in ","color":"yellow"},{"score":{"name":"@s","objective":"a_left"},"color":"gold","bold":true},{"text":" seconds!","color":"yellow"}]
# if arrow_ if score period internal matches 1..2regen is off
execute if score period internal matches 1..2 unless score arrow_regen global matches 1.. as @a[team=!spec] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run item replace entity @s hotbar.8 with arrow

# bossbars
execute unless score period internal matches 1..3 run bossbar set bridge:red players
execute unless score period internal matches 1..3 run bossbar set bridge:red value 0
execute unless score period internal matches 1..3 run bossbar set bridge:blue players
execute unless score period internal matches 1..3 run bossbar set bridge:blue value 0
## red
execute if score period internal matches 1..3 run bossbar set bridge:red players @a
execute if score period internal matches 1..3 run bossbar set bridge:red name {"selector":"@a[team=red]","separator":" "}
execute if score period internal matches 1..3 store result bossbar bridge:red value run scoreboard players get red points
execute if score period internal matches 1..3 store result bossbar bridge:red max run scoreboard players get win_points global
## blue
execute if score period internal matches 1..3 run bossbar set bridge:blue players @a
execute if score period internal matches 1..3 run bossbar set bridge:blue name {"selector":"@a[team=blue]","separator":" "}
execute if score period internal matches 1..3 store result bossbar bridge:blue value run scoreboard players get blue points
execute if score period internal matches 1..3 store result bossbar bridge:blue max run scoreboard players get win_points global

# periods
## -1: game finished
## 0: game countdown
## 1: main game (ongoing)
## 2: game interval countdown (after point)

# clear illegal blocks
## x
fill 20 110 8 -20 84 6 air replace #concrete
fill 20 110 -8 -20 84 -6 air replace #concrete
## y
fill 20 100 8 -20 105 -8 air replace #concrete

# set spawnpoints
setworldspawn 0 93 0
## generated with generate.html
# Urban
execute if score map internal matches 0 run spawnpoint @a[team=red] 30 96 0
execute if score map internal matches 0 run spawnpoint @a[team=blue] -30 96 0
# TreeHouse
execute if score map internal matches 1 run spawnpoint @a[team=red] 33 100 0
execute if score map internal matches 1 run spawnpoint @a[team=blue] -33 100 0
# Twilight
execute if score map internal matches 2 run spawnpoint @a[team=red] 27 98 0
execute if score map internal matches 2 run spawnpoint @a[team=blue] -28 98 0