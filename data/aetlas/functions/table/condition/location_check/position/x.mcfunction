# Get x position predicate as an integer range
scoreboard players set $pos.x.min aetlas 0
scoreboard players set $pos.x.max aetlas 15
execute unless data storage aetlas:private ConditionParameters.predicate.position.x.max unless data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $pos.x.min aetlas store result score $pos.x.max aetlas run data get storage aetlas:private ConditionParameters.predicate.position.x
execute if data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $pos.x.min aetlas run data get storage aetlas:private ConditionParameters.predicate.position.x.min
execute if data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $pos.x.max aetlas run data get storage aetlas:private ConditionParameters.predicate.position.x.max

# Check if the actual position is in the specified range
execute unless score $pos.x aetlas >= $pos.x.min aetlas run scoreboard players set $condition_passed aetlas 0
execute unless score $pos.x aetlas <= $pos.x.max aetlas run scoreboard players set $condition_passed aetlas 0

# execute if score $condition_passed aetlas matches 1 run tellraw @a ["", {"text": "Asked x between "}, {"score": {"name": "$pos.x.min", "objective": "aetlas"}, "color": "gold"}, {"text": " and "}, {"score": {"name": "$pos.x.max", "objective": "aetlas"}, "color": "gold"}, {"text": ", and got x = "}, {"score": {"name": "$pos.x", "objective": "aetlas"}, "color": "aqua"}]