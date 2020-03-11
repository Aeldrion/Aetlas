# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Handles the chunk scan algorithm
# Runs as many times as possibme without exceeding 0.1s of execution time, unless the entire nearby terrain has already been populated

execute at @a positioned ~ 0 ~ run function aetlas:chunk_scan/player_loop

execute store result score $aetlas.benchmark.duration aetlas.var run worldborder get
scoreboard players remove $aetlas.benchmark.duration aetlas.var 50000000
execute if score $aetlas.benchmark.duration aetlas.var matches 9000000.. positioned ~ 0 ~ if entity @e[type=minecraft:area_effect_cloud, tag=aetlas.chunk_marker, distance=..176] run function aetlas:chunk_scan/loop