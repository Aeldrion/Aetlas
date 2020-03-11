# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Executed as a chunk marker at y=0, summons new chunk markers in every cardinal direction and removes the executing marker once all four neighboring chunks have been marked

scoreboard players operation $aetlas aetlas.chunk.x = @s aetlas.chunk.x
scoreboard players operation $aetlas aetlas.chunk.z = @s aetlas.chunk.z

scoreboard players add $aetlas aetlas.chunk.x 1
scoreboard players set $aetlas.chunk_loaded aetlas.var 1
execute positioned ~16 ~ ~ if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~16 ~ ~ if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_east

scoreboard players remove $aetlas aetlas.chunk.x 1
scoreboard players add $aetlas aetlas.chunk.z 1
scoreboard players set $aetlas.chunk_loaded aetlas.var 1
execute positioned ~ ~ ~16 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~ ~ ~16 if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_south

scoreboard players remove $aetlas aetlas.chunk.x 1
scoreboard players remove $aetlas aetlas.chunk.z 1
scoreboard players set $aetlas.chunk_loaded aetlas.var 1
execute positioned ~-16 ~ ~ if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~-16 ~ ~ if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_west

scoreboard players add $aetlas aetlas.chunk.x 1
scoreboard players remove $aetlas aetlas.chunk.z 1
scoreboard players set $aetlas.chunk_loaded aetlas.var 1
execute positioned ~ ~ ~-16 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~ ~ ~-16 if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_north

kill @s[tag=aetlas.chunk_marker.marked_east, tag=aetlas.chunk_marker.marked_south, tag=aetlas.chunk_marker.marked_west, tag=aetlas.chunk_marker.marked_north]
