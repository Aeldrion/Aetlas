# Get current position
execute align xyz run summon minecraft:marker ~ ~ ~ {Tags: ["aetlas", "aetlas.location_check.position"]}
data modify storage aetlas:private Pos set from entity @e[type=minecraft:marker, tag=aetlas.location_check.position, limit=1] Pos
kill @e[type=minecraft:marker, tag=aetlas.location_check.position, limit=1]
execute store result score $pos.x aetlas run data get storage aetlas:private Pos[0]
execute store result score $pos.y aetlas run data get storage aetlas:private Pos[1]
execute store result score $pos.z aetlas run data get storage aetlas:private Pos[2]

# Make a different check for every specified coordinate sub-predicate
execute if score $condition_passed aetlas matches 1 if data storage aetlas:private ConditionParameters.predicate.position.x run function aetlas:table/condition/location_check/position/x
execute if score $condition_passed aetlas matches 1 if data storage aetlas:private ConditionParameters.predicate.position.y run function aetlas:table/condition/location_check/position/y
execute if score $condition_passed aetlas matches 1 if data storage aetlas:private ConditionParameters.predicate.position.z run function aetlas:table/condition/location_check/position/z