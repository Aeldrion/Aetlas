#> aetlas:load
#
# Creates scoreboard objectives, defines scoreboard constants and starts main loop
#
# @private
# @handles #minecraft:load

# DHP setup
#define storage aetlas:private
#define storage aetlas:input
#define storage aetlas:stack

# Create objectives
scoreboard objectives add aetlas.chunk.x dummy
scoreboard objectives add aetlas.chunk.z dummy
scoreboard objectives add aetlas dummy

# Set some constants for cantor pairing and RNG
scoreboard players set $lcg.multiplier aetlas 1630111353
scoreboard players set $lcg.increment aetlas 1623164762
scoreboard players set $lcg.modulus aetlas 2147483647
scoreboard players set $2 aetlas 2

# Get seed
execute store result score $seed aetlas run seed

# Start loop
schedule function aetlas:main 1s