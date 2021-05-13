# Generates a random number between $random.min (included) and $random.max (excluded)
# Determined by previous seed: starting with the same seed, repeated iterations of this function will always yield the same sequence of results

scoreboard players operation $lcg.seed aetlas *= $lcg.multiplier aetlas
scoreboard players operation $lcg.seed aetlas += $lcg.increment aetlas
scoreboard players operation $lcg.seed aetlas %= $lcg.modulus aetlas

scoreboard players operation $random.max aetlas -= $random.min aetlas
scoreboard players operation $random aetlas = $lcg.seed aetlas
scoreboard players operation $random aetlas %= $random.max aetlas
scoreboard players operation $random aetlas += $random.min aetlas
scoreboard players operation $random.max aetlas += $random.min aetlas