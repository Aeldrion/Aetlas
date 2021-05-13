# Adds the weight of all entries in the Entries list in order until the sum is greater than $weight_index, and returns the last entry
# For example, if $weight_index is 30 and weights are 18, 6, 9, 12, 15, the third entry will be returned because 18+6 <= 30 and 18+6+9 > 30
# Entry must be set to an empty compound beforehand
# $weight_sum must be set to 0 beforehand

# Add to the sum
data modify storage aetlas:stack Entry[-1] set from storage aetlas:stack Entries[-1][0]
execute unless data storage aetlas:stack Entry[-1].weight run scoreboard players set $weight aetlas 1
execute if data storage aetlas:stack Entry[-1].weight store result score $weight aetlas run data get storage aetlas:stack Entry[-1].weight
scoreboard players operation $weight_sum aetlas += $weight aetlas
data remove storage aetlas:stack Entries[-1][0]

# Loop this function
execute if score $weight_sum aetlas <= $weight_index aetlas run function aetlas:table/pool/get_entry_at_weight_index

# When this function ends, the first command has already set Entry to the correct entry
# Counting down the number of entries is unnecessary because weight_index is always lower than the global weight, therefore this function never repeats itself when the Entries list is empty