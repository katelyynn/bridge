# BRIDGE defaults


# world
gamerule doImmediateRespawn true
gamerule fallDamage false
gamerule doMobLoot false
gamerule doMobSpawning false
gamerule doDaylightCycle false
gamerule doWeatherCycle false

# arrow regenerating
## if disabled, bows have infinity
scoreboard players set arrow_regen global 1
scoreboard players set arrow_regen_time global 3

# team sides
## red
scoreboard players set side_red internal 1
## blue
scoreboard players set side_blue internal -1

# portal positions
## global
#  y
scoreboard players set portal_y internal 89
scoreboard players set portal_y2 internal 91
#  z
scoreboard players set portal_z internal -2
scoreboard players set portal_z2 internal 2
## red
#  x
scoreboard players set portal_red_x internal 31
scoreboard players set portal_red_x2 internal 35
## blue
#  x
scoreboard players set portal_red_x internal -31
scoreboard players set portal_red_x2 internal -35

# triggers
scoreboard objectives add start trigger 

# win points
scoreboard players set win_points global 5
# end on time
## requires that timer is enabled \/
scoreboard players set timer global 1
scoreboard players set timer_amount global 900

# period
scoreboard players set period internal -1


scoreboard players set defaults internal 1