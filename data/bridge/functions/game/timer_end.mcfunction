# BRIDGE timer end
## if game exceeds time limit (if enabled)


# check based on teams
## red
execute if score red points > blue points run tag @a[team=red] add win
execute if score red points > blue points run function bridge:game/win
## blue
execute if score blue points > red points run tag @a[team=blue] add win
execute if score blue points > red points run function bridge:game/win
## draw
execute if score red points = blue points run function bridge:game/win