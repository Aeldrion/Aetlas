execute store result score $random.min aetlas run data get storage aetlas:private Function.y.max
execute store result score $random.max aetlas run data get storage aetlas:private Function.y.max
scoreboard players add $random.max aetlas 1
function aetlas:math/random_range
scoreboard players operation $pos.dy aetlas += $random aetlas