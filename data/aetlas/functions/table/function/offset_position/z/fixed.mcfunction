# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.pos.ddz aetlas.var run data get storage aetlas:private Function.z
scoreboard players operation $aetlas.pos.dz aetlas.var += $aetlas.pos.ddz aetlas.var