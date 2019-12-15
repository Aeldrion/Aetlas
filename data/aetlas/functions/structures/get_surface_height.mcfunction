# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if predicate aetlas:in_dimension/overworld run scoreboard players set $aetlas.pos.y aetlas.var 255
execute if predicate aetlas:in_dimension/overworld positioned ~ 255 ~ run function aetlas:structures/surface_height/overworld

execute if predicate aetlas:in_dimension/the_nether run scoreboard players set $aetlas.pos.y aetlas.var 0
execute if predicate aetlas:in_dimension/the_nether positioned ~ 0 ~ run function aetlas:structures/surface_height/nether

execute if predicate aetlas:in_dimension/the_end run scoreboard players set $aetlas.pos.y aetlas.var 128
execute if predicate aetlas:in_dimension/the_end positioned ~ 128 ~ run function aetlas:structures/surface_height/end