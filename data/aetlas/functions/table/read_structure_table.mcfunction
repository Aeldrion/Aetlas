#> aetlas:table/read_structure_table
#
# Reads a single structure table
#
# @within aetlas:table/read_structure_tables
# @private
# @input
#	storage
#		aetlas:stack Table[-1]
#			id
#				A unique identifier to avoid adding tables multiple times
#			Pools
#				A list of pools

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $pools aetlas

data modify storage aetlas:stack Pools append from storage aetlas:stack Table[-1].pools
execute store result score $pools aetlas run data get storage aetlas:stack Pools[-1]
function aetlas:table/pool/read_all_pools
data remove storage aetlas:stack Pools[-1]

execute store result score $pools aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]