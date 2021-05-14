#> aetlas:chunk_scan/new_marker_init
#
# Notifies data packs who care and attempts structure generation
#
# @within aetlas:chunk_scan/summon_chunk_marker
# @context a new marker and its position
# @private

tag @s remove aetlas.new

scoreboard players operation @s aetlas.chunk.x = $aetlas aetlas.chunk.x
scoreboard players operation @s aetlas.chunk.z = $aetlas aetlas.chunk.z

function aetlas:chunk_scan/attempt_generation
function #aetlas:chunk