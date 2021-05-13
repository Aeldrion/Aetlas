scoreboard players set $random.max aetlas 4
function aetlas:math/random
execute if score $random aetlas matches 0 run data modify storage aetlas:private StructureBlockData.rotation set value "NONE"
execute if score $random aetlas matches 1 run data modify storage aetlas:private StructureBlockData.rotation set value "CLOCKWISE_90"
execute if score $random aetlas matches 2 run data modify storage aetlas:private StructureBlockData.rotation set value "CLOCKWISE_180"
execute if score $random aetlas matches 3 run data modify storage aetlas:private StructureBlockData.rotation set value "COUNTERCLOCKWISE_90"