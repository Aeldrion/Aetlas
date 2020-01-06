# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:stack Score append value 0
execute store result storage aetlas:stack Score[-1] int 1 run scoreboard players get $aetlas.entries aetlas.var

data modify storage aetlas:stack Entries append from storage aetlas:stack Entry[-1].children
execute store result score $aetlas.entries aetlas.var run data get storage aetlas:stack Entries[-1]
function aetlas:table/entry/read_all_entries
data remove storage aetlas:stack Entries[-1]

execute store result score $aetlas.entries aetlas.var run data get storage aetlas:stack Score[-1]
data remove storage aetlas:stack Score[-1]
