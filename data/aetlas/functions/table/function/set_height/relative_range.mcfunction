execute store result score $random.min aetlas run data get storage aetlas:private Function.height.min
execute store result score $random.max aetlas run data get storage aetlas:private Function.height.max
scoreboard players add $random.max aetlas 1
function aetlas:math/random_range
function aetlas:height/get_surface_height
scoreboard players operation $pos.y aetlas = $surface_height aetlas
scoreboard players operation $pos.y aetlas += $random aetlas