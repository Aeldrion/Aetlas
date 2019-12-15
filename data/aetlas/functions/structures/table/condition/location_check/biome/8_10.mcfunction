# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "badlands"}}} unless predicate aetlas:biome/badlands run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "the_void"}}} unless predicate aetlas:biome/the_void run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "mountains"}}} unless predicate aetlas:biome/mountains run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "cold_ocean"}}} unless predicate aetlas:biome/cold_ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "deep_ocean"}}} unless predicate aetlas:biome/deep_ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "ice_spikes"}}} unless predicate aetlas:biome/ice_spikes run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {"predicate": {"biome": "warm_ocean"}}} unless predicate aetlas:biome/warm_ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0