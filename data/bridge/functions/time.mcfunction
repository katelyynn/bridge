# BRIDGE clock


function fm:clock/loop

# arrow timer
execute as @a[scores={arrow_regen=1..}] run scoreboard players add @s a_time 1
execute as @a[scores={arrow_regen=1..}] if score @s a_time matches 20.. run scoreboard players add @s a_time_s 1
execute as @a[scores={arrow_regen=1..}] if score @s a_time matches 20.. run scoreboard players set @s a_time 0
# announce
execute as @a[scores={arrow_regen=1..}] run scoreboard players operation @s a_left_temp = arrow_regen_time global
execute as @a[scores={arrow_regen=1..}] run scoreboard players operation @s a_left_temp -= @s a_time_s
execute as @a[scores={arrow_regen=1..}] run scoreboard players operation @s a_left = @s a_left_temp
# upon reaching value
execute as @a[scores={arrow_regen=1..}] if score @s a_time_s >= arrow_regen_time global run function bridge:track/arrow_finish

# game countdown
## 5
execute if score period internal matches 0 if score time_s internal matches 1 if score time internal matches 0 run function bridge:game/count
execute if score period internal matches 2 if score time_s internal matches 1 if score time internal matches 0 run function bridge:game/count
## 4
execute if score period internal matches 0 if score time_s internal matches 2 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score period internal matches 0 if score time_s internal matches 2 if score time internal matches 0 run function bridge:game/count
execute if score period internal matches 2 if score time_s internal matches 2 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score period internal matches 2 if score time_s internal matches 2 if score time internal matches 0 run function bridge:game/count
## 3
execute if score period internal matches 0 if score time_s internal matches 3 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score period internal matches 0 if score time_s internal matches 3 if score time internal matches 0 run function bridge:game/count
execute if score period internal matches 2 if score time_s internal matches 3 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score period internal matches 2 if score time_s internal matches 3 if score time internal matches 0 run function bridge:game/count
## 2
execute if score period internal matches 0 if score time_s internal matches 4 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score period internal matches 0 if score time_s internal matches 4 if score time internal matches 0 run function bridge:game/count
execute if score period internal matches 2 if score time_s internal matches 4 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score period internal matches 2 if score time_s internal matches 4 if score time internal matches 0 run function bridge:game/count
## 1
execute if score period internal matches 0 if score time_s internal matches 5 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score period internal matches 0 if score time_s internal matches 5 if score time internal matches 0 run function bridge:game/count
execute if score period internal matches 2 if score time_s internal matches 5 if score time internal matches 0 run scoreboard players remove countdown internal 1
execute if score period internal matches 2 if score time_s internal matches 5 if score time internal matches 0 run function bridge:game/count
## 0 (start)
execute if score period internal matches 0 if score time_s internal matches 6 if score time internal matches 0 run function bridge:game/begin
execute if score period internal matches 2 if score time_s internal matches 6 if score time internal matches 0 run function bridge:game/continue

# game end to timer
execute if score timer global matches 1.. if score time_s internal >= timer_amount global run function bridge:game/timer_end