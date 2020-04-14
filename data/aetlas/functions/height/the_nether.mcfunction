# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players add $aetlas.surface_height aetlas.var 1
execute unless data storage aetlas:private {IgnoreFluids: 1b} if block ~ ~1 ~ #aetlas:ignore if score $aetlas.surface_height aetlas.var matches ..128 positioned ~ ~1 ~ run function aetlas:structures/surface_height/the_nether
execute if data storage aetlas:private {IgnoreFluids: 1b} if block ~ ~1 ~ #aetlas:ignore_with_fluids if score $aetlas.surface_height aetlas.var matches ..128 positioned ~ ~1 ~ run function aetlas:structures/surface_height/the_nether