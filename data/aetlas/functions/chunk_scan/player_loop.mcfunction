# Makes players summon new chunk markers relative to nearby chunk markers, and mark the current chunk if there is no chunk marker nearby

execute unless entity @e[type=minecraft:marker, tag=aetlas.chunk_marker, distance=..32] run function aetlas:chunk_scan/mark_chunk_as_player
execute as @e[type=minecraft:marker, tag=aetlas.chunk_marker, distance=..192] at @s run function aetlas:chunk_scan/summon_chunk_markers