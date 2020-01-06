# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Runs n = $aetlas.rolls random entries in the Entries list
# Conditions are ignored, assuming they already pass because of filter_entries

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $aetlas.rolls aetlas.var

# Roll a die and loop this function
function aetlas:table/pool/dice_roll
scoreboard players remove $aetlas.rolls aetlas.var 1
execute if score $aetlas.rolls aetlas.var matches 1.. run function aetlas:table/pool/dice_rolls

execute store result score $aetlas.rolls aetlas.var run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]