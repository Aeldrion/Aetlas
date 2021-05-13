# Runs n = $rolls random entries in the Entries list
# Conditions are ignored, assuming they already pass because of filter_entries

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $rolls aetlas

# Roll a die and loop this function
function aetlas:table/pool/dice_roll
scoreboard players remove $rolls aetlas 1
execute if score $rolls aetlas matches 1.. run function aetlas:table/pool/dice_rolls

execute store result score $rolls aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]