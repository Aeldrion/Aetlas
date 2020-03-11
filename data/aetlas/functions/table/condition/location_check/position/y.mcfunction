# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Get y position predicate as an integer range
scoreboard players set $aetlas.pos.y.min aetlas.var 0
scoreboard players set $aetlas.pos.y.max aetlas.var 15
execute unless data storage aetlas:private ConditionParameters.predicate.position.y.max unless data storage aetlas:private ConditionParameters.predicate.position.y.max store result score $aetlas.pos.y.min aetlas.var store result score $aetlas.pos.y.max aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.y
execute if data storage aetlas:private ConditionParameters.predicate.position.y.max store result score $aetlas.pos.y.min aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.y.min
execute if data storage aetlas:private ConditionParameters.predicate.position.y.max store result score $aetlas.pos.y.max aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.y.max

# Check if the actual position is in the specified range
execute unless score $aetlas.pos.y aetlas.var >= $aetlas.pos.y.min aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute unless score $aetlas.pos.y aetlas.var <= $aetlas.pos.y.max aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0