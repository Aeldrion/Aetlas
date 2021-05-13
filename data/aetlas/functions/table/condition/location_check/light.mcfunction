# Get light predicate as a light level range
scoreboard players set $light_level.min aetlas 0
scoreboard players set $light_level.max aetlas 15
execute unless data storage aetlas:private ConditionParameters.predicate.light.light.max unless data storage aetlas:private ConditionParameters.predicate.light.light.max store result score $light_level.min aetlas store result score $light_level.max aetlas run data get storage aetlas:private ConditionParameters.predicate.light.light
execute if data storage aetlas:private ConditionParameters.predicate.light.light.max store result score $light_level.min aetlas run data get storage aetlas:private ConditionParameters.predicate.light.light.max
execute if data storage aetlas:private ConditionParameters.predicate.light.light.max store result score $light_level.max aetlas run data get storage aetlas:private ConditionParameters.predicate.light.light.max

# Get actual light level
scoreboard players set $light_level aetlas 0
execute if predicate aetlas:light/4_to_7 run scoreboard players set $light_level aetlas 4
execute if predicate aetlas:light/8_to_11 run scoreboard players set $light_level aetlas 8
execute if predicate aetlas:light/12_to_15 run scoreboard players set $light_level aetlas 12
execute if predicate aetlas:light/4nplus1 run scoreboard players add $light_level aetlas 21
execute if predicate aetlas:light/4nplus2 run scoreboard players add $light_level aetlas 2
execute if predicate aetlas:light/4nplus3 run scoreboard players add $light_level aetlas 3

# Check if the light level is in the specified range
execute unless score $light_level aetlas >= $light_level.min aetlas run scoreboard players set $condition_passed aetlas 0
execute unless score $light_level aetlas <= $light_level.max aetlas run scoreboard players set $condition_passed aetlas 0