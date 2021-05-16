# Returns $total_weight which is the sum of weights of all entries in the Entries list
# $total_weight must be set to 0 beforehand
# Number of entries has to be stored to $entries beforehand

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $weight aetlas

# Get entry's weight
data modify storage aetlas:stack Entry append from storage aetlas:stack Entries[-1][-1]
function aetlas:table/entry/get_weight
data remove storage aetlas:stack Entry[-1]

# Loop this function
data remove storage aetlas:stack Entries[-1][-1]
scoreboard players operation $total_weight aetlas += $weight aetlas
scoreboard players remove $entries aetlas 1
execute if score $entries aetlas matches 1.. run function aetlas:table/pool/determine_total_weight

execute store result score $weight aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]