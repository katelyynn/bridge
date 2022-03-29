# BRIDGE defaults


# world
gamerule doImmediateRespawn true
gamerule keepInventory true
gamerule fallDamage false

# team sides
## red
scoreboard players set side_red internal 1
## blue
scoreboard players set side_blue internal -1

# triggers
scoreboard objectives add start trigger 

# win points
scoreboard players set win_points global 5
# end on time
scoreboard players set timer global 1
scoreboard players set timer_amount global 900

# period
scoreboard players set period internal -1


scoreboard players set defaults internal 1