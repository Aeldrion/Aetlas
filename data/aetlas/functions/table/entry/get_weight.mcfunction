# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute unless data storage aetlas:stack Entry[-1].weight run scoreboard players set $aetlas.weight aetlas.var 1
execute if data storage aetlas:stack Entry[-1].weight store result score $aetlas.weight aetlas.var run data get storage aetlas:stack Entry[-1].weight
