# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard players set $aetlas.condition_passed aetlas.var 1

data modify storage aetlas:private ConditionParameters set from storage aetlas:private Condition[-1]
execute store result score $aetlas.location_has_offset aetlas.var unless data storage aetlas:private ConditionParameters.offsetX unless data storage aetlas:private ConditionParameters.offsetY unless data storage aetlas:private ConditionParameters.offsetZ

execute if score $aetlas.location_has_offset aetlas.var matches 1 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["aetlas", "aetlas.location_check.offset"]}
execute if score $aetlas.location_has_offset aetlas.var matches 1 as @e[type=minecraft:area_effect_cloud, tag=aetlas.location_check.offset, limit=1] run function aetlas:table/condition/location_check/apply_offset
execute if score $aetlas.location_has_offset aetlas.var matches 1 at @e[type=minecraft:area_effect_cloud, tag=aetlas.location_check.offset, limit=1] run function aetlas:table/condition/location_check/check_predicate
execute if score $aetlas.location_has_offset aetlas.var matches 1 run kill @e[type=minecraft:area_effect_cloud, tag=aetlas.location_check.offset, limit=1]
execute unless score $aetlas.location_has_offset aetlas.var matches 1 run function aetlas:table/condition/location_check/check_predicate

scoreboard players reset $aetlas.location_has_offset aetlas.var