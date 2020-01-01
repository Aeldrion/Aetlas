# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.random.min aetlas.var run data get storage aetlas:private Function."y"."min"
execute store result score $aetlas.random.max aetlas.var run data get storage aetlas:private Function."y"."max"
scoreboard players add $aetlas.random.max aetlas.var 1
function aetlas:math/random_range
scoreboard players operation $aetlas.pos.dy aetlas.var += $aetlas.random aetlas.var