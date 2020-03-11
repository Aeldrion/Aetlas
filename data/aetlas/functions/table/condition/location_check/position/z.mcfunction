# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Get z position predicate as an integer range
scoreboard players set $aetlas.pos.z.min aetlas.var 0
scoreboard players set $aetlas.pos.z.max aetlas.var 15
execute unless data storage aetlas:private ConditionParameters.predicate.position.z.max unless data storage aetlas:private ConditionParameters.predicate.position.z.max store result score $aetlas.pos.z.min aetlas.var store result score $aetlas.pos.z.max aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.z
execute if data storage aetlas:private ConditionParameters.predicate.position.z.max store result score $aetlas.pos.z.min aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.z.min
execute if data storage aetlas:private ConditionParameters.predicate.position.z.max store result score $aetlas.pos.z.max aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.z.max

# Check if the actual position is in the specified range
execute unless score $aetlas.pos.z aetlas.var >= $aetlas.pos.z.min aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute unless score $aetlas.pos.z aetlas.var <= $aetlas.pos.z.max aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0

# tellraw @a ["", {"text": "Asked z between "}, {"score": {"name": "$aetlas.pos.z.min", "objective": "aetlas.var"}, "color": "blue"}, {"text": " and "}, {"score": {"name": "$aetlas.pos.z.max", "objective": "aetlas.var"}, "color": "blue"}, {"text": ", and got z = "}, {"score": {"name": "$aetlas.pos.z", "objective": "aetlas.var"}, "color": "dark_red"}]