# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

data modify storage aetlas:stack Condition append from storage aetlas:stack Condition[-1].term
function aetlas:table/condition/evaluate_condition
data remove storage aetlas:stack Condition[-1]

execute store success score $aetlas.condition_passed aetlas.var if score $aetlas.condition_passed aetlas.var matches 0