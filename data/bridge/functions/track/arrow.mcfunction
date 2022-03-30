# BRIDGE arrow tracking


# if user does not have arrow already
## start timer
execute unless entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run scoreboard players set @s arrow_regen 1
# remove if user gains arrow
## (either from script or foreign knockback from the east)
execute if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] run scoreboard players reset @s arrow_regen


scoreboard players reset @s arrow