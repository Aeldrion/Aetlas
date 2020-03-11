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
scoreboard objectives add aetlas.var dummy

# Get seed
execute store result score $aetlas.seed aetlas.var run seed

# Start loop
schedule function aetlas:main 1s