# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

function aetlas:math/seed

data modify storage aetlas:traceback Table append from storage aetlas:input Tables[{"name": "root"}]
function aetlas:structures/table/read_structure_table
data remove storage aetlas:traceback Table[-1]
