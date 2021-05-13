# Reads a structure table

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $pools aetlas

data modify storage aetlas:stack Pools append from storage aetlas:stack Table[-1].pools
execute store result score $pools aetlas run data get storage aetlas:stack Pools[-1]
function aetlas:table/pool/read_all_pools
data remove storage aetlas:stack Pools[-1]

execute store result score $pools aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]