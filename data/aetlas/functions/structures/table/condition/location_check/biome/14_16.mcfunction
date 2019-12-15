# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "lukewarm_ocean"}}} unless predicate aetlas:biome/lukewarm_ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "deep_cold_ocean"}}} unless predicate aetlas:biome/deep_cold_ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "deep_warm_ocean"}}} unless predicate aetlas:biome/deep_warm_ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "eroded_badlands"}}} unless predicate aetlas:biome/eroded_badlands run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "modified_jungle"}}} unless predicate aetlas:biome/modified_jungle run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "mushroom_fields"}}} unless predicate aetlas:biome/mushroom_fields run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "savanna_plateau"}}} unless predicate aetlas:biome/savanna_plateau run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "snowy_mountains"}}} unless predicate aetlas:biome/snowy_mountains run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "taiga_mountains"}}} unless predicate aetlas:biome/taiga_mountains run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "badlands_plateau"}}} unless predicate aetlas:biome/badlands_plateau run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "giant_tree_taiga"}}} unless predicate aetlas:biome/giant_tree_taiga run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "sunflower_plains"}}} unless predicate aetlas:biome/sunflower_plains run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "tall_birch_hills"}}} unless predicate aetlas:biome/tall_birch_hills run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "wooded_mountains"}}} unless predicate aetlas:biome/wooded_mountains run scoreboard players set $aetlas.condition_passed aetlas.var 0