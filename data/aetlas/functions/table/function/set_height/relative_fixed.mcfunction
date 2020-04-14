# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

function aetlas:height/get_surface_height
execute store result score $aetlas.pos.dy aetlas.var run data get storage aetlas:private Function.height
scoreboard players operation $aetlas.pos.y aetlas.var = $aetlas.surface_height aetlas.var
scoreboard players operation $aetlas.pos.y aetlas.var += $aetlas.pos.dy aetlas.var