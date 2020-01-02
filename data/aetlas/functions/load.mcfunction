# Author: Aeldrion
# Version: Minecraft 1.15
# Project: Aetlas

scoreboard objectives add aetlas.chunk.x dummy
scoreboard objectives add aetlas.chunk.z dummy
scoreboard objectives add aetlas.var dummy

execute store result score $aetlas.seed aetlas.var run seed

schedule function aetlas:main 1s