# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players operation @s aetlas.chunk.x = $aetlas aetlas.chunk.x
scoreboard players operation @s aetlas.chunk.z = $aetlas aetlas.chunk.z

function #aetlas:chunk
function aetlas:chunk_scan/attempt_generation