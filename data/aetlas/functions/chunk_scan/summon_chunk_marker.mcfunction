# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Executed at y=0, summons a chunk marker, notifies data packs who care and attempts structure generation

summon minecraft:area_effect_cloud ~ ~ ~ {Duration: 2147483647, Tags: ["aetlas", "aetlas.chunk_marker", "aetlas.new"]}
execute if block ~ ~ ~ minecraft:bedrock run setblock ~ ~ ~ minecraft:obsidian
execute if block ~ ~ ~ minecraft:air run setblock ~ ~ ~ minecraft:void_air
execute as @e[type=minecraft:area_effect_cloud, tag=aetlas.new, distance=..1, limit=1] at @s run function aetlas:chunk_scan/new_marker_init
