#> aetlas:chunk_scan/attempt_generation
#
# Parses the global structure table to attempt to generate structures in the current chunk
#
# @within aetlas:chunk_scan/new_marker_init
# @context a new chunk marker and its position
# @private

function aetlas:math/seed

data modify storage aetlas:stack Table append from storage aetlas:input StructureTable
function aetlas:table/read_structure_table
data remove storage aetlas:stack Table[-1]