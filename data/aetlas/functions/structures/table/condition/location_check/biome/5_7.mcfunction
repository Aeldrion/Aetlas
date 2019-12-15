# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "ocean"}}} unless predicate aetlas:biome/ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "river"}}} unless predicate aetlas:biome/river run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "beach"}}} unless predicate aetlas:biome/beach run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "swamp"}}} unless predicate aetlas:biome/swamp run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "taiga"}}} unless predicate aetlas:biome/taiga run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "desert"}}} unless predicate aetlas:biome/desert run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "forest"}}} unless predicate aetlas:biome/forest run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "jungle"}}} unless predicate aetlas:biome/jungle run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "nether"}}} unless predicate aetlas:biome/nether run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "plains"}}} unless predicate aetlas:biome/plains run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "savanna"}}} unless predicate aetlas:biome/savanna run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "the_end"}}} unless predicate aetlas:biome/the_end run scoreboard players set $aetlas.condition_passed aetlas.var 0