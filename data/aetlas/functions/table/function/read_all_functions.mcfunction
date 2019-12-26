# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Reads all functions in the Functions list

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.conditions_passed aetlas.var

# Read the function if its conditions pass, or if it has no condi!tions
data modify storage aetlas:private Function set from storage aetlas:private Functions[0]
data modify storage aetlas:traceback Conditions append value []
data modify storage aetlas:traceback Conditions[-1] set from storage aetlas:traceback Function."conditions"
function aetlas:structures/conditions/evaluate_all_conditions
execute if score $aetlas.conditions_passed aetlas.var matches 1 run function aetlas:table/entry/read_entry
data remove storage aetlas:traceback Conditions[-1]
data remove storage aetlas:private Function

# Loop this function if conditions did not pass
data remove storage aetlas:private Functions[0]
scoreboard players remove $aetlas.functions aetlas.var 1
execute if score $aetlas.functions aetlas.var matches 1.. run function aetlas:table/function/read_all_functions

execute store result score $aetlas.conditions_passed aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]