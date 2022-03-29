# BRIDGE /reload


# scoreboards
scoreboard objectives add global dummy
scoreboard objectives add internal dummy
scoreboard objectives add kill playerKillCount

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