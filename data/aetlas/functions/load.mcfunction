#> aetlas:load
#
# Creates scoreboard objectives, defines scoreboard constants and starts main loop
#
# @handles #minecraft:load

#define storage aetlas:private

# Mark chunks as force loaded
execute in minecraft:overworld run forceload add -30000000 7760
execute in minecraft:the_nether run forceload add -30000000 7760
execute in minecraft:the_end run forceload add -30000000 7760

# Create objectives
scoreboard objectives add aetlas.chunk.x dummy
scoreboard objectives add aetlas.chunk.z dummy
scoreboard objectives add aetlas dummy

# Set some constants for cantor pairing and RNG
scoreboard players set $2 aetlas 2
scoreboard players set $lcg.multiplier aetlas 1630111353
scoreboard players set $lcg.increment aetlas 1623164762
scoreboard players set $lcg.modulus aetlas 2147483647

# Get seed
execute store result score $seed aetlas run seed

# Start loop
schedule function aetlas:main 1s