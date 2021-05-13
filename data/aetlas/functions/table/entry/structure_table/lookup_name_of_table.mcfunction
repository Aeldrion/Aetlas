# Check if the name is different and invert
execute store success score $name_matches aetlas run data modify storage aetlas:private Table.name set from storage aetlas:stack StructureTableName[-1]
execute store success score $name_matches aetlas if score $name_matches aetlas matches 0

# If the name matches, target the table
execute if score $name_matches aetlas matches 1 run data modify storage aetlas:private TargetTable set from storage aetlas:private Table
