# DS main loop


# world
execute if score show_interval global matches 1.. run bossbar set ds:main players @a
execute unless score show_interval global matches 1.. run bossbar set ds:main players
# grace period
execute if score period internal matches 0 run bossbar set ds:grace players @a
execute unless score period internal matches 0 run bossbar set ds:grace players
# join players
execute if score period internal matches 0..1 run team join players @a[team=!players,gamemode=!spectator]
execute if score period internal matches 0..1 run team leave @a[gamemode=spectator]

# time loop
execute if score period internal matches 0..1 run function bridge:time

# kill checks
execute if score period internal matches 1 as @a[scores={kill=1..}] at @s run function bridge:track/kill
execute unless score period internal matches 1 run scoreboard players reset @a kill

# win checks
execute if score period internal matches 1 as @a if score @s points >= win_points global run tag @s add win
execute if score period internal matches 1 as @a if score @s points >= win_points global run function bridge:win

# periods
## -1: game finished
## 0: game countdown
## 1: main game (ongoing) 