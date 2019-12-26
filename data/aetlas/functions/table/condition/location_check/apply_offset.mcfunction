# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:private Pos set from entity @s Pos

execute store result score $aetlas.pos.x aetlas.var run data get storage aetlas:private Pos[0]
execute store result score $aetlas.pos.y aetlas.var run data get storage aetlas:private Pos[1]
execute store result score $aetlas.pos.z aetlas.var run data get storage aetlas:private Pos[2]

execute store result score $aetlas.pos.dx aetlas.var run data get storage aetlas:private ConditionParameters.offsetX
execute store result score $aetlas.pos.dy aetlas.var run data get storage aetlas:private ConditionParameters.offsetY
execute store result score $aetlas.pos.dz aetlas.var run data get storage aetlas:private ConditionParameters.offsetZ

execute store result storage aetlas:private Pos[0] double 1 run scoreboard players operation $aetlas.pos.x aetlas.var += $aetlas.pos.dx aetlas.var
execute store result storage aetlas:private Pos[1] double 1 run scoreboard players operation $aetlas.pos.y aetlas.var += $aetlas.pos.dy aetlas.var
execute store result storage aetlas:private Pos[2] double 1 run scoreboard players operation $aetlas.pos.z aetlas.var += $aetlas.pos.dz aetlas.var

data modify entity @s Pos set from storage aetlas:private Pos