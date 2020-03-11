# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

setblock ~ ~ ~ minecraft:sea_lantern
scoreboard players set $uwu_is_this_position_loaded aetlas.var 0
execute if block ~ ~ ~ minecraft:sea_lantern run scoreboard players set $uwu_is_this_position_loaded aetlas.var 1
execute if score $uwu_is_this_position_loaded aetlas.var matches 0 run say SCREM

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters.predicate.dimension run function aetlas:table/condition/location_check/dimension
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters.predicate.feature run function aetlas:table/condition/location_check/feature
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters.predicate.light run function aetlas:table/condition/location_check/light
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters.predicate.position run function aetlas:table/condition/location_check/position
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters.predicate.biome run function aetlas:table/condition/location_check/biome