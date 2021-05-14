#> aetlas:chunk_scan/mark_chunk_as_player
#
# Marks the chunk a player is in, if it hasn't been marked already
#
# @within aetlas:chunk_scan/player_loop
# @context a player and their position but at y=0
# @private

summon minecraft:marker ~ 0 ~ {Tags: ["aetlas", "aetlas.new", "aetlas.mark_chunk_as_player"]}
execute as @e[type=minecraft:marker, tag=aetlas.mark_chunk_as_player, limit=1] run function aetlas:chunk_scan/teleport_to_chunk_corner
execute as @e[type=minecraft:marker, tag=aetlas.mark_chunk_as_player, limit=1] run function aetlas:chunk_scan/get_chunk_position
execute at @e[type=minecraft:marker, tag=aetlas.mark_chunk_as_player, limit=1] positioned ~13 ~ ~4 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
kill @e[type=minecraft:marker, tag=aetlas.mark_chunk_as_player, limit=1] 