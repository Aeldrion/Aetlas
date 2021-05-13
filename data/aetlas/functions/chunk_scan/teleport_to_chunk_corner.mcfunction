# Teleports the executing entity to the corner of the chunk it is in (min x, min z)

data modify storage aetlas:private Pos set from entity @s Pos
execute store result storage aetlas:private Pos[0] double 16 run data get storage aetlas:private Pos[0] 0.0625
execute store result storage aetlas:private Pos[2] double 16 run data get storage aetlas:private Pos[2] 0.0625
data modify storage aetlas:private Pos[1] set value 0
data modify entity @s Pos set from storage aetlas:private Pos
