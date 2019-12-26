# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Runs a random entry in the Entries list
# Conditions are ignored, assuming they already pass because of filter_entries

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.weight_index aetlas.var
data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.weight_sum aetlas.var

# Set a random weight index
scoreboard players operation $aetlas.random.max aetlas.var = $aetlas.total_weight aetlas.var
function aetlas:math/random
scoreboard players operation $aetlas.weight_index aetlas.var = $aetlas.random aetlas.var

# Run the entry at this weight index
data modify storage aetlas:traceback Entry append value {}
scoreboard players set $aetlas.weight_sum aetlas.var 0
function aetlas:table/pool/get_entry_at_weight_index
function aetlas:table/entry/read_entry
scoreboard players remove $aetlas.rolls aetlas.var 1
data remove storage aetlas:traceback Entry[-1]

execute store result score $aetlas.weight_sum aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]
execute store result score $aetlas.weight_index aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]