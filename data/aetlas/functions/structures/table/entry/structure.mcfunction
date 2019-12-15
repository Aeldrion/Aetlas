# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:private Structure set from storage aetlas:traceback Entry[-1]
data modify storage aetlas:private StructureBlockData.name set from storage aetlas:private Structure."name"

execute store result score $aetlas.structure.x aetlas.var run data get storage aetlas:private Structure."Size"."x"
execute store result score $aetlas.structure.y aetlas.var run data get storage aetlas:private Structure."Size"."y"
execute store result score $aetlas.structure.z aetlas.var run data get storage aetlas:private Structure."Size"."z"

execute if data storage aetlas:private Structure."functions" run data modify storage aetlas:private Functions set from storage aetlas:private Structure."functions"
execute if data storage aetlas:private Structure."functions" store result score $aetlas.functions aetlas.var run data get storage aetlas:private Functions
execute if data storage aetlas:private Structure."functions" run function aetlas:structures/table/function/read_all_functions
execute if data storage aetlas:private Structure."functions" run data remove storage aetlas:private Functions

data remove storage aetlas:private StructureBlockData
data remove storage aetlas:private Structure