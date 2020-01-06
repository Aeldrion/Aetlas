# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Returns a seed for the LCG
# Uses the Cantor pairing function with chunk coordinates

scoreboard players set $aetlas.lcg.cantor.k1 aetlas.var 0
execute if score $aetlas aetlas.chunk.x matches 0.. run scoreboard players operation $aetlas.lcg.cantor.k1 aetlas.var += $aetlas aetlas.chunk.x
execute if score $aetlas aetlas.chunk.x matches 0.. run scoreboard players operation $aetlas.lcg.cantor.k1 aetlas.var += $aetlas aetlas.chunk.x
execute if score $aetlas aetlas.chunk.x matches ..-1 run scoreboard players operation $aetlas.lcg.cantor.k1 aetlas.var -= $aetlas aetlas.chunk.x
execute if score $aetlas aetlas.chunk.x matches ..-1 run scoreboard players operation $aetlas.lcg.cantor.k1 aetlas.var -= $aetlas aetlas.chunk.x
execute if score $aetlas aetlas.chunk.x matches ..-1 run scoreboard players remove $aetlas.lcg.cantor.k1 aetlas.var 1

scoreboard players set $aetlas.lcg.cantor.k2 aetlas.var 0
execute if score $aetlas aetlas.chunk.z matches 0.. run scoreboard players operation $aetlas.lcg.cantor.k2 aetlas.var += $aetlas aetlas.chunk.z
execute if score $aetlas aetlas.chunk.z matches 0.. run scoreboard players operation $aetlas.lcg.cantor.k2 aetlas.var += $aetlas aetlas.chunk.z
execute if score $aetlas aetlas.chunk.z matches ..-1 run scoreboard players operation $aetlas.lcg.cantor.k2 aetlas.var -= $aetlas aetlas.chunk.z
execute if score $aetlas aetlas.chunk.z matches ..-1 run scoreboard players operation $aetlas.lcg.cantor.k2 aetlas.var -= $aetlas aetlas.chunk.z
execute if score $aetlas aetlas.chunk.z matches ..-1 run scoreboard players remove $aetlas.lcg.cantor.k2 aetlas.var 1

scoreboard players operation $aetlas.lcg.cantor.k1+k2 aetlas.var = $aetlas.lcg.cantor.k1 aetlas.var
scoreboard players operation $aetlas.lcg.cantor.k1+k2 aetlas.var += $aetlas.lcg.cantor.k2 aetlas.var
scoreboard players operation $aetlas.lcg.cantor.k1+k2+1 aetlas.var = $aetlas.lcg.cantor.k1+k2 aetlas.var
scoreboard players add $aetlas.lcg.cantor.k1+k2+1 aetlas.var 1

scoreboard players set $2 aetlas.var 2
scoreboard players operation $aetlas.lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas.var = $aetlas.lcg.cantor.k1+k2 aetlas.var
scoreboard players operation $aetlas.lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas.var *= $aetlas.lcg.cantor.k1+k2+1 aetlas.var
scoreboard players operation $aetlas.lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas.var /= $2 aetlas.var
scoreboard players operation $aetlas.lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas.var += $aetlas.lcg.cantor.k2 aetlas.var

scoreboard players operation $aetlas.lcg.seed aetlas.var = $aetlas.lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas.var
scoreboard players operation $aetlas.lcg.seed aetlas.var += $aetlas.seed aetlas.var