function aetlas:height/get_surface_height
execute store result score $pos.dy aetlas run data get storage aetlas:private Function.height
scoreboard players operation $pos.y aetlas = $surface_height aetlas
scoreboard players operation $pos.y aetlas += $pos.dy aetlas