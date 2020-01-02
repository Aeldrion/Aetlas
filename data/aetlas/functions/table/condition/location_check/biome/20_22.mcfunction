# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "modified_jungle_edge"}}} unless predicate aetlas:biome/modified_jungle_edge run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "mushroom_field_shore"}}} unless predicate aetlas:biome/mushroom_field_shore run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "snowy_taiga_mountains"}}} unless predicate aetlas:biome/snowy_taiga_mountains run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "giant_tree_taiga_hills"}}} unless predicate aetlas:biome/giant_tree_taiga_hills run scoreboard players set $aetlas.condition_passed aetlas.var 0