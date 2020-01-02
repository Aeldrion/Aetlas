# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private {ConditionParameters: {predicate: {biome: "modified_gravelly_mountains"}}} unless predicate aetlas:biome/modified_gravelly_mountains run scoreboard players set $aetlas.condition_passed aetlas.var 0