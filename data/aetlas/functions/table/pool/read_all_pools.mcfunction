# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Reads all pool in a pool list, if conditions pass

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.pools aetlas.var
data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.conditions_passed aetlas.var

# Only read pools whose conditions pass
data modify storage aetlas:traceback Pool append from storage aetlas:traceback Pools[-1][0]
scoreboard players set $aetlas.conditions_passed aetlas.var 1
execute if data storage aetlas:traceback Pool[-1]."conditions" run data modify storage aetlas:traceback Conditions append from storage aetlas:traceback Pool[-1]."conditions"
execute if data storage aetlas:traceback Pool[-1]."conditions" run function aetlas:table/condition/evaluate_all_conditions
execute if score $aetlas.conditions_passed aetlas.var matches 1 run function aetlas:table/pool/read_pool
data remove storage aetlas:traceback Conditions[-1]
data remove storage aetlas:traceback Pool[-1]

# Loop this function
data remove storage aetlas:traceback Pools[-1][0]
scoreboard players remove $aetlas.pools aetlas.var 1
execute if score $aetlas.pools aetlas.var matches 1.. run function aetlas:table/pool/read_all_pools

execute store result score $aetlas.conditions_passed aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]
execute store result score $aetlas.pools aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]