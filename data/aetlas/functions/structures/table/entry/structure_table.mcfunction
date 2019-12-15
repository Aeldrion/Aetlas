# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] run scoreboard players get $aetlas.tables aetlas.var
data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] run scoreboard players get $aetlas.name_matches aetlas.var

# Comparing name of every table to the specified structure table name
# AllTables does not need to be in aetlas:traceback because looking up the name of tables does not ultimately run this function
data modify storage aetlas:traceback StructureTableName append from storage aetlas:traceback Entry[-1]."name"
scoreboard players set $aetlas.name_matches aetlas.var 0

data modify storage aetlas:private AllTables set from storage aetlas:input Tables
execute store result score $aetlas.tables aetlas.var run data get storage aetlas:private AllTables
function aetlas:structures/table/entry/structure_table/lookup_name_of_all_tables
data remove storage aetlas:private AllTables

data remove storage aetlas:traceback StructureTableName[-1]

# If a table with the correct name was found, call it
execute if score $aetlas.name_matches aetlas.var matches 1 run function aetlas:structures/table/entry/structure_table/call

execute store result score $aetlas.name_matches aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]
execute store result score $aetlas.tables aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]