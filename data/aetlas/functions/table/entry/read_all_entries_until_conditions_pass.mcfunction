# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Reads only the first successful entry in the Entries list
# Used by the alternatives entry

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.entries aetlas.var
data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.conditions_passed aetlas.var

# Read the entry if its conditions pass, or if it has no conditions
data modify storage aetlas:traceback Entry append from storage aetlas:traceback Entries[-1][0]
scoreboard players set $aetlas.conditions_passed aetlas.var 1
execute if data storage aetlas:traceback Entry[-1].conditions run data modify storage aetlas:traceback Conditions append from storage aetlas:traceback Entry[-1].conditions
execute if data storage aetlas:traceback Entry[-1].conditions run function aetlas:table/condition/evaluate_all_conditions
execute if score $aetlas.conditions_passed aetlas.var matches 1 run function aetlas:table/entry/read_entry
execute if data storage aetlas:traceback Entry[-1].conditions run data remove storage aetlas:traceback Conditions[-1]
data remove storage aetlas:traceback Entry[-1]

# Loop this function if conditions did not pass
data remove storage aetlas:traceback Entries[-1][0]
scoreboard players remove $aetlas.entries aetlas.var 1
execute if score $aetlas.entries aetlas.var matches 1.. unless score $aetlas.conditions_passed aetlas.var matches 1 run function aetlas:table/entry/read_all_entries_until_conditions_pass

execute store result score $aetlas.conditions_passed aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]
execute store result score $aetlas.entries aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]