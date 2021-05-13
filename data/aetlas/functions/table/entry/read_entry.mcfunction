# Reads an entry
data modify storage aetlas:stack EntryType append from storage aetlas:stack Entry[-1].type

# LastEntryType cannot use traceback because checking for a value is impossible to do with an index
# Therefore, it must be redefined every time because this function can ultimately call itself and overwrite LastEntryType
data modify storage aetlas:private LastEntryType set from storage aetlas:stack EntryType[-1]
scoreboard players set $entry_type aetlas 0
execute unless data storage aetlas:private {LastEntryType: "aetlas:structure_table"} unless data storage aetlas:private {LastEntryType: "minecraft:structure_table"} unless data storage aetlas:private {LastEntryType: "structure_table"} run scoreboard players set $entry_type aetlas 1
execute if score $entry_type aetlas matches 0 run function aetlas:table/entry/structure_table

data modify storage aetlas:private LastEntryType set from storage aetlas:stack EntryType[-1]
scoreboard players set $entry_type aetlas 0
execute unless data storage aetlas:private {LastEntryType: "aetlas:structure_reference"} unless data storage aetlas:private {LastEntryType: "minecraft:structure_reference"} unless data storage aetlas:private {LastEntryType: "structure_reference"} run scoreboard players set $entry_type aetlas 1
execute if score $entry_type aetlas matches 0 run function aetlas:table/entry/structure_reference

data modify storage aetlas:private LastEntryType set from storage aetlas:stack EntryType[-1]
scoreboard players set $entry_type aetlas 0
execute unless data storage aetlas:private {LastEntryType: "aetlas:structure"} unless data storage aetlas:private {LastEntryType: "minecraft:structure"} unless data storage aetlas:private {LastEntryType: "structure"} run scoreboard players set $entry_type aetlas 1
execute if score $entry_type aetlas matches 0 run function aetlas:table/entry/structure

data modify storage aetlas:private LastEntryType set from storage aetlas:stack EntryType[-1]
scoreboard players set $entry_type aetlas 0
execute unless data storage aetlas:private {LastEntryType: "aetlas:alternatives"} unless data storage aetlas:private {LastEntryType: "minecraft:alternatives"} unless data storage aetlas:private {LastEntryType: "alternatives"} run scoreboard players set $entry_type aetlas 1
execute if score $entry_type aetlas matches 0 run function aetlas:table/entry/alternatives

data modify storage aetlas:private LastEntryType set from storage aetlas:stack EntryType[-1]
scoreboard players set $entry_type aetlas 0
execute unless data storage aetlas:private {LastEntryType: "aetlas:group"} unless data storage aetlas:private {LastEntryType: "minecraft:group"} unless data storage aetlas:private {LastEntryType: "group"} run scoreboard players set $entry_type aetlas 1
execute if score $entry_type aetlas matches 0 run function aetlas:table/entry/group

data modify storage aetlas:private LastEntryType set from storage aetlas:stack EntryType[-1]
scoreboard players set $entry_type aetlas 0
execute unless data storage aetlas:private {LastEntryType: "aetlas:sequence"} unless data storage aetlas:private {LastEntryType: "minecraft:sequence"} unless data storage aetlas:private {LastEntryType: "sequence"} run scoreboard players set $entry_type aetlas 1
execute if score $entry_type aetlas matches 0 run function aetlas:table/entry/sequence

data remove storage aetlas:stack EntryType[-1]