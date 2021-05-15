#> aetlas:chunk_scan/player_loop
#
# Makes players summon new chunk markers relative to nearby chunk markers, and mark the current chunk if there is no chunk marker nearby
#
# @within aetlas:chunk_scan/loop
# @context a player and their position but at y=0
# @private

# If there is no marker in the current chunk and around, summon a new one
execute unless entity @e[type=minecraft:marker, tag=aetlas.chunk_marker, distance=..32] run function aetlas:chunk_scan/mark_chunk_as_player

# Summon new chunk markers in chunks adjacent to those already scanned
execute as @e[type=minecraft:marker, tag=aetlas.chunk_marker, distance=..512] at @s run function aetlas:chunk_scan/summon_chunk_markers