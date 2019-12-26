# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players set $aetlas.random.max aetlas.var 3
function aetlas:math/random
execute if score $aetlas.random aetlas.var matches 0 run data modify storage aetlas:private StructureBlockData.mirror set value "NONE"
execute if score $aetlas.random aetlas.var matches 1 run data modify storage aetlas:private StructureBlockData.mirror set value "LEFT_RIGHT"
execute if score $aetlas.random aetlas.var matches 2 run data modify storage aetlas:private StructureBlockData.mirror set value "FRONT_BACK"