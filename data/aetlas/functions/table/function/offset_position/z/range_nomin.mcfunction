# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute store result score $aetlas.upper_bound aetlas.var run data get storage aetlas:private Function.z.max

# If no lower bound is specified and the upper bound is positive, the offset is randomly selected between 0 and the upper bound
execute if score $aetlas.upper_bound aetlas.var matches 0.. run scoreboard players operation $aetlas.random.max aetlas.var = $aetlas.upper_bound aetlas.var
execute if score $aetlas.upper_bound aetlas.var matches 0.. run scoreboard players add $aetlas.random.max aetlas.var 1
execute if score $aetlas.upper_bound aetlas.var matches 0.. run function aetlas:math/random
execute if score $aetlas.upper_bound aetlas.var matches 0.. run scoreboard players operation $aetlas.pos.dz aetlas.var += $aetlas.random aetlas.var

# If no lower bound is specified and the upper bound is negative, the offset is set to the specified upper bound
execute if score $aetlas.upper_bound aetlas.var matches ..-1 run scoreboard players operation $aetlas.pos.dz aetlas.var += $aetlas.upper_bound aetlas.var