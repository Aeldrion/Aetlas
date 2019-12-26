# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:private ConditionParameters set from storage aetlas:private Condition[-1]
execute store result score $aetlas.random_chance aetlas.var run data get storage aetlas:private ConditionParameters."chance" 1000000

scoreboard players set $aetlas.random.max aetlas.var 1000000
function aetlas:math/random
execute store success score $aetlas.condition_passed aetlas.var if score $aetlas.random aetlas.var < $aetlas.random_chance aetlas.var