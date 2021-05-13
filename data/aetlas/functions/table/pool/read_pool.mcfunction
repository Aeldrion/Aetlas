# Reads a pool and runs its entries if conditions pass
# Number of entries is determined by rolls and entries can be weighted

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $rolls aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $entries aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $total_weight aetlas

# Remove entries with unsuccessful conditions
data modify storage aetlas:stack Entries append from storage aetlas:stack Pool[-1].entries
data modify storage aetlas:stack NewEntries append value []
execute store result score $entries aetlas run data get storage aetlas:stack Entries[-1]
function aetlas:table/pool/filter_entries
data modify storage aetlas:stack Pool[-1].entries set from storage aetlas:stack NewEntries[-1]
data remove storage aetlas:stack NewEntries[-1]
data remove storage aetlas:stack Entries[-1]

# Calculate the total weight of entries
data modify storage aetlas:stack Entries append from storage aetlas:stack Pool[-1].entries
execute store result score $entries aetlas run data get storage aetlas:stack Entries[-1]
scoreboard players set $total_weight aetlas 0
function aetlas:table/pool/determine_total_weight
data remove storage aetlas:stack Entries[-1]

# Calculate the number of rolls
execute unless data storage aetlas:stack Pool[-1].rolls run scoreboard players set $rolls aetlas 1
execute if data storage aetlas:stack Pool[-1].rolls unless data storage aetlas:stack Pool[-1].rolls.max store result score $rolls aetlas run data get storage aetlas:stack Pool[-1].rolls
execute if data storage aetlas:stack Pool[-1].rolls.max store result score $random.min aetlas run data get storage aetlas:stack Pool[-1].rolls.max
execute if data storage aetlas:stack Pool[-1].rolls.max store result score $random.max aetlas run data get storage aetlas:stack Pool[-1].rolls.max
execute if data storage aetlas:stack Pool[-1].rolls.max run scoreboard players add $random.max aetlas 1
execute if data storage aetlas:stack Pool[-1].rolls.max run function aetlas:math/random_range
execute if data storage aetlas:stack Pool[-1].rolls.max run scoreboard players operation $rolls aetlas = $random aetlas

# Call random entries unless there are no entries left
data modify storage aetlas:stack Entries append from storage aetlas:stack Pool[-1].entries
execute store result score $entries aetlas run data get storage aetlas:stack Entries[-1]
execute if score $entries aetlas matches 1.. run function aetlas:table/pool/dice_rolls
data remove storage aetlas:stack Entries[-1]

execute store result score $total_weight aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $entries aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $rolls aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]