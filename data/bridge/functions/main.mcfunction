# BRIDGE main loop


# track positions
function bridge:track/pos

# time loop
execute if score period internal matches 0..2 run function bridge:time

# kill checks
execute if score period internal matches 1 as @a[scores={kill=1..}] at @s run function bridge:track/kill
execute unless score period internal matches 1 run scoreboard players reset @a kill

# win checks
execute if score period internal matches 1 as @a if score @s points >= win_points global run tag @s add win
execute if score period internal matches 1 as @a if score @s points >= win_points global run function bridge:game/win

# assign triggers
scoreboard players enable @a start

# track deaths
execute if score period internal matches 1 as @a if score @s death matches 1.. run function bridge:reset/kit
execute unless score period internal matches 1 as @a if score @s death matches 1.. run scoreboard players reset @s death

# use bow
execute if score arrow_regen global matches 1.. as @a[team=!spec] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run function bridge:track/arrow
# announce
execute if score arrow_regen global matches 1.. as @a[scores={arrow_regen=1..}] run title @s actionbar ["",{"text":"Your arrow will regenerate in ","color":"yellow"},{"score":{"name":"@s","objective":"a_left"},"color":"gold","bold":true},{"text":" seconds!","color":"yellow"}]
# if arrow_regen is off
execute unless score arrow_regen global matches 1.. as @a[team=!spec] unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run item replace entity @s hotbar.8 with arrow

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