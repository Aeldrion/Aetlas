data modify storage aetlas:private Structure set from storage aetlas:stack Entry[-1]
data modify storage aetlas:private StructureBlockData.name set from storage aetlas:private Structure.name

# Read structure size
execute store result score $size.x aetlas run data get storage aetlas:private Structure.Size.x
execute store result score $size.y aetlas run data get storage aetlas:private Structure.Size.y
execute store result score $size.z aetlas run data get storage aetlas:private Structure.Size.z

# Set relative loading position of the structure block
execute store result storage aetlas:private StructureBlockData.posX int -0.5 run scoreboard players get $size.x aetlas
data modify storage aetlas:private StructureBlockData.posY set value 0
execute store result storage aetlas:private StructureBlockData.posZ int -0.5 run scoreboard players get $size.z aetlas

# Set default structure block position offset
scoreboard players set $pos.dx aetlas 0
scoreboard players set $pos.dy aetlas 0
scoreboard players set $pos.dz aetlas 0

# Apply functions (pos.y with no value means the structure block's position wasn't yet modified by a set_height function)
scoreboard players reset $pos.y aetlas
execute if data storage aetlas:private Structure.functions run data modify storage aetlas:private Functions set from storage aetlas:private Structure.functions
execute if data storage aetlas:private Structure.functions store result score $functions aetlas run data get storage aetlas:private Functions
execute if data storage aetlas:private Structure.functions run function aetlas:table/function/read_all_functions
execute if data storage aetlas:private Structure.functions run data remove storage aetlas:private Functions

# Place the structure block and the redstone block at the correct position
summon minecraft:marker ~ ~ ~ {Tags: ["aetlas", "aetlas.structure_block_placer", "aetlas.new"]}
execute as @e[type=minecraft:marker, tag=aetlas.structure_block_placer, tag=aetlas.new, limit=1] at @s run function aetlas:table/entry/structure/place_blocks

data remove storage aetlas:private StructureBlockData
data remove storage aetlas:private Structure