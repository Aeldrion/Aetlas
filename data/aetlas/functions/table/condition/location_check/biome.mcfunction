execute store result score $name_length aetlas run data get storage aetlas:private ConditionParameters.predicate.biome

execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 5..7 run function aetlas:table/condition/location_check/biome/5_7
execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 8..10 run function aetlas:table/condition/location_check/biome/8_10
execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 11..13 run function aetlas:table/condition/location_check/biome/11_13
execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 14..16 run function aetlas:table/condition/location_check/biome/14_16
execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 17..19 run function aetlas:table/condition/location_check/biome/17_19
execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 20..22 run function aetlas:table/condition/location_check/biome/20_22
execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 23..25 run function aetlas:table/condition/location_check/biome/23_25
execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 27 run function aetlas:table/condition/location_check/biome/27
execute if score $condition_passed aetlas matches 1 if score $name_length aetlas matches 32 run function aetlas:table/condition/location_check/biome/32