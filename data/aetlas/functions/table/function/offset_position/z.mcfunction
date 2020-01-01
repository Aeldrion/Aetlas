# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute unless data storage aetlas:private Function."z"."min" unless data storage aetlas:private Function."z"."max" run function aetlas:table/function/offset_position/z/fixed
execute if data storage aetlas:private Function."z"."min" unless data storage aetlas:private Function."z"."max" run function aetlas:table/function/offset_position/z/range_nomax
execute if data storage aetlas:private Function."z"."max" unless data storage aetlas:private Function."z"."min" run function aetlas:table/function/offset_position/z/range_nomin
execute if data storage aetlas:private Function."z"."min" if data storage aetlas:private Function."z"."max" run function aetlas:table/function/offset_position/z/range