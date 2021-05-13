# Reads all pools in a pool list, if conditions pass

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $pools aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $conditions_passed aetlas

# Only read pools whose conditions pass
data modify storage aetlas:stack Pool append from storage aetlas:stack Pools[-1][0]
scoreboard players set $conditions_passed aetlas 1
execute if data storage aetlas:stack Pool[-1].conditions run data modify storage aetlas:stack Conditions append from storage aetlas:stack Pool[-1].conditions
execute if data storage aetlas:stack Pool[-1].conditions store result score $conditions aetlas run data get storage aetlas:stack Conditions[-1]
execute if data storage aetlas:stack Pool[-1].conditions if score $conditions aetlas matches 1.. run function aetlas:table/condition/evaluate_all_conditions
execute if score $conditions_passed aetlas matches 1 run function aetlas:table/pool/read_pool
execute if data storage aetlas:stack Pool[-1].conditions run data remove storage aetlas:stack Conditions[-1]
data remove storage aetlas:stack Pool[-1]

# Loop this function
data remove storage aetlas:stack Pools[-1][0]
scoreboard players remove $pools aetlas 1
execute if score $pools aetlas matches 1.. run function aetlas:table/pool/read_all_pools

execute store result score $conditions_passed aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $conditions aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $pools aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]