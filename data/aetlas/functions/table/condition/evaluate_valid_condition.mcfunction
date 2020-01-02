# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_id aetlas.var matches 1 run function aetlas:table/condition/alternative
execute if score $aetlas.condition_id aetlas.var matches 2 run function aetlas:table/condition/inverted
execute if score $aetlas.condition_id aetlas.var matches 3 run function aetlas:table/condition/location_check
execute if score $aetlas.condition_id aetlas.var matches 4 run function aetlas:table/condition/random_chance
execute if score $aetlas.condition_id aetlas.var matches 5 run function aetlas:table/condition/reference
execute if score $aetlas.condition_id aetlas.var matches 6 run function aetlas:table/condition/structures_nearby
execute if score $aetlas.condition_id aetlas.var matches 7 run function aetlas:table/condition/surface_properties
execute if score $aetlas.condition_id aetlas.var matches 8 run function aetlas:table/condition/weather_check