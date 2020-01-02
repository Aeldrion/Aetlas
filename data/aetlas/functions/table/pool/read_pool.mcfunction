# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Runs entries in a pool
# Number of entries is determined by rolls
# Entries can be weighted

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.rolls aetlas.var
data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.entries aetlas.var
data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.total_weight aetlas.var

# Remove entries with unsuccessful conditions
data modify storage aetlas:traceback Entries append from storage aetlas:traceback Pool[-1].entries
data modify storage aetlas:traceback NewEntries append value []
execute store result score $aetlas.entries aetlas.var run data get storage aetlas:traceback Entries[-1]
function aetlas:table/pool/filter_entries
data modify storage aetlas:traceback Pool[-1].entries set from storage aetlas:traceback NewEntries[-1]
data remove storage aetlas:traceback NewEntries[-1]
data remove storage aetlas:traceback Entries[-1]

# Calculate the total weight of entries
data modify storage aetlas:traceback Entries append from storage aetlas:traceback Pool[-1].entries
execute store result score $aetlas.entries aetlas.var run data get storage aetlas:traceback Entries[-1]
scoreboard players set $aetlas.total_weight aetlas.var 0
function aetlas:table/pool/determine_total_weight
data remove storage aetlas:traceback Entries[-1]

# Calculate the number of rolls
execute unless data storage aetlas:traceback Pool[-1].rolls run scoreboard players set $aetlas.rolls aetlas.var 1
execute if data storage aetlas:traceback Pool[-1].rolls unless data storage aetlas:traceback Pool[-1].rolls.max store result score $aetlas.rolls aetlas.var run data get storage aetlas:traceback Pool[-1].rolls
execute if data storage aetlas:traceback Pool[-1].rolls.max store result score $aetlas.random.min aetlas.var run data get storage aetlas:traceback Pool[-1].rolls.max
execute if data storage aetlas:traceback Pool[-1].rolls.max store result score $aetlas.random.max aetlas.var run data get storage aetlas:traceback Pool[-1].rolls.max
execute if data storage aetlas:traceback Pool[-1].rolls.max run scoreboard players add $aetlas.random.max aetlas.var 1
execute if data storage aetlas:traceback Pool[-1].rolls.max run function aetlas:math/random_range
execute if data storage aetlas:traceback Pool[-1].rolls.max run scoreboard players operation $aetlas.rolls aetlas.var = $aetlas.random aetlas.var

# Call random entries unless there are no entries left
data modify storage aetlas:traceback Entries append from storage aetlas:traceback Pool[-1].entries
execute store result score $aetlas.entries aetlas.var run data get storage aetlas:traceback Entries[-1]
execute if score $aetlas.entries aetlas.var matches 1.. run function aetlas:table/pool/dice_rolls
data remove storage aetlas:traceback Entries[-1]

execute store result score $aetlas.total_weight aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]
execute store result score $aetlas.entries aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]
execute store result score $aetlas.rolls aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]