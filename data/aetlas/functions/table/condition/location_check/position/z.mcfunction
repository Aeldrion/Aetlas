# Get z position predicate as an integer range
scoreboard players set $pos.z.min aetlas 0
scoreboard players set $pos.z.max aetlas 15
execute unless data storage aetlas:private ConditionParameters.predicate.position.z.max unless data storage aetlas:private ConditionParameters.predicate.position.z.max store result score $pos.z.min aetlas store result score $pos.z.max aetlas run data get storage aetlas:private ConditionParameters.predicate.position.z
execute if data storage aetlas:private ConditionParameters.predicate.position.z.max store result score $pos.z.min aetlas run data get storage aetlas:private ConditionParameters.predicate.position.z.min
execute if data storage aetlas:private ConditionParameters.predicate.position.z.max store result score $pos.z.max aetlas run data get storage aetlas:private ConditionParameters.predicate.position.z.max

# Check if the actual position is in the specified range
execute unless score $pos.z aetlas >= $pos.z.min aetlas run scoreboard players set $condition_passed aetlas 0
execute unless score $pos.z aetlas <= $pos.z.max aetlas run scoreboard players set $condition_passed aetlas 0

# tellraw @a ["", {"text": "Asked z between "}, {"score": {"name": "$pos.z.min", "objective": "aetlas"}, "color": "blue"}, {"text": " and "}, {"score": {"name": "$pos.z.max", "objective": "aetlas"}, "color": "blue"}, {"text": ", and got z = "}, {"score": {"name": "$pos.z", "objective": "aetlas"}, "color": "dark_red"}]