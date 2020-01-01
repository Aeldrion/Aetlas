# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players operation $aetlas aetlas.chunk.x = @s aetlas.chunk.x
scoreboard players operation $aetlas aetlas.chunk.z = @s aetlas.chunk.z

scoreboard players add $aetlas aetlas.chunk.x 1
scoreboard players set $aetlas.chunk_loaded aetlas.var 1
execute unless entity @s[tag=aetlas.chunk_marker.marked_east] store success score #aetlas.chunk_loaded aetlas.var if blocks ~16 ~ ~ ~16 ~ ~ ~16 ~ ~ all
execute if score #aetlas.chunk_loaded aetlas.var matches 0 run forceload add ~16 ~
execute positioned ~16 ~ ~ if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~16 ~ ~ if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_east
execute if score #aetlas.chunk_loaded aetlas.var matches 0 run forceload remove ~16 ~

scoreboard players remove $aetlas aetlas.chunk.x 1
scoreboard players add $aetlas aetlas.chunk.z 1
scoreboard players set $aetlas.chunk_loaded aetlas.var 1
execute unless entity @s[tag=aetlas.chunk_marker.marked_south] store success score #aetlas.chunk_loaded aetlas.var if blocks ~ ~ ~16 ~ ~ ~16 ~ ~ ~16 all
execute if score #aetlas.chunk_loaded aetlas.var matches 0 run forceload add ~ ~16
execute positioned ~ ~ ~16 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~ ~ ~16 if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_south
execute if score #aetlas.chunk_loaded aetlas.var matches 0 run forceload remove ~ ~16

scoreboard players remove $aetlas aetlas.chunk.x 1
scoreboard players remove $aetlas aetlas.chunk.z 1
scoreboard players set $aetlas.chunk_loaded aetlas.var 1
execute unless entity @s[tag=aetlas.chunk_marker.marked_west] store success score #aetlas.chunk_loaded aetlas.var if blocks ~-16 ~ ~ ~-16 ~ ~ ~-16 ~ ~ all
execute if score #aetlas.chunk_loaded aetlas.var matches 0 run forceload add ~-16 ~
execute positioned ~-16 ~ ~ if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~-16 ~ ~ if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_west
execute if score #aetlas.chunk_loaded aetlas.var matches 0 run forceload remove ~-16 ~

scoreboard players add $aetlas aetlas.chunk.x 1
scoreboard players remove $aetlas aetlas.chunk.z 1
scoreboard players set $aetlas.chunk_loaded aetlas.var 1
execute unless entity @s[tag=aetlas.chunk_marker.marked_north] store success score #aetlas.chunk_loaded aetlas.var if blocks ~ ~ ~-16 ~ ~ ~-16 ~ ~ ~-16 all
execute if score #aetlas.chunk_loaded aetlas.var matches 0 run forceload add ~ ~-16
execute positioned ~ ~ ~-16 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute positioned ~ ~ ~-16 if block ~ ~ ~ #aetlas:marked_base_layer run tag @s add aetlas.chunk_marker.marked_north
execute if score #aetlas.chunk_loaded aetlas.var matches 0 run forceload remove ~ ~-16

kill @s[tag=aetlas.chunk_marker.marked_east, tag=aetlas.chunk_marker.marked_south, tag=aetlas.chunk_marker.marked_west, tag=aetlas.chunk_marker.marked_north]
