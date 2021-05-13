data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $condition_id aetlas

scoreboard players set $condition_id aetlas 0
data modify storage aetlas:private ConditionID set from storage aetlas:stack Condition[-1].condition

execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "minecraft:alternative"} run scoreboard players set $condition_id aetlas 1
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "minecraft:inverted"} run scoreboard players set $condition_id aetlas 2
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "minecraft:location_check"} run scoreboard players set $condition_id aetlas 3
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "minecraft:random_chance"} run scoreboard players set $condition_id aetlas 4
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "minecraft:reference"} run scoreboard players set $condition_id aetlas 5
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "minecraft:structures_nearby"} run scoreboard players set $condition_id aetlas 6
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "minecraft:surface_properties"} run scoreboard players set $condition_id aetlas 7
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "minecraft:weather_check"} run scoreboard players set $condition_id aetlas 8

execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "aetlas:alternative"} run scoreboard players set $condition_id aetlas 1
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "aetlas:inverted"} run scoreboard players set $condition_id aetlas 2
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "aetlas:location_check"} run scoreboard players set $condition_id aetlas 3
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "aetlas:random_chance"} run scoreboard players set $condition_id aetlas 4
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "aetlas:reference"} run scoreboard players set $condition_id aetlas 5
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "aetlas:structures_nearby"} run scoreboard players set $condition_id aetlas 6
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "aetlas:surface_properties"} run scoreboard players set $condition_id aetlas 7
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "aetlas:weather_check"} run scoreboard players set $condition_id aetlas 8

execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "alternative"} run scoreboard players set $condition_id aetlas 1
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "inverted"} run scoreboard players set $condition_id aetlas 2
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "location_check"} run scoreboard players set $condition_id aetlas 3
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "random_chance"} run scoreboard players set $condition_id aetlas 4
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "reference"} run scoreboard players set $condition_id aetlas 5
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "structures_nearby"} run scoreboard players set $condition_id aetlas 6
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "surface_properties"} run scoreboard players set $condition_id aetlas 7
execute if score $condition_id aetlas matches 0 if data storage aetlas:private {"ConditionID": "weather_check"} run scoreboard players set $condition_id aetlas 8

execute if score $condition_id aetlas matches 1.. run function aetlas:table/condition/evaluate_valid_condition
execute store result score $condition_id aetlas run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]