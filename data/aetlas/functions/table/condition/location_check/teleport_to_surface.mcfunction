execute if data storage aetlas:private {ConditionParameters: {ignore_fluids: true}} run data modify storage aetlas:private IgnoreFluids set value 1b
function aetlas:height/get_surface_height
data remove storage aetlas:private IgnoreFluids

execute store result entity @s Pos[1] double 1 run scoreboard players get $surface_height aetlas