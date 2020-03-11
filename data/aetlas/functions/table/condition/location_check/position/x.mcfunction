# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Get x position predicate as an integer range
scoreboard players set $aetlas.pos.x.min aetlas.var 0
scoreboard players set $aetlas.pos.x.max aetlas.var 15
execute unless data storage aetlas:private ConditionParameters.predicate.position.x.max unless data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $aetlas.pos.x.min aetlas.var store result score $aetlas.pos.x.max aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.x
execute if data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $aetlas.pos.x.min aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.x.min
execute if data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $aetlas.pos.x.max aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.x.max

# Check if the actual position is in the specified range
execute unless score $aetlas.pos.x aetlas.var >= $aetlas.pos.x.min aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute unless score $aetlas.pos.x aetlas.var <= $aetlas.pos.x.max aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0

# execute if score $aetlas.condition_passed aetlas.var matches 1 run tellraw @a ["", {"text": "Asked x between "}, {"score": {"name": "$aetlas.pos.x.min", "objective": "aetlas.var"}, "color": "gold"}, {"text": " and "}, {"score": {"name": "$aetlas.pos.x.max", "objective": "aetlas.var"}, "color": "gold"}, {"text": ", and got x = "}, {"score": {"name": "$aetlas.pos.x", "objective": "aetlas.var"}, "color": "aqua"}]