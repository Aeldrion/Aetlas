execute store result score $lower_bound aetlas run data get storage aetlas:private Function.z.max

# If no upper bound is specified and the lower bound is negative, the offset is randomly selected between the lower bound and 0
execute if score $lower_bound aetlas matches ..-1 run scoreboard players operation $random.min aetlas = $lower_bound aetlas
execute if score $lower_bound aetlas matches ..-1 run scoreboard players set $random.max aetlas 1
execute if score $lower_bound aetlas matches ..-1 run function aetlas:math/random_range
execute if score $lower_bound aetlas matches ..-1 run scoreboard players operation $pos.dz aetlas += $random aetlas

# If no upper bound is specified and the lower bound is positive, the offset is set to the specified lower bound
execute if score $lower_bound aetlas matches 0.. run scoreboard players operation $pos.dz aetlas += $lower_bound aetlas