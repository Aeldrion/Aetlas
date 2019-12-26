# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Returns $aetlas.total_weight which is the sum of weights of all entries in the Entries list
# $aetlas.total_weight must be set to 0 beforehand
# Number of entries has to be stored to $aetlas.entries beforehand

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.weight aetlas.var

# Get entry's weight
data modify storage aetlas:traceback Entry append from storage aetlas:traceback Entries[-1][0]
function aetlas:table/entry/get_weight
data remove storage aetlas:traceback Entry[-1]

# Loop this function
data remove storage aetlas:traceback Entries[-1][0]
scoreboard players operation $aetlas.total_weight aetlas.var += $aetlas.weight aetlas.var
scoreboard players remove $aetlas.entries aetlas.var 1
execute if score $aetlas.entries aetlas.var matches 1.. run function aetlas:table/pool/determine_total_weight

execute store result score $aetlas.weight aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]