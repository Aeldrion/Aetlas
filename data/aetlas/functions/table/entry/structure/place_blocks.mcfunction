# Get current position (ignore pos.y if it was changed by a set_height function)
data modify storage aetlas:private Pos set from entity @s Pos
execute store result score $pos.x aetlas run data get storage aetlas:private Pos[0]
execute if score $pos.y aetlas matches -1 store result score $pos.y aetlas run data get storage aetlas:private Pos[1]
execute store result score $pos.z aetlas run data get storage aetlas:private Pos[2]
data remove storage aetlas:private Pos

# Apply positional offset (if any)
execute store result entity @s Pos[0] double 1 run scoreboard players operation $pos.x aetlas += $pos.dx aetlas
execute store result entity @s Pos[1] double 1 run scoreboard players operation $pos.y aetlas += $pos.dy aetlas
execute store result entity @s Pos[2] double 1 run scoreboard players operation $pos.z aetlas += $pos.dz aetlas

# Load chunk (if it is not loaded)
execute positioned as @s store result score $chunk_loaded aetlas if blocks ~ ~ ~ ~ ~ ~ ~ ~ ~ all
execute if score $chunk_loaded aetlas matches 0 positioned as @s run forceload add ~ ~

# Clone blocks before placing structure block and redstone block
execute positioned as @s run clone ~ ~ ~ ~ ~1 ~ -30000000 1 7760
execute positioned as @s run setblock ~ ~ ~ minecraft:structure_block{mode:"LOAD"}
execute positioned as @s run data modify block ~ ~ ~ {} merge from storage aetlas:private StructureBlockData
execute positioned as @s run setblock ~ ~1 ~ minecraft:redstone_block

# Restore old terrain if the structure block/redstone block didn't get removed (e.g. because of partial integrity)
execute positioned as @s if block ~ ~ ~ minecraft:structure_block run clone -30000000 1 7760 -30000000 1 7760 ~ ~ ~
execute positioned as @s if block ~ ~1 ~ minecraft:redstone_block run clone -30000000 2 7760 -30000000 2 7760 ~ ~1 ~

# Stop force loading if it was used to load the chunk
execute if score $chunk_loaded aetlas matches 0 positioned as @s run forceload remove ~ ~
tag @s remove aetlas.new
kill @s