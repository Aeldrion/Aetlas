#> aetlas:math/seed
#
# Returns a seed for random number generation based on world seed and position
#
# @within aetlas:chunk_scan/attempt_generation
# @private
# @output
#	score
#		$lcg.seed aetlas
#			A 32-bit seed

# Convert chunk coordinates into positive integers (Z -> N)
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

# Apply Cantor pairing function on chunk coordinates (N² -> N)
scoreboard players operation $lcg.cantor.k1+k2 aetlas = $lcg.cantor.k1 aetlas
scoreboard players operation $lcg.cantor.k1+k2 aetlas += $lcg.cantor.k2 aetlas
scoreboard players operation $lcg.cantor.k1+k2+1 aetlas = $lcg.cantor.k1+k2 aetlas
scoreboard players add $lcg.cantor.k1+k2+1 aetlas 1

scoreboard players operation $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas = $lcg.cantor.k1+k2 aetlas
scoreboard players operation $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas *= $lcg.cantor.k1+k2+1 aetlas
scoreboard players operation $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas /= $2 aetlas
scoreboard players operation $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas += $lcg.cantor.k2 aetlas

scoreboard players operation $lcg.seed aetlas = $lcg.cantor.(k1+k2)(k1+k2+1)/2+k2 aetlas

# Add world seed to result
scoreboard players operation $lcg.seed aetlas += $seed aetlas