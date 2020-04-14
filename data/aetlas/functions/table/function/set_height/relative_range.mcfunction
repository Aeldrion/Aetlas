# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.random.min aetlas.var run data get storage aetlas:private Function.height.min
execute store result score $aetlas.random.max aetlas.var run data get storage aetlas:private Function.height.max
scoreboard players add $aetlas.random.max aetlas.var 1
function aetlas:math/random_range
function aetlas:height/get_surface_height
scoreboard players operation $aetlas.pos.y aetlas.var = $aetlas.surface_height aetlas.var
scoreboard players operation $aetlas.pos.y aetlas.var += $aetlas.random aetlas.var