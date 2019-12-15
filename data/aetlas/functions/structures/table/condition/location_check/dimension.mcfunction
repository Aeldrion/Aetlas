# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"dimension": "overworld"}}} unless predicate aetlas:in_dimension/overworld run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"dimension": "the_nether"}}} unless predicate aetlas:in_dimension/the_nether run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"dimension": "the_end"}}} unless predicate aetlas:in_dimension/the_end run scoreboard players set $aetlas.condition_passed aetlas.var 0