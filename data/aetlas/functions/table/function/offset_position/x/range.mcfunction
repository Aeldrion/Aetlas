# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.random.min aetlas.var run data get storage aetlas:private Function.x.max
execute store result score $aetlas.random.max aetlas.var run data get storage aetlas:private Function.x.max
scoreboard players add $aetlas.random.max aetlas.var 1
function aetlas:math/random_range
scoreboard players operation $aetlas.pos.dx aetlas.var += $aetlas.random aetlas.var