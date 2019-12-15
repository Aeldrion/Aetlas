# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.function_id aetlas.var matches 1 run function aetlas:structures/table/function/announce_in_chat
execute if score $aetlas.function_id aetlas.var matches 2 run function aetlas:structures/table/function/block_filters
execute if score $aetlas.function_id aetlas.var matches 3 run function aetlas:structures/table/function/disable_entities
execute if score $aetlas.function_id aetlas.var matches 4 run function aetlas:structures/table/function/random_mirror
execute if score $aetlas.function_id aetlas.var matches 5 run function aetlas:structures/table/function/random_rotation
execute if score $aetlas.function_id aetlas.var matches 6 run function aetlas:structures/table/function/set_height
execute if score $aetlas.function_id aetlas.var matches 7 run function aetlas:structures/table/function/set_integrity
execute if score $aetlas.function_id aetlas.var matches 8 run function aetlas:structures/table/function/set_mirror
execute if score $aetlas.function_id aetlas.var matches 9 run function aetlas:structures/table/function/set_rotation