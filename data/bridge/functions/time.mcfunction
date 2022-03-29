# BRIDGE clock


function fm:clock/loop

# game countdown
## 5
execute if score time_s internal matches 1 if score time internal matches 0 run function bridge:game/count
## 4
execute if score time_s internal matches 2 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score time_s internal matches 2 if score time internal matches 0 run function bridge:game/count
## 3
execute if score time_s internal matches 3 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score time_s internal matches 3 if score time internal matches 0 run function bridge:game/count
## 2
execute if score time_s internal matches 4 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score time_s internal matches 4 if score time internal matches 0 run function bridge:game/count
## 1
execute if score time_s internal matches 5 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score time_s internal matches 5 if score time internal matches 0 run function bridge:game/count
## 0 (start)
execute if score time_s internal matches 6 if score time internal matches 0 run function bridge:game/begin

# game end to timer
execute if score timer global matches 1.. if score time_s internal >= timer_amount global run function bridge:game/timer_end