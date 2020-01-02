# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "dark_forest_hills"}}} unless predicate aetlas:biome/dark_forest_hills run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "deep_frozen_ocean"}}} unless predicate aetlas:biome/deep_frozen_ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "shattered_savanna"}}} unless predicate aetlas:biome/shattered_savanna run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "small_end_islands"}}} unless predicate aetlas:biome/small_end_islands run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "snowy_taiga_hills"}}} unless predicate aetlas:biome/snowy_taiga_hills run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "tall_birch_forest"}}} unless predicate aetlas:biome/tall_birch_forest run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "birch_forest_hills"}}} unless predicate aetlas:biome/birch_forest_hills run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "giant_spruce_taiga"}}} unless predicate aetlas:biome/giant_spruce_taiga run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "gravelly_mountains"}}} unless predicate aetlas:biome/gravelly_mountains run scoreboard players set $aetlas.condition_passed aetlas.var 0

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "deep_lukewarm_ocean"}}} unless predicate aetlas:biome/deep_lukewarm_ocean run scoreboard players set $aetlas.condition_passed aetlas.var 0