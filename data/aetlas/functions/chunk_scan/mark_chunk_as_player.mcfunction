# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Marks the chunk a player is in, if it hasn't been marked already

summon minecraft:area_effect_cloud ~ 0 ~ {Tags: ["aetlas", "aetlas.new", "aetlas.mark_chunk_as_player"]}
execute as @e[type=minecraft:area_effect_cloud, tag=aetlas.mark_chunk_as_player, limit=1] run function aetlas:chunk_scan/teleport_to_chunk_corner
execute as @e[type=minecraft:area_effect_cloud, tag=aetlas.mark_chunk_as_player, limit=1] run function aetlas:chunk_scan/get_chunk_position
execute at @e[type=minecraft:area_effect_cloud, tag=aetlas.mark_chunk_as_player, limit=1] positioned ~13 ~ ~4 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
kill @e[type=minecraft:area_effect_cloud, tag=aetlas.mark_chunk_as_player, limit=1] 