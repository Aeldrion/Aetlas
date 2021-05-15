#> aetlas:benchmark/start
#
# Starts a new benchmark
# Elapsed time can be evaluated based on worldborder radius
#
# @within aetlas:main
# @private

# Get current worldborder size, in order to set it back to whatever it was before
execute store result score $world_border_size aetlas run worldborder get

# Set worldborder size to 60M and start benchmark
worldborder set 60000000
worldborder add -10000000 10