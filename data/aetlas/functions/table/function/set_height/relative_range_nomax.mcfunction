# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.random.min aetlas.var run data get storage aetlas:private Function.height.min
scoreboard players set $aetlas.random.max aetlas.var 255
scoreboard players operation $aetlas.random.max aetlas.var -= $aetlas.structure.y aetlas.var
function aetlas:math/random_range
function aetlas:structures/get_surface_height
scoreboard players operation $aetlas.aec_pos.y aetlas.var = $aetlas.pos.y aetlas.var
scoreboard players operation $aetlas.aec_pos.y aetlas.var += $aetlas.random aetlas.var