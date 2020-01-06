# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

function aetlas:math/seed

data modify storage aetlas:stack Table append from storage aetlas:root_table
function aetlas:table/read_structure_table
data remove storage aetlas:stack Table[-1]