# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players remove $aetlas.surface_height aetlas.var 1
execute unless data storage aetlas:private {IgnoreFluids: 1b} unless block ~ ~-1 ~ minecraft:end_stone if score $aetlas.surface_height aetlas.var matches 1.. positioned ~ ~-1 ~ run function aetlas:structures/surface_height/the_end
execute if data storage aetlas:private {IgnoreFluids: 1b} unless block ~ ~-1 ~ minecraft:end_stone if score $aetlas.surface_height aetlas.var matches 1.. positioned ~ ~-1 ~ run function aetlas:structures/surface_height/the_end