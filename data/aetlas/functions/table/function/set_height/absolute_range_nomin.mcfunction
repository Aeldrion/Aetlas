# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.random.max aetlas.var run data get storage aetlas:private Function.height.max
scoreboard players add $aetlas.random.max aetlas.var 1
function aetlas:math/random
scoreboard players operation $aetlas.aec_pos.y aetlas.var = $aetlas.random aetlas.var