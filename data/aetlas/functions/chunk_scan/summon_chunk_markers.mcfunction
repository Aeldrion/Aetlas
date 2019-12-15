# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players operation $aetlas aetlas.chunk.x = @s aetlas.chunk.x
scoreboard players operation $aetlas aetlas.chunk.z = @s aetlas.chunk.z

scoreboard players add $aetlas aetlas.chunk.x 1
execute store success score #aetlas.chunk_loaded aestd.var if blocks ~16 ~ ~ ~16 ~ ~ ~16 ~ ~ all
execute if score #aetlas.chunk_loaded aestd.var matches 1 run forceload add ~16 ~
execute positioned ~16 ~ ~ if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute if score #aetlas.chunk_loaded aestd.var matches 1 run forceload remove ~16 ~

scoreboard players remove $aetlas aetlas.chunk.x 1
scoreboard players add $aetlas aetlas.chunk.z 1
execute store success score #aetlas.chunk_loaded aestd.var if blocks ~ ~ ~16 ~ ~ ~16 ~ ~ ~16 all
execute if score #aetlas.chunk_loaded aestd.var matches 1 run forceload add ~ ~16
execute positioned ~ ~ ~16 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute if score #aetlas.chunk_loaded aestd.var matches 1 run forceload remove ~ ~16

scoreboard players remove $aetlas aetlas.chunk.x 1
scoreboard players remove $aetlas aetlas.chunk.z 1
execute store success score #aetlas.chunk_loaded aestd.var if blocks ~-16 ~ ~ ~-16 ~ ~ ~-16 ~ ~ all
execute if score #aetlas.chunk_loaded aestd.var matches 1 run forceload add ~-16 ~
execute positioned ~-16 ~ ~ if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute if score #aetlas.chunk_loaded aestd.var matches 1 run forceload remove ~-16 ~

scoreboard players add $aetlas aetlas.chunk.x 1
scoreboard players remove $aetlas aetlas.chunk.z 1
execute store success score #aetlas.chunk_loaded aestd.var if blocks ~ ~ ~-16 ~ ~ ~-16 ~ ~ ~-16 all
execute if score #aetlas.chunk_loaded aestd.var matches 1 run forceload add ~ ~-16
execute positioned ~ ~ ~-16 if block ~ ~ ~ #aetlas:default_base_layer run function aetlas:chunk_scan/summon_chunk_marker
execute if score #aetlas.chunk_loaded aestd.var matches 1 run forceload remove ~ ~-16

kill @s
