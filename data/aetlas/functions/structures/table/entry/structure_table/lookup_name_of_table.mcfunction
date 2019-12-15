# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Check if the name is different and invert
execute store success score $aetlas.name_matches aetlas.var run data modify storage Table."name" set from storage aetlas:traceback StructureTableName[-1]
execute store success score $aetlas.name_matches aetlas.var if score $aetlas.name_matches aetlas.var matches 0

# If the name matches, target the table
execute if score $aetlas.name_matches aetlas.var matches 1 run data modify storage aetlas:private TargetTable set from Table
