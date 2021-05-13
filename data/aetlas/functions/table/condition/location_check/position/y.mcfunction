# Get y position predicate as an integer range
scoreboard players set $pos.y.min aetlas 0
scoreboard players set $pos.y.max aetlas 15
execute unless data storage aetlas:private ConditionParameters.predicate.position.y.max unless data storage aetlas:private ConditionParameters.predicate.position.y.max store result score $pos.y.min aetlas store result score $pos.y.max aetlas run data get storage aetlas:private ConditionParameters.predicate.position.y
execute if data storage aetlas:private ConditionParameters.predicate.position.y.max store result score $pos.y.min aetlas run data get storage aetlas:private ConditionParameters.predicate.position.y.min
execute if data storage aetlas:private ConditionParameters.predicate.position.y.max store result score $pos.y.max aetlas run data get storage aetlas:private ConditionParameters.predicate.position.y.max

# Check if the actual position is in the specified range
execute unless score $pos.y aetlas >= $pos.y.min aetlas run scoreboard players set $condition_passed aetlas 0
execute unless score $pos.y aetlas <= $pos.y.max aetlas run scoreboard players set $condition_passed aetlas 0