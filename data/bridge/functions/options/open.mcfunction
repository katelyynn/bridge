# BRIDGE options menu
## allows simple configuration of options
## requires op


# header
tellraw @s ["",{"text":"\nConfigure options\n","color":"gold","bold":true}]

# TIMER <timer>
## ON
execute if score timer global matches 1.. run tellraw @a ["",{"text":"\nTIMER\n","color":"dark_gray","underlined":true},{"text":"End on timer: ","hoverEvent":{"action":"show_text","contents":[{"text":"End the game after a set amount of time."}]}},{"text":"[ON] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function bridge:options/timer/on"}},{"text":"[OFF]","color":"red","clickEvent":{"action":"run_command","value":"/function bridge:options/timer/off"}}]
## OFF
execute unless score timer global matches 1.. run tellraw @a ["",{"text":"\nTIMER\n","color":"dark_gray","underlined":true},{"text":"End on timer: ","hoverEvent":{"action":"show_text","contents":[{"text":"End the game after a set amount of time."}]}},{"text":"[ON] ","color":"green","clickEvent":{"action":"run_command","value":"/function bridge:options/timer/on"}},{"text":"[OFF]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function bridge:options/timer/off"}}]

# ARROW REGEN <arrow_regen>
## ON
execute if score arrow_regen global matches 1.. run tellraw @a ["",{"text":"\nARROWS\n","color":"dark_gray","underlined":true},{"text":"Auto-regenerate: ","hoverEvent":{"action":"show_text","contents":[{"text":"Limits your arrow count to 1, auto-regenerates."}]}},{"text":"[ON] ","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function bridge:options/arrow_regen/on"}},{"text":"[OFF]","color":"red","clickEvent":{"action":"run_command","value":"/function bridge:options/arrow_regen/off"}}]
## OFF
execute unless score arrow_regen global matches 1.. run tellraw @a ["",{"text":"\nARROWS\n","color":"dark_gray","underlined":true},{"text":"Auto-regenerate: ","hoverEvent":{"action":"show_text","contents":[{"text":"Limits your arrow count to 1, auto-regenerates."}]}},{"text":"[ON] ","color":"green","clickEvent":{"action":"run_command","value":"/function bridge:options/arrow_regen/on"}},{"text":"[OFF]","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function bridge:options/arrow_regen/off"}}]


