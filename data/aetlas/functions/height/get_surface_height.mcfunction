# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Returns the surface height of the current block for use in set_height functions and location_check conditions
# IgnoreFluids determines whether or not water, sea vegetation and lava should be counted as solid blocks or air: if fluids are ignored, the "surface height" can be the bottom of an ocean

# In the overworld, the surface height is defined as the height of the highest solid block that is not part of a tree
# The nether and the end are currently not supported

execute if predicate aetlas:dimension/overworld run scoreboard players set $aetlas.surface_height aetlas.var 255
execute if predicate aetlas:dimension/overworld unless data storage aetlas:private {IgnoreFluids: 1b} positioned ~ 255 ~ run function aetlas:height/overworld_with_fluids_as_solid
execute if predicate aetlas:dimension/overworld if data storage aetlas:private {IgnoreFluids: 1b} positioned ~ 255 ~ run function aetlas:height/overworld_with_fluids_as_air

execute if predicate aetlas:dimension/the_nether run scoreboard players set $aetlas.surface_height aetlas.var 0
execute if predicate aetlas:dimension/the_nether unless data storage aetlas:private {IgnoreFluids: 1b} positioned ~ 0 ~ run function aetlas:height/the_nether_with_fluids_as_solid
execute if predicate aetlas:dimension/the_nether if data storage aetlas:private {IgnoreFluids: 1b} positioned ~ 0 ~ run function aetlas:height/the_nether_with_fluids_as_air

execute if predicate aetlas:dimension/the_end run scoreboard players set $aetlas.surface_height aetlas.var 128
execute if predicate aetlas:dimension/the_end unless data storage aetlas:private {IgnoreFluids: 1b} positioned ~ 128 ~ run function aetlas:height/the_end_with_fluids_as_solid
execute if predicate aetlas:dimension/the_end if data storage aetlas:private {IgnoreFluids: 1b} positioned ~ 128 ~ run function aetlas:height/the_end_with_fluids_as_air
