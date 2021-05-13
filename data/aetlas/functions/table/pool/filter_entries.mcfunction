# Copy Entries to NewEntries, removing entries whose conditions do not pass
# NewEntries must be set to an empty list beforehand, and number of entries has to be stored to $entries beforehand

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $entries aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions_passed aetlas

# Append entry to NewEntries if its conditions pass, or if it has no conditions
data modify storage aetlas:stack Entry append from storage aetlas:stack Entries[-1][0]
scoreboard players set $conditions_passed aetlas 1
execute if data storage aetlas:stack Entry[-1].conditions run data modify storage aetlas:stack Conditions append from storage aetlas:stack Entry[-1].conditions
execute if data storage aetlas:stack Entry[-1].conditions store result score $conditions aetlas run data get storage aetlas:stack Conditions[-1]
execute if data storage aetlas:stack Entry[-1].conditions if score $conditions aetlas matches 1.. run function aetlas:table/condition/evaluate_all_conditions
execute if score $conditions_passed aetlas matches 1 run data modify storage aetlas:stack NewEntries[-1] append from storage aetlas:stack Entry[-1]
execute if data storage aetlas:stack Entry[-1].conditions run data remove storage aetlas:stack Conditions[-1]
data remove storage aetlas:stack Entry[-1]

# Loop this function
data remove storage aetlas:stack Entries[-1][0]
scoreboard players remove $entries aetlas 1
execute if score $entries aetlas matches 1.. run function aetlas:table/pool/filter_entries

execute store result score $conditions_passed aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $conditions aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $entries aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]