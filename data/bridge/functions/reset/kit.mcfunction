# BRIDGE reset kit


clear @a[team=!spec]

item replace entity @a[team=!spec] hotbar.0 with iron_sword
item replace entity @a[team=!spec] hotbar.1 with bow
item replace entity @a[team=!spec] hotbar.2 with diamond_pickaxe{Enchantments:[{id:"efficiency",lvl:2}]}

## red
item replace entity @a[team=!spec,team=red] hotbar.3 with red_concrete 64
item replace entity @a[team=!spec,team=red] hotbar.4 with red_concrete 64
## blue
item replace entity @a[team=!spec,team=blue] hotbar.3 with blue_concrete 64
item replace entity @a[team=!spec,team=blue] hotbar.4 with blue_concrete 64

item replace entity @a[team=!spec] hotbar.5 with golden_apple 8

item replace entity @a[team=!spec] hotbar.8 with arrow