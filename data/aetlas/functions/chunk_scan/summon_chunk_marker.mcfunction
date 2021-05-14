#> aetlas:chunk_scan/summon_chunk_marker
#
# Summons a chunk marker, notifies data packs who care and attempts structure generation
#
# @within aetlas:chunk_scan/mark_chunk_as_player
# @within aetlas:chunk_scan/summon_chunk_markers
# @context a marker's position
# @private

summon minecraft:marker ~ ~ ~ {Tags: ["aetlas", "aetlas.chunk_marker", "aetlas.new"]}
execute if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:obsidian
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:void_air
execute as @e[type=minecraft:marker, tag=aetlas.new, distance=..1, limit=1] at @s run function aetlas:chunk_scan/new_marker_init
