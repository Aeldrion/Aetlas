# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $aetlas.conditions aetlas.var

data modify storage aetlas:stack Condition append from storage aetlas:stack Conditions[-1][0]
function aetlas:table/condition/evaluate_condition
data remove storage aetlas:stack Condition[-1]

data remove storage aetlas:stack Conditions[-1][0]
scoreboard players remove $aetlas.conditions aetlas.var 1
execute if score $aetlas.conditions aetlas.var matches 1.. unless score $aetlas.condition_passed aetlas.var matches 1 run function aetlas:table/condition/evaluate_all_conditions_until_one_passes

execute store result score $aetlas.conditions aetlas.var run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]