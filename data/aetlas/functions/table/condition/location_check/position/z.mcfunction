# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Get x position predicate as an integer range
scoreboard players set $aetlas.pos.z.min aetlas.var 0
scoreboard players set $aetlas.pos.z.max aetlas.var 15
execute unless data storage aetlas:private ConditionParameters.predicate.position.x.max unless data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $aetlas.pos.z.min aetlas.var store result score $aetlas.pos.z.max aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.x
execute if data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $aetlas.pos.z.min aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.x.max
execute if data storage aetlas:private ConditionParameters.predicate.position.x.max store result score $aetlas.pos.z.max aetlas.var run data get storage aetlas:private ConditionParameters.predicate.position.x.max

# Check if the actual position is in the specified range
execute unless score $aetlas.pos.z aetlas.var >= $aetlas.pos.z.min aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute unless score $aetlas.pos.z aetlas.var <= $aetlas.pos.z.max aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0