# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.random.max aetlas.var set from storage aetlas:private Function."height"."max"
function aetlas:math/random
function aetlas:structures/get_surface_height
scoreboard players operation $aetlas.pos.y aetlas.var += $aetlas.random aetlas.var