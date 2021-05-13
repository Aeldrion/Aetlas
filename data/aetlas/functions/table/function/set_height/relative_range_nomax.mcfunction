execute store result score $random.min aetlas run data get storage aetlas:private Function.height.min
scoreboard players set $random.max aetlas 255
scoreboard players operation $random.max aetlas -= $size.y aetlas
function aetlas:math/random_range
function aetlas:height/get_surface_height
scoreboard players operation $pos.y aetlas = $surface_height aetlas
scoreboard players operation $pos.y aetlas += $random aetlas