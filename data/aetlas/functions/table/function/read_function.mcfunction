scoreboard players set $function_id aetlas 0

execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:announce_in_chat"}} run scoreboard players set $function_id aetlas 1
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:block_filters"}} run scoreboard players set $function_id aetlas 2 
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:disable_entities"}} run scoreboard players set $function_id aetlas 3
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:offset_position"}} run scoreboard players set $function_id aetlas 4
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:random_mirror"}} run scoreboard players set $function_id aetlas 5
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:random_rotation"}} run scoreboard players set $function_id aetlas 6
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:set_height"}} run scoreboard players set $function_id aetlas 7
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:set_integrity"}} run scoreboard players set $function_id aetlas 8
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:set_mirror"}} run scoreboard players set $function_id aetlas 9
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "minecraft:set_rotation"}} run scoreboard players set $function_id aetlas 10

execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:announce_in_chat"}} run scoreboard players set $function_id aetlas 1
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:block_filters"}} run scoreboard players set $function_id aetlas 2 
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:disable_entities"}} run scoreboard players set $function_id aetlas 3
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:offset_position"}} run scoreboard players set $function_id aetlas 4
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:random_mirror"}} run scoreboard players set $function_id aetlas 5
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:random_rotation"}} run scoreboard players set $function_id aetlas 6
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:set_height"}} run scoreboard players set $function_id aetlas 7
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:set_integrity"}} run scoreboard players set $function_id aetlas 8
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:set_mirror"}} run scoreboard players set $function_id aetlas 9
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "aetlas:set_rotation"}} run scoreboard players set $function_id aetlas 10

execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "announce_in_chat"}} run scoreboard players set $function_id aetlas 1
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "block_filters"}} run scoreboard players set $function_id aetlas 2 
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "disable_entities"}} run scoreboard players set $function_id aetlas 3
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "offset_position"}} run scoreboard players set $function_id aetlas 4
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "random_mirror"}} run scoreboard players set $function_id aetlas 5
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "random_rotation"}} run scoreboard players set $function_id aetlas 6
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "set_height"}} run scoreboard players set $function_id aetlas 7
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "set_integrity"}} run scoreboard players set $function_id aetlas 8
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "set_mirror"}} run scoreboard players set $function_id aetlas 9
execute if score $function_id aetlas matches 0 if data storage aetlas:private {Function: {function: "set_rotation"}} run scoreboard players set $function_id aetlas 10

execute if score $function_id aetlas matches 1.. run function aetlas:table/function/read_valid_function