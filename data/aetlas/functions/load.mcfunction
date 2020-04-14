# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

# Mark chunks as force loaded
execute in minecraft:overworld run forceload add -30000000 7760
execute in minecraft:the_nether run forceload add -30000000 7760
execute in minecraft:the_end run forceload add -30000000 7760

# Create objectives
scoreboard objectives add aetlas.chunk.x dummy
scoreboard objectives add aetlas.chunk.z dummy
scoreboard objectives add aetlas.const dummy
scoreboard objectives add aetlas.var dummy

# Set some constants for cantor pairing and RNG
scoreboard players set $2 aetlas.var 2
scoreboard players set $aetlas.lcg.multiplier aetlas.var 1630111353
scoreboard players set $aetlas.lcg.increment aetlas.var 1623164762
scoreboard players set $aetlas.lcg.modulus aetlas.var 2147483647

# Get seed
execute store result score $aetlas.seed aetlas.var run seed

# Start loop
schedule function aetlas:main 1s