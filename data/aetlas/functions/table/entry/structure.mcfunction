# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:private Structure set from storage aetlas:traceback Entry[-1]
data modify storage aetlas:private StructureBlockData.name set from storage aetlas:private Structure.name

# Read structure size
execute store result score $aetlas.structure.x aetlas.var run data get storage aetlas:private Structure.Size.x
execute store result score $aetlas.structure.y aetlas.var run data get storage aetlas:private Structure.Size.y
execute store result score $aetlas.structure.z aetlas.var run data get storage aetlas:private Structure.Size.z

# Set relative loading position of the structure block
execute store result storage aetlas:private StructureBlockData.posX int -0.5 run scoreboard players get $aetlas.structure.x aetlas.var
data modify storage aetlas:private StructureBlockData.posY set value 0
execute store result storage aetlas:private StructureBlockData.posZ int -0.5 run scoreboard players get $aetlas.structure.z aetlas.var

# Set default structure block position offset
scoreboard players set $aetlas.pos.dx aetlas.var 0
scoreboard players set $aetlas.pos.dy aetlas.var 0
scoreboard players set $aetlas.pos.dz aetlas.var 0

# Apply functions (aec_pos.y=-1 means the structure block's position wasn't yet modified by a set_height function)
scoreboard players set $aetlas.aec_pos.y aetlas.var -1
execute if data storage aetlas:private Structure.functions run data modify storage aetlas:private Functions set from storage aetlas:private Structure.functions
execute if data storage aetlas:private Structure.functions store result score $aetlas.functions aetlas.var run data get storage aetlas:private Functions
execute if data storage aetlas:private Structure.functions run function aetlas:table/function/read_all_functions
execute if data storage aetlas:private Structure.functions run data remove storage aetlas:private Functions

# Place the structure block and the redstone block at the correct position
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["aetlas", "aetlas.structure_block_placer", "aetlas.new"]}
execute as @e[type=minecraft:area_effect_cloud, tag=aetlas.structure_block_placer, tag=aetlas.new, limit=1] at @s run function aetlas:table/entry/structure/place_blocks

data remove storage aetlas:private StructureBlockData
data remove storage aetlas:private Structure