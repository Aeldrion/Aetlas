# Handles the chunk scan algorithm
# Runs as many times as possibme without exceeding 0.1s of execution time, unless the entire nearby terrain has already been populated

execute at @a positioned ~ 0 ~ run function aetlas:chunk_scan/player_loop

execute store result score $benchmark.duration aetlas run worldborder get
scoreboard players remove $benchmark.duration aetlas 50000000
execute if score $benchmark.duration aetlas matches 9000000.. positioned ~ 0 ~ if entity @e[type=minecraft:marker, tag=aetlas.chunk_marker, distance=..176] run function aetlas:chunk_scan/loop