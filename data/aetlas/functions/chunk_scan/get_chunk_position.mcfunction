#> aetlas:chunk_scan/get_chunk_position
#
# Saves the coordinates of the current chunk
#
# @context A marker
# @within aetlas:chunk_scan/mark_chunk_as_player
# @private
# @output
#	score
#		$aetlas aetlas.chunk.x
#			The x coordinate of the current chunk (scale 1:16 with world coordinates)
#		$aetlas aetlas.chunk.z
#			The z coordinate of the current chunk (scale 1:16 with world coordinates)

data modify storage aetlas:private Pos set from entity @s Pos
execute store result score $aetlas aetlas.chunk.x run data get storage aetlas:private Pos[0] 0.0625
execute store result score $aetlas aetlas.chunk.z run data get storage aetlas:private Pos[2] 0.0625
data remove storage aetlas:private Pos