# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute at @a positioned ~ 0 ~ run function aetlas:chunk_scan/player_loop

execute store result score $aetlas.benchmark.duration aetlas.var run worldborder get
scoreboard players remove $aetlas.benchmark.duration aetlas.var 50000000
execute if score $aetlas.benchmark.duration aetlas.var matches 9600000.. positioned ~ 0 ~ if entity @e[type=minecraft:area_effect_cloud, tag=aetlas.chunk_marker, distance=..176] run function aetlas:chunk_scan/loop