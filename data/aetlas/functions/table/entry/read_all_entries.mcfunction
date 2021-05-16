# Reads all entries in the Entries list
# Used by the group entry

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $entries aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions_passed aetlas


# Read the entry if its conditions pass, or if it has no conditions
data modify storage aetlas:stack Entry append from storage aetlas:stack Entries[-1][-1]
scoreboard players set $conditions_passed aetlas 1
execute if data storage aetlas:stack Entry[-1].conditions run data modify storage aetlas:stack Conditions append from storage aetlas:stack Entry[-1].conditions
execute if data storage aetlas:stack Entry[-1].conditions store result score $conditions aetlas run data get storage aetlas:stack Conditions[-1]
execute if data storage aetlas:stack Entry[-1].conditions if score $conditions aetlas matches 1.. run function aetlas:table/condition/evaluate_all_conditions
execute if score $conditions_passed aetlas matches 1 run function aetlas:table/entry/read_entry
execute if data storage aetlas:stack Entry[-1].conditions run data remove storage aetlas:stack Conditions[-1]
data remove storage aetlas:stack Entry[-1]

# Loop this function
data remove storage aetlas:stack Entries[-1][-1]
scoreboard players remove $entries aetlas 1
execute if score $entries aetlas matches 1.. run function aetlas:table/entry/read_all_entries

execute store result score $conditions_passed aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $conditions aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $entries aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]