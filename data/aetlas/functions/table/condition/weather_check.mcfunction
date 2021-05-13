scoreboard players set $condition_passed aetlas 1

data modify storage aetlas:private ConditionParameters set from storage aetlas:private Condition[-1]
execute if score $condition_passed aetlas matches 1 if data storage aetlas:private {ConditionParameters: {"raining": true}} unless predicate aetlas:weather/raining run scoreboard players set $condition_passed aetlas 0
execute if score $condition_passed aetlas matches 1 if data storage aetlas:private {ConditionParameters: {"raining": false}} if predicate aetlas:weather/raining run scoreboard players set $condition_passed aetlas 0
execute if score $condition_passed aetlas matches 1 if data storage aetlas:private {ConditionParameters: {"thundering": true}} unless predicate aetlas:weather/thundering run scoreboard players set $condition_passed aetlas 0
execute if score $condition_passed aetlas matches 1 if data storage aetlas:private {ConditionParameters: {"thundering": false}} if predicate aetlas:weather/thundering run scoreboard players set $condition_passed aetlas 0
