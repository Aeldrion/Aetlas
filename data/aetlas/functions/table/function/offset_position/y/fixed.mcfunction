# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.pos.ddy aetlas.var run data get storage aetlas:private Function."y"
scoreboard players operation $aetlas.pos.dy aetlas.var += $aetlas.pos.ddy aetlas.var