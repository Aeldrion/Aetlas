# Runs a random entry in the Entries list
# Conditions are ignored, assuming they already pass because of filter_entries

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $weight_index aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $weight_sum aetlas

# Set a random weight index
scoreboard players operation $random.max aetlas = $total_weight aetlas
function aetlas:math/random
scoreboard players operation $weight_index aetlas = $random aetlas

# Run the entry at this weight index
data modify storage aetlas:stack Entry append value {}
scoreboard players set $weight_sum aetlas 0
function aetlas:table/pool/get_entry_at_weight_index
function aetlas:table/entry/read_entry
scoreboard players remove $rolls aetlas 1
data remove storage aetlas:stack Entry[-1]

execute store result score $weight_sum aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $weight_index aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]