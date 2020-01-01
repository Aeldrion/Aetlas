# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

execute unless data storage aetlas:private Function."y"."min" unless data storage aetlas:private Function."y"."max" run function aetlas:table/function/offset_position/y/fixed
execute if data storage aetlas:private Function."y"."min" unless data storage aetlas:private Function."y"."max" run function aetlas:table/function/offset_position/y/range_nomax
execute if data storage aetlas:private Function."y"."max" unless data storage aetlas:private Function."y"."min" run function aetlas:table/function/offset_position/y/range_nomin
execute if data storage aetlas:private Function."y"."min" if data storage aetlas:private Function."y"."max" run function aetlas:table/function/offset_position/y/range