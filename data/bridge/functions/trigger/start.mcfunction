# BRIDGE start
## /trigger start
## allows non-op to start a new game


# if in correct period
execute unless score period internal matches 0..1 run function bridge:game/countdown
# error
execute if score period internal matches 0..1 run tellraw @s ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Cannot start a game while one is already in progress!","color":"red"}]
execute if score period internal matches 0..1 run playsound block.note_block.bass player @s

scoreboard players reset @s start