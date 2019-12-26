# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:traceback Score append value 0
execute store result storage aetlas:traceback Score[-1] int 1 run scoreboard players get $aetlas.condition_id aetlas.var

scoreboard players set $aetlas.condition_id aetlas.var 0
data modify storage aetlas:private ConditionID set from storage aetlas:private Condition[-1]."condition"

execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "minecraft:alternative"} run scoreboard players set $aetlas.condition_id aetlas.var 1
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "minecraft:inverted"} run scoreboard players set $aetlas.condition_id aetlas.var 2
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "minecraft:location_check"} run scoreboard players set $aetlas.condition_id aetlas.var 3
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "minecraft:random_chance"} run scoreboard players set $aetlas.condition_id aetlas.var 4
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "minecraft:reference"} run scoreboard players set $aetlas.condition_id aetlas.var 5
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "minecraft:structures_nearby"} run scoreboard players set $aetlas.condition_id aetlas.var 6
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "minecraft:surface_properties"} run scoreboard players set $aetlas.condition_id aetlas.var 7
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "minecraft:weather_check"} run scoreboard players set $aetlas.condition_id aetlas.var 8

execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "aetlas:alternative"} run scoreboard players set $aetlas.condition_id aetlas.var 1
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "aetlas:inverted"} run scoreboard players set $aetlas.condition_id aetlas.var 2
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "aetlas:location_check"} run scoreboard players set $aetlas.condition_id aetlas.var 3
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "aetlas:random_chance"} run scoreboard players set $aetlas.condition_id aetlas.var 4
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "aetlas:reference"} run scoreboard players set $aetlas.condition_id aetlas.var 5
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "aetlas:structures_nearby"} run scoreboard players set $aetlas.condition_id aetlas.var 6
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "aetlas:surface_properties"} run scoreboard players set $aetlas.condition_id aetlas.var 7
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "aetlas:weather_check"} run scoreboard players set $aetlas.condition_id aetlas.var 8

execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "alternative"} run scoreboard players set $aetlas.condition_id aetlas.var 1
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "inverted"} run scoreboard players set $aetlas.condition_id aetlas.var 2
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "location_check"} run scoreboard players set $aetlas.condition_id aetlas.var 3
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "random_chance"} run scoreboard players set $aetlas.condition_id aetlas.var 4
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "reference"} run scoreboard players set $aetlas.condition_id aetlas.var 5
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "structures_nearby"} run scoreboard players set $aetlas.condition_id aetlas.var 6
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "surface_properties"} run scoreboard players set $aetlas.condition_id aetlas.var 7
execute if score $aetlas.condition_id aetlas.var matches 0 if data storage aetlas:private {"ConditionID": "weather_check"} run scoreboard players set $aetlas.condition_id aetlas.var 8

execute if score $aetlas.condition_id aetlas.var matches 1.. run function aetlas:table/condition/evaluate_valid_condition
execute store result score $aetlas.condition_id aetlas.var run data get storage aetlas:traceback Score[-1]
data remove storage aetlas:traceback Score[-1]