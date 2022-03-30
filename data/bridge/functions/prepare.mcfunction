# BRIDGE /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add kill playerKillCount
scoreboard objectives add points dummy
# arrow regen
scoreboard objectives add arrow minecraft.used:minecraft.bow
scoreboard objectives add arrow_regen dummy
scoreboard objectives add a_time dummy
scoreboard objectives add a_time_s dummy
# track positions
scoreboard objectives add x dummy
scoreboard objectives add y dummy
scoreboard objectives add z dummy
scoreboard objectives add team_side dummy
scoreboard objectives add in_red_portal dummy
scoreboard objectives add in_blue_portal dummy
# track lifetime
scoreboard objectives add lifetime_kills playerKillCount
scoreboard objectives add lifetime_deaths deathCount
scoreboard objectives add lifetime_melee minecraft.used:minecraft.iron_sword
scoreboard objectives add lifetime_ranged minecraft.used:minecraft.bow

# bossbar
## red
bossbar add bridge:red ""
bossbar set bridge:red color red
## blue
bossbar add bridge:blue ""
bossbar set bridge:blue color blue

# teams
## red
team add red
team modify red color red
## blue
team add blue
team modify blue color blue
## spec
team add spec
team modify spec color gray
team modify spec prefix "[SPEC] "

# display health
scoreboard objectives add health health
scoreboard objectives modify health displayname {"text":"♥ ","color":"red"}
scoreboard objectives setdisplay belowName health

# defaults
execute unless score defaults internal matches 1.. run function bridge:defaults