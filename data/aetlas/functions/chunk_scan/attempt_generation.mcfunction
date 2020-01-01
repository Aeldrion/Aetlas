# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

function aetlas:math/seed

data modify storage aetlas:traceback Table append from storage aetlas:root_table
function aetlas:table/read_structure_table
data remove storage aetlas:traceback Table[-1]

data modify storage aetlas:root_table "pools" set value [{"rolls": 1, "entries": [{"type": "minecraft:structure", "name": "minecraft:confederate_flag", "Size": {"x": 1, "y": 5, "z": 7}, "functions": [{"function": "aetlas:set_height", "height": 110}]}]}]