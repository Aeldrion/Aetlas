# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.lower_bound aetlas.var run data get storage aetlas:private Function."x"."min"

# If no upper bound is specified and the lower bound is negative, the offset is randomly selected between the lower bound and 0
execute if score $aetlas.lower_bound aetlas.var matches ..-1 run scoreboard players operation $aetlas.random.min aetlas.var = $aetlas.lower_bound aetlas.var
execute if score $aetlas.lower_bound aetlas.var matches ..-1 run scoreboard players set $aetlas.random.max aetlas.var 1
execute if score $aetlas.lower_bound aetlas.var matches ..-1 run function aetlas:math/random_range
execute if score $aetlas.lower_bound aetlas.var matches ..-1 run scoreboard players operation $aetlas.pos.dx aetlas.var += $aetlas.random aetlas.var

# If no upper bound is specified and the lower bound is positive, the offset is set to the specified lower bound
execute if score $aetlas.lower_bound aetlas.var matches 0.. run scoreboard players operation $aetlas.pos.dx aetlas.var += $aetlas.lower_bound aetlas.var