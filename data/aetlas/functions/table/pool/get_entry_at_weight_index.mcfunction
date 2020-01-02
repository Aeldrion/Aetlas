# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Adds the weight of all entries in the Entries list in order until the sum is greater than $aetlas.weight_index, and returns the last entry
# For example, if $aetlas.weight_index is 30 and weights are 18, 6, 9, 12, 15, the third entry will be returned because 18+6 <= 30 and 18+6+9 > 30
# Entry must be set to an empty compound beforehand
# $aetlas.weight_sum must be set to 0 beforehand

# Add to the sum
data modify storage aetlas:traceback Entry[-1] set from storage aetlas:traceback Entries[-1][0]
execute unless data storage aetlas:traceback Entry[-1].weight run scoreboard players set $aetlas.weight aetlas.var 1
execute if data storage aetlas:traceback Entry[-1].weight store result score $aetlas.weight aetlas.var run data get storage aetlas:traceback Entry[-1].weight
scoreboard players operation $aetlas.weight_sum aetlas.var += $aetlas.weight aetlas.var
data remove storage aetlas:traceback Entries[-1][0]

# Loop this function
execute if score $aetlas.weight_sum aetlas.var <= $aetlas.weight_index aetlas.var run function aetlas:table/pool/get_entry_at_weight_index

# When this function ends, the first command has already set Entry to the correct entry
# Counting down the number of entries is unnecessary because weight_index is always lower than the global weight, therefore this function never repeats itself when the Entries list is empty