# BRIDGE options menu
## allows simple configuration of options
## requires op


# header
tellraw @s ["",{"text":"\nConfigure options\n","color":"gold","bold":true},{"text":"\nTIMER\n","color":"dark_gray","underlined":true}]

# TIMER
## ON
execute if score timer global matches 1.. run tellraw @a ["",{"text":"End on timer: ","hoverEvent":{"action":"show_text","contents":[{"text":"End the game after a set amount\nof time."}]}},{"text":"[ON] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function bridge:options/timer/on"}},{"text":"[OFF]","color":"red","clickEvent":{"action":"run_command","value":"/function bridge:options/timer/off"}}]
## OFF
execute unless score timer global matches 1.. run tellraw @a ["",{"text":"End on timer: ","hoverEvent":{"action":"show_text","contents":[{"text":"End the game after a set amount\nof time."}]}},{"text":"[ON] ","color":"green","clickEvent":{"action":"run_command","value":"/function bridge:options/timer/on"}},{"text":"[OFF]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function bridge:options/timer/off"}}]


