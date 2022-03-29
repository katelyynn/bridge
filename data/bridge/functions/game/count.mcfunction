# BRIDGE countdown time
## uses countdown score for number
## called by bridge:time


# announce
title @a title ""
title @a subtitle ["",{"text":"Starting in ","color":"gray"},{"score":{"name":"countdown","objective":"internal"},"color":"green","bold":true},{"text":"..","color":"gray"}]
# sfx
execute as @a at @s run playsound block.note_block.pling player @s