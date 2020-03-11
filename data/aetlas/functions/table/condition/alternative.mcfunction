# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $aetlas.conditions aetlas.var
data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $aetlas.conditions_passed aetlas.var

data modify storage aetlas:stack Conditions append from storage aetlas:stack Condition[-1].terms
execute store result score $aetlas.conditions aetlas.var run data get storage aetlas:stack Conditions[-1]
execute if score $aetlas.conditions aetlas.var matches 1.. run function aetlas:table/condition/evaluate_all_conditions_until_one_passes
data remove storage aetlas:stack Conditions[-1]

execute store result score $aetlas.conditions_passed aetlas.var run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
execute store result score $aetlas.conditions aetlas.var run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]