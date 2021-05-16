data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $condition_passed aetlas

data modify storage aetlas:stack Condition append from storage aetlas:stack Conditions[-1][-1]
function aetlas:table/condition/evaluate_condition
data remove storage aetlas:stack Condition[-1]

data remove storage aetlas:stack Conditions[-1][-1]
scoreboard players remove $conditions aetlas 1
execute if score $conditions aetlas matches 1.. if score $condition_passed aetlas matches 1 run function aetlas:table/condition/evaluate_all_conditions
execute if score $condition_passed aetlas matches 0 run scoreboard players set $conditions_passed aetlas 0

execute store result score $condition_passed aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $conditions aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]