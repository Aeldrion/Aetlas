# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute unless data storage aetlas:private Function."x"."min" unless data storage aetlas:private Function."x"."max" run function aetlas:table/function/offset_position/x/fixed
execute if data storage aetlas:private Function."x"."min" unless data storage aetlas:private Function."x"."max" run function aetlas:table/function/offset_position/x/range_nomax
execute if data storage aetlas:private Function."x"."max" unless data storage aetlas:private Function."x"."min" run function aetlas:table/function/offset_position/x/range_nomin
execute if data storage aetlas:private Function."x"."min" if data storage aetlas:private Function."x"."max" run function aetlas:table/function/offset_position/x/range