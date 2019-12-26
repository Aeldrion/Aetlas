# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players reset $aetlas.name_matches aetlas.var

data modify storage aetlas:private Table set from storage aetlas:private AllTables[0]
function aetlas:table/entry/structure_table/lookup_name_of_table

data remove storage aetlas:private AllTables[0]
scoreboard players remove $aetlas.tables aetlas.var 1
execute if score $aetlas.tables aetlas.var matches 1.. unless score $aetlas.name_matches aetlas.var matches 1 run function aetlas:table/entry/structure_table/lookup_name_of_all_tables
