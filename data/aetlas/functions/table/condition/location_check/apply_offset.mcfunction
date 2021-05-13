data modify storage aetlas:private Pos set from entity @s Pos

execute store result score $pos.x aetlas run data get storage aetlas:private Pos[0]
execute store result score $pos.y aetlas run data get storage aetlas:private Pos[1]
execute store result score $pos.z aetlas run data get storage aetlas:private Pos[2]

execute store result score $pos.dx aetlas run data get storage aetlas:private ConditionParameters.offsetX
execute store result score $pos.dy aetlas run data get storage aetlas:private ConditionParameters.offsetY
execute store result score $pos.dz aetlas run data get storage aetlas:private ConditionParameters.offsetZ

execute store result storage aetlas:private Pos[0] double 1 run scoreboard players operation $pos.x aetlas += $pos.dx aetlas
execute store result storage aetlas:private Pos[1] double 1 run scoreboard players operation $pos.y aetlas += $pos.dy aetlas
execute store result storage aetlas:private Pos[2] double 1 run scoreboard players operation $pos.z aetlas += $pos.dz aetlas

data modify entity @s Pos set from storage aetlas:private Pos