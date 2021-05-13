# Returns height to $pos.y

execute if data storage aetlas:private {Function: {ignore_fluids: 1b}} run data modify storage aetlas:private IgnoreFluids set value 1b

execute unless data storage aetlas:private {Function: {above_ground: 1b}} if data storage aetlas:private Function.height unless data storage aetlas:private Function.height.max unless data storage aetlas:private Function.height.max run function aetlas:table/function/set_height/absolute_fixed
execute unless data storage aetlas:private {Function: {above_ground: 1b}} if data storage aetlas:private Function.height if data storage aetlas:private Function.height.max unless data storage aetlas:private Function.height.max run function aetlas:table/function/set_height/absolute_range_nomax
execute unless data storage aetlas:private {Function: {above_ground: 1b}} if data storage aetlas:private Function.height if data storage aetlas:private Function.height.max unless data storage aetlas:private Function.height.max run function aetlas:table/function/set_height/absolute_range_nomin
execute unless data storage aetlas:private {Function: {above_ground: 1b}} if data storage aetlas:private Function.height if data storage aetlas:private Function.height.max if data storage aetlas:private Function.height.max run function aetlas:table/function/set_height/absolute_range

execute if data storage aetlas:private {Function: {above_ground: 1b}} if data storage aetlas:private Function.height unless data storage aetlas:private Function.height.max unless data storage aetlas:private Function.height.max run function aetlas:table/function/set_height/relative_fixed
execute if data storage aetlas:private {Function: {above_ground: 1b}} if data storage aetlas:private Function.height if data storage aetlas:private Function.height.max unless data storage aetlas:private Function.height.max run function aetlas:table/function/set_height/relative_range_nomax
execute if data storage aetlas:private {Function: {above_ground: 1b}} if data storage aetlas:private Function.height if data storage aetlas:private Function.height.max unless data storage aetlas:private Function.height.max run function aetlas:table/function/set_height/relative_range_nomin
execute if data storage aetlas:private {Function: {above_ground: 1b}} if data storage aetlas:private Function.height if data storage aetlas:private Function.height.max if data storage aetlas:private Function.height.max run function aetlas:table/function/set_height/relative_range

data remove storage aetlas:private IgnoreFluids