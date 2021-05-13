data modify storage aetlas:stack Condition append from storage aetlas:stack Condition[-1].term
function aetlas:table/condition/evaluate_condition
data remove storage aetlas:stack Condition[-1]

execute store success score $condition_passed aetlas if score $condition_passed aetlas matches 0