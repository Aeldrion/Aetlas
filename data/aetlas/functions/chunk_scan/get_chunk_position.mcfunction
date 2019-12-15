# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:private Pos set from entity @s Pos
execute store result score $aetlas aetlas.chunk.x run data get storage aetlas:private Pos[0] 0.0625
execute store result score $aetlas aetlas.chunk.z run data get storage aetlas:private Pos[2] 0.0625
data remove storage aetlas:private Pos