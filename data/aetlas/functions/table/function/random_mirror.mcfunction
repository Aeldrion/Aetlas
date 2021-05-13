scoreboard players set $random.max aetlas 3
function aetlas:math/random
execute if score $random aetlas matches 0 run data modify storage aetlas:private StructureBlockData.mirror set value "NONE"
execute if score $random aetlas matches 1 run data modify storage aetlas:private StructureBlockData.mirror set value "LEFT_RIGHT"
execute if score $random aetlas matches 2 run data modify storage aetlas:private StructureBlockData.mirror set value "FRONT_BACK"