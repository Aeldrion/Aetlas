execute if score $condition_id aetlas matches 1 run function aetlas:table/condition/alternative
execute if score $condition_id aetlas matches 2 run function aetlas:table/condition/inverted
execute if score $condition_id aetlas matches 3 run function aetlas:table/condition/location_check
execute if score $condition_id aetlas matches 4 run function aetlas:table/condition/random_chance
execute if score $condition_id aetlas matches 5 run function aetlas:table/condition/reference
execute if score $condition_id aetlas matches 6 run function aetlas:table/condition/structures_nearby
execute if score $condition_id aetlas matches 7 run function aetlas:table/condition/surface_properties
execute if score $condition_id aetlas matches 8 run function aetlas:table/condition/weather_check