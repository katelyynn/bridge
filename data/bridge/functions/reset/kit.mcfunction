# BRIDGE reset kit


clear @s

item replace entity @s hotbar.0 with iron_sword
item replace entity @s hotbar.1 with diamond_pickaxe{Enchantments:[{id:"efficiency",lvl:2}]}
item replace entity @s hotbar.2 with bow

## red
item replace entity @s[team=red] hotbar.3 with red_concrete 64
item replace entity @s[team=red] hotbar.4 with red_concrete 64
## blue
item replace entity @s[team=blue] hotbar.3 with blue_concrete 64
item replace entity @s[team=blue] hotbar.4 with blue_concrete 64

item replace entity @s hotbar.5 with golden_apple 8

item replace entity @s hotbar.8 with arrow