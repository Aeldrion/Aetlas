# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players operation @s aetlas.chunk.x = $aetlas aetlas.chunk.x
scoreboard players operation @s aetlas.chunk.z = $aetlas aetlas.chunk.z

function #aetlas:chunk
summon minecraft:area_effect_cloud ~ ~ ~ {UUIDLeast:1L, UUIDMost:49101603096664772L, Tags: ["aetlas", "aetlas.structure_generator"]}
execute as 00ae71a5-da7a-9ac4-0000-000000000001 at @s run function aetlas:chunk_scan/attempt_generation
kill 00ae71a5-da7a-9ac4-0000-000000000001