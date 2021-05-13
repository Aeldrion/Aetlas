scoreboard players set $surface_height.offset aetlas 0
execute if score $surface_height.offset aetlas matches 0 if predicate aetlas:height/fluids_as_air/clear_below_64 run scoreboard players set $surface_height.offset aetlas 64
execute if score $surface_height.offset aetlas matches 0 if predicate aetlas:height/fluids_as_air/clear_below_32 run scoreboard players set $surface_height.offset aetlas 32
execute if score $surface_height.offset aetlas matches 0 if predicate aetlas:height/fluids_as_air/clear_below_16 run scoreboard players set $surface_height.offset aetlas 16
execute if score $surface_height.offset aetlas matches 0 if predicate aetlas:height/fluids_as_air/clear_below_8 run scoreboard players set $surface_height.offset aetlas 8
execute if score $surface_height.offset aetlas matches 0 if predicate aetlas:height/fluids_as_air/clear_below_4 run scoreboard players set $surface_height.offset aetlas 4
execute if score $surface_height.offset aetlas matches 0 if predicate aetlas:height/fluids_as_air/clear_below_2 run scoreboard players set $surface_height.offset aetlas 2
execute if score $surface_height.offset aetlas matches 0 if predicate aetlas:height/fluids_as_air/clear_below_1 run scoreboard players set $surface_height.offset aetlas 1

scoreboard players operation $surface_height aetlas -= $surface_height.offset aetlas

execute if score $surface_height.offset aetlas matches 2 positioned ~ ~-2 ~ run function aetlas:height/overworld_with_fluids_as_air
execute if score $surface_height.offset aetlas matches 4 positioned ~ ~-4 ~ run function aetlas:height/overworld_with_fluids_as_air
execute if score $surface_height.offset aetlas matches 8 positioned ~ ~-8 ~ run function aetlas:height/overworld_with_fluids_as_air
execute if score $surface_height.offset aetlas matches 16 positioned ~ ~-16 ~ run function aetlas:height/overworld_with_fluids_as_air
execute if score $surface_height.offset aetlas matches 32 positioned ~ ~-32 ~ run function aetlas:height/overworld_with_fluids_as_air
execute if score $surface_height.offset aetlas matches 64 positioned ~ ~-64 ~ run function aetlas:height/overworld_with_fluids_as_air