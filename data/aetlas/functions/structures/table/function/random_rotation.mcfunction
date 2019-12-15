# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players set $aetlas.random.max aetlas.var 4
function aetlas:math/random
execute if score $aetlas.random aetlas.var matches 0 run data modify storage aetlas:private StructureBlockData.rotation set value "NONE"
execute if score $aetlas.random aetlas.var matches 1 run data modify storage aetlas:private StructureBlockData.rotation set value "CLOCKWISE_90"
execute if score $aetlas.random aetlas.var matches 2 run data modify storage aetlas:private StructureBlockData.rotation set value "CLOCKWISE_180"
execute if score $aetlas.random aetlas.var matches 3 run data modify storage aetlas:private StructureBlockData.rotation set value "COUNTERCLOCKWISE_90"