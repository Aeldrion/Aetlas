# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Generates a random number between 0 (included) and $aetlas.random.max (excluded)
# Determined by previous seed: starting with the same seed, repeated iterations of this function will always yield the same sequence of results

scoreboard players operation $aetlas.lcg.seed aetlas.var *= $aetlas.lcg.multiplier aetlas.var
scoreboard players operation $aetlas.lcg.seed aetlas.var += $aetlas.lcg.increment aetlas.var
scoreboard players operation $aetlas.lcg.seed aetlas.var %= $aetlas.lcg.modulus aetlas.var

scoreboard players operation $aetlas.random aetlas.var = $aetlas.lcg.seed aetlas.var
scoreboard players operation $aetlas.random aetlas.var %= $aetlas.random.max aetlas.var