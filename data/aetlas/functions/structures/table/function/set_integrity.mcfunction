# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:private StructureBlockData.integrity set from storage aetlas:private Function."integrity"
execute if storage aetlas:private Function."seed" run data modify storage aetlas:private StructureBlockData.seed set from storage aetlas:private Function."seed"