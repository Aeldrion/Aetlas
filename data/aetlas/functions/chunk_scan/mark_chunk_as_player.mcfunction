# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

summon minecraft:area_effect_cloud ~ 0 ~ {UUIDLeast:0L, UUIDMost:49101603096664772L, Tags: ["aetlas"]}
execute as 00ae71a5-da7a-9ac4-0000-000000000000 run function aetlas:chunk_scan/teleport_to_chunk_corner
execute as 00ae71a5-da7a-9ac4-0000-000000000000 run function aetlas:chunk_scan/get_chunk_position
execute at 00ae71a5-da7a-9ac4-0000-000000000000 positioned ~13 ~ ~4 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
kill 00ae71a5-da7a-9ac4-0000-000000000000