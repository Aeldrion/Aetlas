# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Returns ax + bz + c
# (x, z) are coordinates, (a, b) are two constants and c is the world seed
scoreboard players set $aetlas.lcg.x_multiplier aetlas.var 1103515245
scoreboard players operation $aetlas.lcg.x aetlas.var = @s aetlas.chunk.x
scoreboard players operation $aetlas.lcg.x aetlas.var *= $aetlas.lcg.x_multiplier aetlas.var

scoreboard players set $aetlas.lcg.z_multiplier aetlas.var 22695477
scoreboard players operation $aetlas.lcg.z aetlas.var = @s aetlas.chunk.z
scoreboard players operation $aetlas.lcg.z aetlas.var *= $aetlas.lcg.z_multiplier aetlas.var

scoreboard players operation $aetlas.lcg.var aetlas.var = $aetlas.lcg.x aetlas.var
scoreboard players operation $aetlas.lcg.var aetlas.var += $aetlas.lcg.z aetlas.var
scoreboard players operation $aetlas.lcg.var aetlas.var += $aetlas.seed aetlas.var