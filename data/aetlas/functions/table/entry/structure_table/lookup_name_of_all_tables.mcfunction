scoreboard players reset $name_matches aetlas

data modify storage aetlas:private Table set from storage aetlas:private AllTables[0]
function aetlas:table/entry/structure_table/lookup_name_of_table
data remove storage aetlas:private Table

data remove storage aetlas:private AllTables[0]
scoreboard players remove $tables aetlas 1
execute if score $tables aetlas matches 1.. unless score $name_matches aetlas matches 1 run function aetlas:table/entry/structure_table/lookup_name_of_all_tables
