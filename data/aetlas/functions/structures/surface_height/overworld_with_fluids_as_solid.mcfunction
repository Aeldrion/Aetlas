# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players set $aetlas.surface_height.offset aetlas.var 0
execute if score $aetlas.surface_height.offset aetlas.var matches 0 if predicate aetlas:height/fluids_as_solid/clear_below_64 run scoreboard players set $aetlas.surface_height.offset aetlas.var 64
execute if score $aetlas.surface_height.offset aetlas.var matches 0 if predicate aetlas:height/fluids_as_solid/clear_below_32 run scoreboard players set $aetlas.surface_height.offset aetlas.var 32
execute if score $aetlas.surface_height.offset aetlas.var matches 0 if predicate aetlas:height/fluids_as_solid/clear_below_16 run scoreboard players set $aetlas.surface_height.offset aetlas.var 16
execute if score $aetlas.surface_height.offset aetlas.var matches 0 if predicate aetlas:height/fluids_as_solid/clear_below_8 run scoreboard players set $aetlas.surface_height.offset aetlas.var 8
execute if score $aetlas.surface_height.offset aetlas.var matches 0 if predicate aetlas:height/fluids_as_solid/clear_below_4 run scoreboard players set $aetlas.surface_height.offset aetlas.var 4
execute if score $aetlas.surface_height.offset aetlas.var matches 0 if predicate aetlas:height/fluids_as_solid/clear_below_2 run scoreboard players set $aetlas.surface_height.offset aetlas.var 2
execute if score $aetlas.surface_height.offset aetlas.var matches 0 if predicate aetlas:height/fluids_as_solid/clear_below_1 run scoreboard players set $aetlas.surface_height.offset aetlas.var 

scoreboard players operation $aetlas.surface_height aetlas.var -= $aetlas.surface_height.offset aetlas.var

execute if score $aetlas.surface_height.offset aetlas.var matches 2 positioned ~ ~-2 ~ run function aetlas:structures/surface_height/overworld_with_fluids_as_solid
execute if score $aetlas.surface_height.offset aetlas.var matches 4 positioned ~ ~-4 ~ run function aetlas:structures/surface_height/overworld_with_fluids_as_solid
execute if score $aetlas.surface_height.offset aetlas.var matches 8 positioned ~ ~-8 ~ run function aetlas:structures/surface_height/overworld_with_fluids_as_solid
execute if score $aetlas.surface_height.offset aetlas.var matches 16 positioned ~ ~-16 ~ run function aetlas:structures/surface_height/overworld_with_fluids_as_solid
execute if score $aetlas.surface_height.offset aetlas.var matches 32 positioned ~ ~-32 ~ run function aetlas:structures/surface_height/overworld_with_fluids_as_solid
execute if score $aetlas.surface_height.offset aetlas.var matches 64 positioned ~ ~-64 ~ run function aetlas:structures/surface_height/overworld_with_fluids_as_solid