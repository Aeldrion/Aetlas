# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players set #aetlas.lcg.multiplier aetlas.var 1630111353
scoreboard players set #aetlas.lcg.increment aetlas.var 1623164762
scoreboard players set #aetlas.lcg.modulus aetlas.var 2147483647

scoreboard players operation #aetlas.lcg.var aetlas.var *= #aetlas.lcg.multiplier aetlas.var
scoreboard players operation #aetlas.lcg.var aetlas.var += #aetlas.lcg.increment aetlas.var
scoreboard players operation #aetlas.lcg.var aetlas.var %= #aetlas.lcg.modulus aetlas.var

scoreboard players operation #aetlas.random aetlas.var = #aetlas.lcg.var aetlas.var
scoreboard players operation #aetlas.random aetlas.var %= #aetlas.random.max aetlas.var