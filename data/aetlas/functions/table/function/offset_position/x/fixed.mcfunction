# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.pos.ddx aetlas.var run data get storage aetlas:private Function."x"
scoreboard players operation $aetlas.pos.dx aetlas.var += $aetlas.pos.ddx aetlas.var