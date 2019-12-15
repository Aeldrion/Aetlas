# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Get light predicate as a light level range
scoreboard players set $aetlas.light_level.min aetlas.var 0
scoreboard players set $aetlas.light_level.max aetlas.var 15
execute unless data storage aetlas:private ConditionParameters."predicate."light"."light"."min" unless data storage aetlas:private ConditionParameters."predicate"."light"."light"."max" store result score $aetlas.light_level.min aetlas.var store result score $aetlas.light_level.max aetlas.var run data get storage aetlas:private ConditionParameters."predicate"."light"."light"
execute if data storage aetlas:private ConditionParameters."predicate"."light"."light"."min" store result score $aetlas.light_level.min aetlas.var run data get storage aetlas:private ConditionParameters."predicate."light"."light"."min"
execute if data storage aetlas:private ConditionParameters."predicate"."light"."light"."max" store result score $aetlas.light_level.max aetlas.var run data get storage aetlas:private ConditionParameters."predicate."light"."light"."max"

# Get actual light level
scoreboard players set $aetlas.light_level aetlas.var 0
execute if predicate aetlas:light/4_to_7 run scoreboard players set $aetlas.light_level aetlas.var 4
execute if predicate aetlas:light/8_to_11 run scoreboard players set $aetlas.light_level aetlas.var 8
execute if predicate aetlas:light/12_to_15 run scoreboard players set $aetlas.light_level aetlas.var 12
execute if predicate aetlas:light/4nplus1 run scoreboard players add $aetlas.light_level aetlas.var 21
execute if predicate aetlas:light/4nplus2 run scoreboard players add $aetlas.light_level aetlas.var 2
execute if predicate aetlas:light/4nplus3 run scoreboard players add $aetlas.light_level aetlas.var 3

# Check if the light level is in the specified range
execute unless score $aetlas.light_level aetlas.var >= $aetlas.light_level.min aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0
execute unless score $aetlas.light_level aetlas.var <= $aetlas.light_level.max aetlas.var run scoreboard players set $aetlas.condition_passed aetlas.var 0