#> aetlas:chunk_scan/attempt_generation
#
# Parses the global structure table to attempt to generate structures in the current chunk
#
# @within aetlas:chunk_scan/new_marker_init
# @context a new chunk marker and its position
# @private

function aetlas:math/seed

data modify storage aetlas:private Tables set from storage aetlas:input Tables
execute store result score $tables aetlas run data get storage aetlas:private Tables
execute if score $tables aetlas matches 1.. run function aetlas:table/read_structure_tables