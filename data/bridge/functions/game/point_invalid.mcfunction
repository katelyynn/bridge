# BRIDGE DON'T give point
## if invalid (on wrong side)


# announce
## red
execute if entity @s[team=red] run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"red"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" entered the wrong side!","color":"yellow"}]
## blue
execute if entity @s[team=blue] run tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"blue"},{"text":"] ","color":"dark_gray"},{"selector":"@s"},{"text":" entered the wrong side!","color":"yellow"}]
# sfx
execute as @a at @s run playsound block.note_block.bass player @s

kill @s

# reset scores
scoreboard players reset @s in_blue_portal
scoreboard players reset @s in_red_portal