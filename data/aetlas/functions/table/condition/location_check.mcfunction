scoreboard players set $condition_passed aetlas 1

# Check optional offsets and if position is relative to surface or not
data modify storage aetlas:private ConditionParameters set from storage aetlas:stack Condition[-1]
scoreboard players set $location_has_offset aetlas 1
execute unless data storage aetlas:private ConditionParameters.offsetX unless data storage aetlas:private ConditionParameters.offsetY unless data storage aetlas:private ConditionParameters.offsetZ run scoreboard players set $location_has_offset aetlas 0
scoreboard players set $location_is_on_surface aetlas 0
execute if data storage aetlas:private {ConditionParameters: {above_ground: 1b}} run scoreboard players set $location_is_on_surface aetlas 1

# Apply offset and evaluate the location check there if required
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 0 run summon minecraft:marker ~ ~ ~ {Tags:["aetlas", "aetlas.location_check.offset"]}
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 0 as @e[type=minecraft:marker, tag=aetlas.location_check.offset, limit=1] run function aetlas:table/condition/location_check/apply_offset
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 0 at @e[type=minecraft:marker, tag=aetlas.location_check.offset, limit=1] run function aetlas:table/condition/location_check/check_predicate
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 0 run kill @e[type=minecraft:marker, tag=aetlas.location_check.offset, limit=1]

# Teleport to surface and evaluate the location check there if required
execute if score $location_has_offset aetlas matches 0 if score $location_is_on_surface aetlas matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["aetlas", "aetlas.location_check.surface"]}
execute if score $location_has_offset aetlas matches 0 if score $location_is_on_surface aetlas matches 1 as @e[type=minecraft:marker, tag=aetlas.location_check.surface, limit=1] run function aetlas:table/condition/location_check/teleport_to_surface
execute if score $location_has_offset aetlas matches 0 if score $location_is_on_surface aetlas matches 1 as @e[type=minecraft:marker, tag=aetlas.location_check.surface, limit=1] positioned as @s run function aetlas:table/condition/location_check/check_predicate
execute if score $location_has_offset aetlas matches 0 if score $location_is_on_surface aetlas matches 1 run kill @e[type=minecraft:marker, tag=aetlas.location_check.surface, limit=1]

# Do both if both are required
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 1 run summon minecraft:marker ~ ~ ~ {Tags:["aetlas", "aetlas.location_check.offset_and_surface"]}
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 1 as @e[type=minecraft:marker, tag=aetlas.location_check.offset_and_surface, limit=1] run function aetlas:table/condition/location_check/teleport_to_surface
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 1 as @e[type=minecraft:marker, tag=aetlas.location_check.offset_and_surface, limit=1] positioned as @s run function aetlas:table/condition/location_check/apply_offset
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 1 as @e[type=minecraft:marker, tag=aetlas.location_check.offset_and_surface, limit=1] positioned as @s run function aetlas:table/condition/location_check/check_predicate
execute if score $location_has_offset aetlas matches 1 if score $location_is_on_surface aetlas matches 1 run kill @e[type=minecraft:marker, tag=aetlas.location_check.offset_and_surface, limit=1]

# If no offset is specified and the location check is not relative to the surface, evaluate it at the current position
execute unless score $location_has_offset aetlas matches 1 unless score $location_is_on_surface aetlas matches 1 run function aetlas:table/condition/location_check/check_predicate
scoreboard players reset $location_has_offset aetlas
scoreboard players reset $location_is_on_surface aetlas