# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Get current position
execute align xyz run summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["aetlas", "aetlas.location_check.position"]}
data modify storage aetlas:private Pos set from entity @e[type=minecraft:area_effect_cloud, tag=aetlas.location_check.position, limit=1] Pos
execute store result score $aetlas.pos.x aetlas.var run data get storage aetlas:private Pos[0]
execute store result score $aetlas.pos.y aetlas.var run data get storage aetlas:private Pos[1]
execute store result score $aetlas.pos.z aetlas.var run data get storage aetlas:private Pos[2]

# Make a different check for every specified coordinate sub-predicate
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters.predicate.position.x run function aetlas:table/condition/location_check/position/x
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters.predicate.position.y run function aetlas:table/condition/location_check/position/y
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters.predicate.position.z run function aetlas:table/condition/location_check/position/z