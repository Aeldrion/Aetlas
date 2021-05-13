# Parses the global structure table to attempt to generate structures in the current chunk

function aetlas:math/seed

data modify storage aetlas:stack Table append from storage aetlas:root_table
function aetlas:table/read_structure_table
data remove storage aetlas:stack Table[-1]