# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Executed as and at a chunk marker
# Notifies data packs who care and attempts structure generation

tag @s remove aetlas.new

scoreboard players operation @s aetlas.chunk.x = $aetlas aetlas.chunk.x
scoreboard players operation @s aetlas.chunk.z = $aetlas aetlas.chunk.z

function #aetlas:chunk
function aetlas:chunk_scan/attempt_generation