# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players remove $aetlas.pos.y aetlas.var 1
execute unless data storage aetlas:private {IgnoreFluids: 1b} unless block ~ ~-1 ~ minecraft:end_stone if score $aetlas.pos.y aetlas.var matches 1.. run function aetlas:structures/surface_height/end
execute if data storage aetlas:private {IgnoreFluids: 0b} unless block ~ ~-1 ~ minecraft:end_stone if score $aetlas.pos.y aetlas.var matches 1.. run function aetlas:structures/surface_height/end