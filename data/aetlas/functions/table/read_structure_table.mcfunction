# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Reads all pools in a table, if conditions pass

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $aetlas.pools aetlas.var

data modify storage aetlas:stack Pools append from storage aetlas:stack Table[-1].pools
execute store result score $aetlas.pools aetlas.var run data get storage aetlas:stack Pools[-1]
function aetlas:table/pool/read_all_pools

execute store result score $aetlas.pools aetlas.var run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]