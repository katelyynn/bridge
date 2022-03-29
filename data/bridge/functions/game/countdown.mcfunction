# BRIDGE start (countdown)
## starts the pre-game 5s countdown - players spawn into cages
## period: (-1) -> 0


# clear game end schedule
schedule clear bridge:game/end

# build spawn platforms
## red
fill 29 103 -2 33 107 2 blue_stained_glass
fill 30 104 -1 32 106 1 air
## blue
fill -29 103 -2 -33 107 2 blue_stained_glass
fill -30 104 -1 -32 106 1 air

# world
gamemode adventure @a[team=!spec]
# teleport
## red
tp @a[team=red] 31 104 0
## blue
tp @a[team=blue] -31 104 0

# announce
tellraw @a ["",{"text":"\nBridge ","color":"red","bold":true},{"text":"Duels","color":"blue","bold":true},{"text":"\n\nCross the bridge to score goals.\nKnock off your opponent to gain a clear path.\n\nFirst to "},{"score":{"name":"win_points","objective":"global"}},{"text":" wins!"},{"text":"\n\n[R] ","color":"red"},{"selector":"@a[team=red]","separator":" "},{"text":"\n[B] ","color":"blue"},{"selector":"@a[team=blue]","separator":" "},{"text":"\n"}]
# sfx


# world
scoreboard players set period internal 0