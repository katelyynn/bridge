# BRIDGE clock


function fm:clock/loop

# game end to timer
execute if score timer global matches 1.. if score time_s internal >= timer_amount global run function bridge:game/timer_end