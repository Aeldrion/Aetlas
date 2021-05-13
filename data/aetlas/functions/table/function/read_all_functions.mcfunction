# Reads all functions in the Functions list

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions_passed aetlas

# Read the function if its conditions pass, or if it has no conditions
data modify storage aetlas:private Function set from storage aetlas:private Functions[0]
scoreboard players set $conditions_passed aetlas 1
execute if data storage aetlas:private Function.conditions run data modify storage aetlas:stack Conditions append from storage aetlas:private Function.conditions
execute if data storage aetlas:private Function.conditions store result score $conditions aetlas run data get storage aetlas:stack Conditions[-1]
execute if data storage aetlas:private Function.conditions if score $conditions aetlas matches 1.. run function aetlas:table/condition/evaluate_all_conditions
execute if score $conditions_passed aetlas matches 1 run function aetlas:table/function/read_function
execute if data storage aetlas:private Function.conditions run data remove storage aetlas:stack Conditions[-1]
data remove storage aetlas:private Function

# Loop this function
data remove storage aetlas:private Functions[0]
scoreboard players remove $functions aetlas 1
execute if score $functions aetlas matches 1.. run function aetlas:table/function/read_all_functions

execute store result score $conditions_passed aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $conditions aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]