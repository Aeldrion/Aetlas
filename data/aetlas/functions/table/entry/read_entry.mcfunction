# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Reads an entry

data modify storage aetlas:traceback EntryType append from storage aetlas:traceback Entry[-1]."type"

# LastEntryType cannot use traceback because checking for a value is impossible to do with an index
# Therefore, it must be redefined every time because this function can ultimately call itself and overwrite LastEntryType
data modify storage aetlas:private LastEntryType set from storage aetlas:traceback EntryType[-1]
execute store success score $aetlas.entry_type aetlas.var unless data storage aetlas:private {LastEntryType: "aetlas:structure_table"} unless data storage aetlas:private {LastEntryType: "minecraft:structure_table"} unless data storage aetlas:private {LastEntryType: "structure_table"}
execute if score $aetlas.entry_type aetlas.var matches 0 run function aetlas:table/entry/structure_table

data modify storage aetlas:private LastEntryType set from storage aetlas:traceback EntryType[-1]
execute store success score $aetlas.entry_type aetlas.var unless data storage aetlas:private {LastEntryType: "aetlas:structure_reference"} unless data storage aetlas:private {LastEntryType: "minecraft:structure_reference"} unless data storage aetlas:private {LastEntryType: "structure_reference"}
execute if score $aetlas.entry_type aetlas.var matches 0 run function aetlas:table/entry/structure_reference

data modify storage aetlas:private LastEntryType set from storage aetlas:traceback EntryType[-1]
execute store success score $aetlas.entry_type aetlas.var unless data storage aetlas:private {LastEntryType: "aetlas:structure"} unless data storage aetlas:private {LastEntryType: "structure"} unless data storage aetlas:private {LastEntryType: "structure"}
execute if score $aetlas.entry_type aetlas.var matches 0 run function aetlas:table/entry/structure

data modify storage aetlas:private LastEntryType set from storage aetlas:traceback EntryType[-1]
execute store success score $aetlas.entry_type aetlas.var unless data storage aetlas:private {LastEntryType: "aetlas:alternatives"} unless data storage aetlas:private {LastEntryType: "alternatives"} unless data storage aetlas:private {LastEntryType: "minecraft:alternatives"}
execute if score $aetlas.entry_type aetlas.var matches 0 run function aetlas:table/entry/alternatives

data modify storage aetlas:private LastEntryType set from storage aetlas:traceback EntryType[-1]
execute store success score $aetlas.entry_type aetlas.var unless data storage aetlas:private {LastEntryType: "aetlas:group"} unless data storage aetlas:private {LastEntryType: "group"} unless data storage aetlas:private {LastEntryType: "minecraft:group"}
execute if score $aetlas.entry_type aetlas.var matches 0 run function aetlas:table/entry/group

data modify storage aetlas:private LastEntryType set from storage aetlas:traceback EntryType[-1]
execute store success score $aetlas.entry_type aetlas.var unless data storage aetlas:private {LastEntryType: "aetlas:sequence"} unless data storage aetlas:private {LastEntryType: "sequence"} unless data storage aetlas:private {LastEntryType: "minecraft:sequence"}
execute if score $aetlas.entry_type aetlas.var matches 0 run function aetlas:table/entry/sequence

data remove storage aetlas:traceback EntryType[-1]