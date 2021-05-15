#> aetlas:benchmark/get_time
#
# Stores the time elapsed since benchmark time
#
# @within aetlas:chunk_scan/loop
# @private
# @output
#	score
#		$benchmark.duration aetlas
#			The time elapsed, 1.000.000 = 1s

execute store result score $benchmark.world_border_size aetlas run worldborder get
scoreboard players set $benchmark_duration aetlas 60000000
scoreboard players operation $benchmark.duration aetlas -= $benchmark.world_border_size aetlas