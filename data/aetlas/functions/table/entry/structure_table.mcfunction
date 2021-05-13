data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $tables aetlas
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $name_matches aetlas

# Comparing name of every table to the specified structure table name
# AllTables does not need to be in aetlas:stack because looking up the name of tables does not ultimately run this function
data modify storage aetlas:stack StructureTableName append from storage aetlas:stack Entry[-1].name
scoreboard players set $name_matches aetlas 0

data modify storage aetlas:private AllTables set from storage aetlas:data Tables
execute store result score $tables aetlas run data get storage aetlas:private AllTables
function aetlas:table/entry/structure_table/lookup_name_of_all_tables
data remove storage aetlas:private AllTables

data remove storage aetlas:stack StructureTableName[-1]

# If a table with the correct name was found, call it
execute if score $name_matches aetlas matches 1 run function aetlas:table/entry/structure_table/call

execute store result score $name_matches aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $tables aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]