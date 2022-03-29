# BRIDGE win
## activated when a team reaches the winning score
## period: 1 -> 3


scoreboard players set period internal 3
gamemode spectator @a[tag=!win]

# announce
tellraw @a ["",{"text":"[","color":"dark_gray"},{"text":"!","color":"green","bold":true},{"text":"] ","color":"dark_gray"},{"text":"Game over! ","color":"yellow"},{"text":"[Play again]","color":"green","hoverEvent":{"action":"show_text","contents":[{"text":"Start a new game"}]},"clickEvent":{"action":"run_command","value":"/trigger start"}},{"text":" [Change options]","color":"gray","hoverEvent":{"action":"show_text","contents":[{"text":"Configure settings (requires op)"}]},"clickEvent":{"action":"run_command","value":"/function bridge:options/open"}}]
execute if entity @a[tag=win] run title @a subtitle ["",{"selector":"@a[tag=win]","color":"yellow","bold":true},{"text":" won!","color":"yellow"}]
## red
execute if entity @a[tag=win,limit=1,team=red] run title @a title {"text":"GAME OVER!","color":"red","bold":true}
## blue
execute if entity @a[tag=win,limit=1,team=blue] run title @a title {"text":"GAME OVER!","color":"blue","bold":true}
## draw
execute unless entity @a[tag=win] run title @a title {"text":"GAME OVER!","color":"gold","bold":true}
execute unless entity @a[tag=win] run title @a subtitle ["",{"text":"It was a tie..","color":"yellow"}]

# sfx
execute as @a at @s run playsound ui.toast.challenge_complete player @s ~ ~ ~

# fireworks
effect give @a resistance 9999 255 true
## red
execute if entity @a[tag=win,limit=1,team=red] as @a[tag=win] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16257811],FadeColors:[I;16072723]}]}}}}
## blue
execute if entity @a[tag=win,limit=1,team=blue] as @a[tag=win] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;1512440],FadeColors:[I;11270517]}]}}}}
## draw
execute unless entity @a[tag=win] as @a[team=!spec] at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"minecraft:firework_rocket",Count:1,tag:{Fireworks:{Flight:1,Explosions:[{Type:1,Flicker:0,Trail:0,Colors:[I;16289043],FadeColors:[I;15909273]}]}}}}

# effects
effect give @a[tag=win] glowing 9999 255 true


# schedule period reset
schedule function bridge:game/end 10s