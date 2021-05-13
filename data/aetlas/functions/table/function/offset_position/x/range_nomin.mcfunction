execute store result score $upper_bound aetlas run data get storage aetlas:private Function.x.max

# If no lower bound is specified and the upper bound is positive, the offset is randomly selected between 0 and the upper bound
execute if score $upper_bound aetlas matches 0.. run scoreboard players operation $random.max aetlas = $upper_bound aetlas
execute if score $upper_bound aetlas matches 0.. run scoreboard players add $random.max aetlas 1
execute if score $upper_bound aetlas matches 0.. run function aetlas:math/random
execute if score $upper_bound aetlas matches 0.. run scoreboard players operation $pos.dx aetlas += $random aetlas

# If no lower bound is specified and the upper bound is negative, the offset is set to the specified upper bound
execute if score $upper_bound aetlas matches ..-1 run scoreboard players operation $pos.dx aetlas += $upper_bound aetlas