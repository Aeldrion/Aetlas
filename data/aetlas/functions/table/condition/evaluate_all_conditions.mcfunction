# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.conditions aetlas.var
data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.condition_passed aetlas.var

data modify storage aetlas:traceback Condition append from storage aetlas:traceback Conditions[-1][0]
function aetlas:table/condition/evaluate_condition
data remove storage aetlas:traceback Condition[-1]

data remove storage aetlas:traceback Conditions[-1][0]
scoreboard players remove $aetlas.conditions aetlas.var 1
execute if score $aetlas.conditions aetlas.var matches 1.. if score $aetlas.condition_passed aetlas.var matches 1 run function aetlas:table/evaluate_all_conditions
execute if score $aetlas.condition_passed aetlas.var matches 0 run scoreboard players set $aetlas.conditions_passed aetlas.var 0

execute store result score $aetlas.condition_passed aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]
execute store result score $aetlas.conditions aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]