#> aetlas:table/read_structure_tables
#
# Recursive. Loops through structure tables
#
# @within aetlas:chunk_scan/attempt_generation
# @within aetlas:table/read_structure_tables
# @private
# @input
#	storage
#		aetlas:private Tables
#	score
#		$tables aetlas
#			The number of structure tables remaining

data modify storage aetlas:stack Table append from storage aetlas:private Tables[-1]
data remove storage aetlas:private Tables[-1]
function aetlas:table/read_structure_table
scoreboard players remove $tables aetlas 1
execute if score $tables aetlas matches 1.. run function aetlas:table/read_structure_tables