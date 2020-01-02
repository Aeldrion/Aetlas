# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "modified_wooded_badlands_plateau"}}} unless predicate aetlas:biome/modified_wooded_badlands_plateau run scoreboard players set $aetlas.condition_passed aetlas.var 0