# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "wooded_badlands_plateau"}}} unless predicate aetlas:biome/wooded_badlands_plateau run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "giant_spruce_taiga_hills"}}} unless predicate aetlas:biome/giant_spruce_taiga_hills run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "modified_badlands_plateau"}}} unless predicate aetlas:biome/modified_badlands_plateau run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "shattered_savanna_plateau"}}} unless predicate aetlas:biome/shattered_savanna_plateau run scoreboard players set $aetlas.condition_passed aetlas.var 0