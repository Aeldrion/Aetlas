#> aetlas:chunk_scan/summon_chunk_markers
#
# Summons new chunk markers in every cardinal direction and removes the executing marker once all four neighboring chunks have been marked
#
# @within aetlas:chunk_scan/player_loop
# @context a marker at y=0
# @private

# Get current coordinates
scoreboard players operation $aetlas aetlas.chunk.x = @s aetlas.chunk.x
scoreboard players operation $aetlas aetlas.chunk.z = @s aetlas.chunk.z

# East
scoreboard players add $aetlas aetlas.chunk.x 1
scoreboard players set $chunk_loaded aetlas 1
execute positioned ~16 ~ ~ if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~16 ~ ~ if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_east

# South
scoreboard players remove $aetlas aetlas.chunk.x 1
scoreboard players add $aetlas aetlas.chunk.z 1
scoreboard players set $chunk_loaded aetlas 1
execute positioned ~ ~ ~16 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~ ~ ~16 if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_south

# West
scoreboard players remove $aetlas aetlas.chunk.x 1
scoreboard players remove $aetlas aetlas.chunk.z 1
scoreboard players set $chunk_loaded aetlas 1
execute positioned ~-16 ~ ~ if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~-16 ~ ~ if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_west

# East
scoreboard players add $aetlas aetlas.chunk.x 1
scoreboard players remove $aetlas aetlas.chunk.z 1
scoreboard players set $chunk_loaded aetlas 1
execute positioned ~ ~ ~-16 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~ ~ ~-16 if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_north

kill @s[tag=aetlas.chunk_marker.marked_east, tag=aetlas.chunk_marker.marked_south, tag=aetlas.chunk_marker.marked_west, tag=aetlas.chunk_marker.marked_north]
