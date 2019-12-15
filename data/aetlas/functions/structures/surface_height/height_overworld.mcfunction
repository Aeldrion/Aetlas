# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players remove $aetlas.pos.y aetlas.var 1
execute unless data storage aetlas:private {IgnoreFluids: 1b} if block ~ ~-1 ~ #aetlas:ignore if score $aetlas.pos.y aetlas.var matches 5.. run function aetlas:structures/surface_height/overworld
execute if data storage aetlas:private {IgnoreFluids: 0b} if block ~ ~-1 ~ #aetlas:ignore_with_fluids if score $aetlas.pos.y aetlas.var matches 5.. run function aetlas:structures/surface_height/overworld