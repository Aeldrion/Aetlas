# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

function aetlas:structures/get_surface_height
execute store result score $aetlas.pos.y_increment aetlas.var run data get storage aetlas:private Function.height
scoreboard players operation $aetlas.aec_pos.y aetlas.var = $aetlas.pos.y aetlas.var
scoreboard players operation $aetlas.aec_pos.y aetlas.var += $aetlas.pos.y_increment aetlas.var