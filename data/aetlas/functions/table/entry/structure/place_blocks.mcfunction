# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Get current position (ignore pos.y if it was changed by a set_height function)
data modify storage aetlas:private Pos set from entity @s Pos
execute store result score $aetlas.pos.x aetlas.var run data get storage aetlas:private Pos[0]
execute if score $aetlas.pos.y aetlas.var matches -1 store result score $aetlas.pos.y aetlas.var run data get storage aetlas:private Pos[1]
execute store result score $aetlas.pos.z aetlas.var run data get storage aetlas:private Pos[2]
data remove storage aetlas:private Pos

# Apply positional offset (if any)
execute store result entity @s Pos[0] float 1 run scoreboard players operation $aetlas.pos.x aetlas.var += $aetlas.pos.dx aetlas.var
execute store result entity @s Pos[1] float 1 run scoreboard players operation $aetlas.pos.y aetlas.var += $aetlas.pos.dy aetlas.var
execute store result entity @s Pos[2] float 1 run scoreboard players operation $aetlas.pos.z aetlas.var += $aetlas.pos.dz aetlas.var

# Load chunk (if it is not loaded)
execute positioned as @s store result score $aetlas.chunk_loaded aetlas.var if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
execute if score $aetlas.chunk_loaded aetlas.var matches 0 positioned as @s run forceload add ~ ~

# Clone blocks before placing structure block and redstone block
execute positioned as @s run clone ~ ~ ~ ~ ~1 ~ -30000000 1 7760
execute positioned as @s run setblock ~ ~ ~ minecraft:structure_block
execute positioned as @s run data modify block ~ ~ ~ {} merge from storage aetlas:private StructureBlockData
execute positioned as @s run setblock ~ ~1 ~ minecraft:redstone_block

# Restore old terrain if the structure block/redstone block didn't get removed (e.g. because of partial integrity)
execute positioned as @s if block ~ ~ ~ minecraft:structure_block run clone -30000000 1 7760 -30000000 1 7760 ~ ~ ~
execute positioned as @s if block ~ ~1 ~ minecraft:redstone_block run clone -30000000 2 7760 -30000000 2 7760 ~ ~1 ~

# Stop force loading if it was used to load the chunk
execute if score $aetlas.chunk_loaded aetlas.var matches 0 positioned as @s run forceload remove ~ ~
