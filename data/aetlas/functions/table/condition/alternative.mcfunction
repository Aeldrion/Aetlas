data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions_passed aetlas

data modify storage aetlas:stack Conditions append from storage aetlas:stack Condition[-1].terms
execute store result score $conditions aetlas run data get storage aetlas:stack Conditions[-1]
execute if score $conditions aetlas matches 1.. run function aetlas:table/condition/evaluate_all_conditions_until_one_passes
data remove storage aetlas:stack Conditions[-1]

execute store result score $conditions_passed aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $conditions aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]