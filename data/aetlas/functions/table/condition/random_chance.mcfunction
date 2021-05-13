data modify storage aetlas:private ConditionParameters set from storage aetlas:stack Condition[-1]
execute store result score $random_chance aetlas run data get storage aetlas:private ConditionParameters.chance 1000000

scoreboard players set $random.max aetlas 1000000
function aetlas:math/random
execute store success score $condition_passed aetlas if score $random aetlas < $random_chance aetlas