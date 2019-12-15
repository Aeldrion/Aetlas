# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Reads all entries in the Entries list until the first entry fails
# Used by the sequence entry

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] run scoreboard players get $aetlas.entries aetlas.var
data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] run scoreboard players get $aetlas.conditions_passed aetlas.var

# Read the entry if its conditions pass, or if it has no conditions
data modify storage aetlas:traceback Entry append from storage aetlas:traceback Entries[-1][0]
data modify storage aetlas:traceback Conditions append value []
data modify storage aetlas:traceback Conditions[-1] set from storage aetlas:traceback Entry[-1]."conditions"
function aetlas:structures/conditions/evaluate_all_conditions
execute if score $aetlas.conditions_passed aetlas.var matches 1 run function aetlas:structures/table/entry/read_entry
data remove storage aetlas:traceback Conditions[-1]
data remove storage aetlas:traceback Entry[-1]

# Loop this function if conditions passed
data remove storage aetlas:traceback Entries[-1][0]
scoreboard players remove $aetlas.entries aetlas.var 1
execute if score $aetlas.entries aetlas.var matches 1.. if score $aetlas.conditions_passed aetlas.var matches 1 run function aetlas:structures/table/entry/read_all_entries_until_conditions_fail

execute store result score $aetlas.conditions_passed aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]
execute store result score $aetlas.entries aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]