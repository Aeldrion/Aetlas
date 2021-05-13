# Returns a seed for the LCG based on position
# Uses the Cantor pairing function with chunk coordinates, and adds the world seed

scoreboard players set $lcg.cantor.k1 aetlas 0
execute if score $aetlas aetlas.chunk.x matches 0.. run scoreboard players operation $lcg.cantor.k1 aetlas += $aetlas aetlas.chunk.x
execute if score $aetlas aetlas.chunk.x matches 0.. run scoreboard players operation $lcg.cantor.k1 aetlas += $aetlas aetlas.chunk.x
execute if score $aetlas aetlas.chunk.x matches ..-1 run scoreboard players operation $lcg.cantor.k1 aetlas -= $aetlas aetlas.chunk.x
execute if score $aetlas aetlas.chunk.x matches ..-1 run scoreboard players operation $lcg.cantor.k1 aetlas -= $aetlas aetlas.chunk.x
execute if score $aetlas aetlas.chunk.x matches ..-1 run scoreboard players remove $lcg.cantor.k1 aetlas 1

scoreboard players set $lcg.cantor.k2 aetlas 0
execute if score $aetlas aetlas.chunk.z matches 0.. run scoreboard players operation $lcg.cantor.k2 aetlas += $aetlas aetlas.chunk.z
execute if score $aetlas aetlas.chunk.z matches 0.. run scoreboard players operation $lcg.cantor.k2 aetlas += $aetlas aetlas.chunk.z
execute if score $aetlas aetlas.chunk.z matches ..-1 run scoreboard players operation $lcg.cantor.k2 aetlas -= $aetlas aetlas.chunk.z
execute if score $aetlas aetlas.chunk.z matches ..-1 run scoreboard players operation $lcg.cantor.k2 aetlas -= $aetlas aetlas.chunk.z
execute if score $aetlas aetlas.chunk.z matches ..-1 run scoreboard players remove $lcg.cantor.k2 aetlas 1

scoreboard players operation $lcg.cantor.k1+k2 aetlas = $lcg.cantor.k1 aetlas
scoreboard players operation $lcg.cantor.k1+k2 aetlas += $lcg.cantor.k2 aetlas
scoreboard players operation $lcg.cantor.k1+k2+1 aetlas = $lcg.cantor.k1+k2 aetlas
scoreboard players add $lcg.cantor.k1+k2+1 aetlas 1

scoreboard players operation $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas = $lcg.cantor.k1+k2 aetlas
scoreboard players operation $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas *= $lcg.cantor.k1+k2+1 aetlas
scoreboard players operation $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas /= $2 aetlas
scoreboard players operation $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas += $lcg.cantor.k2 aetlas

scoreboard players operation $lcg.seed aetlas = $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas
scoreboard players operation $lcg.seed aetlas += $seed aetlas