# DS main loop


# time loop
execute if score period internal matches 0..1 run function bridge:time

# kill checks
execute if score period internal matches 1 as @a[scores={kill=1..}] at @s run function bridge:track/kill
execute unless score period internal matches 1 run scoreboard players reset @a kill

# win checks
execute if score period internal matches 1 as @a if score @s points >= win_points global run tag @s add win
execute if score period internal matches 1 as @a if score @s points >= win_points global run function bridge:game/win

# periods
## -1: game finished
## 0: game countdown
## 1: main game (ongoing) 