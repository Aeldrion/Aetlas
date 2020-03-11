# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if data storage aetlas:private {ConditionParameters: {ignore_fluids: true}} run data modify storage aetlas:private IgnoreFluids set value 1b
function aetlas:structures/get_surface_height
data remove storage aetlas:private IgnoreFluids

execute store result entity @s Pos[1] double 1 run scoreboard players get $aetlas.surface_height aetlas.var