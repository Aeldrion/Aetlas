# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:announce_in_chat"}} run scoreboard players set $aetlas.function_id aetlas.var 1
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:block_filters"}} run scoreboard players set $aetlas.function_id aetlas.var 2 
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:disable_entities"}} run scoreboard players set $aetlas.function_id aetlas.var 3
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:random_mirror"}} run scoreboard players set $aetlas.function_id aetlas.var 4
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:random_rotation"}} run scoreboard players set $aetlas.function_id aetlas.var 5
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:set_height"}} run scoreboard players set $aetlas.function_id aetlas.var 6
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:set_integrity"}} run scoreboard players set $aetlas.function_id aetlas.var 7
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:set_mirror"}} run scoreboard players set $aetlas.function_id aetlas.var 8
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "minecraft:set_rotation"}} run scoreboard players set $aetlas.function_id aetlas.var 9

execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:announce_in_chat"}} run scoreboard players set $aetlas.function_id aetlas.var 1
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:block_filters"}} run scoreboard players set $aetlas.function_id aetlas.var 2 
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:disable_entities"}} run scoreboard players set $aetlas.function_id aetlas.var 3
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:random_mirror"}} run scoreboard players set $aetlas.function_id aetlas.var 4
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:random_rotation"}} run scoreboard players set $aetlas.function_id aetlas.var 5
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:set_height"}} run scoreboard players set $aetlas.function_id aetlas.var 6
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:set_integrity"}} run scoreboard players set $aetlas.function_id aetlas.var 7
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:set_mirror"}} run scoreboard players set $aetlas.function_id aetlas.var 8
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "aetlas:set_rotation"}} run scoreboard players set $aetlas.function_id aetlas.var 9

execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "announce_in_chat"}} run scoreboard players set $aetlas.function_id aetlas.var 1
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "block_filters"}} run scoreboard players set $aetlas.function_id aetlas.var 2 
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "disable_entities"}} run scoreboard players set $aetlas.function_id aetlas.var 3
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "random_mirror"}} run scoreboard players set $aetlas.function_id aetlas.var 4
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "random_rotation"}} run scoreboard players set $aetlas.function_id aetlas.var 5
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "set_height"}} run scoreboard players set $aetlas.function_id aetlas.var 6
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "set_integrity"}} run scoreboard players set $aetlas.function_id aetlas.var 7
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "set_mirror"}} run scoreboard players set $aetlas.function_id aetlas.var 8
execute if score $aetlas.function_id aetlas.var matches 0 if data storage aetlas:private {"Function": {"function": "set_rotation"}} run scoreboard players set $aetlas.function_id aetlas.var 9

execute if score $aetlas.function_id aetlas.var matches 1.. run function aetlas:table/function/run_valid_function