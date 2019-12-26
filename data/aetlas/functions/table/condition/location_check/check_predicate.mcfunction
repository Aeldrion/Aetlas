# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters."predicate"."dimension" run function aetlas:table/condition/location_check/dimension
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters."predicate"."feature" run function aetlas:table/condition/location_check/feature
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters."predicate"."light" run function aetlas:table/condition/location_check/light
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters."predicate"."position" run function aetlas:table/condition/location_check/position
execute if score $aetlas.condition_passed aetlas.var matches 1 if data storage aetlas:private ConditionParameters."predicate"."biome" run function aetlas:table/condition/location_check/biome