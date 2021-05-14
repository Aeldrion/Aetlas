# Aetlas

Aetlas is a utility data pack for Minecraft 1.17 that provides a seed-specific structure generation framework based on storage data, and notification for newly generated chunks using a function tag.

## How to use

### Running functions in every chunk

To run commands at every newly generated chunk, add your function to the `#aetlas:chunk` function tag. Functions are called at y=0, 13 blocks east and 4 blocks south of a chunk's corner in every dimension.

### Generating structures using the Aetlas generation framework

Aetlas uses a storage NBT structure similar to loot tables, with structures being entries and additional parameters being functions. Every data pack that relies on Aetlas should add a single table to the global structure table list (`aetlas:input Tables`), with a unique `id` key corresponding to your data pack:

```mcfunction
execute unless data storage aetlas:input Tables[{id: "foo:bar"}] run data modify storage aetlas:input Tables append {id: "foo:bar", pools: [{roll: 1, entries: [{...}]}]}
```

IDs for entries, functions and predicates can be namespaced with `minecraft`, `aetlas` or with no namespace at all.

Additional structure tables can be defined in `aetlas:input References`, for referencing using `minecraft:structure_table` entries (see below).

#### Entries

Allowed entries are `structure`, `group`, `alternatives`, `sequence` and `structure_table`. `structure` generates a single structure. `group`, `alternatives` and `sequence` function the same as the corresponding loot table entries. Finally, `structure_table` invokes another structure table in `aetlas:input References` given an ID.

```json
{
    "type": "minecraft:structure",
    "name": "foo:bar"
}
```

```json
{
    "type": "minecraft:group",
    "children": [{
        "type": "minecraft:structure",
        "name": "foo:bar"
    }, {
        "type": "minecraft:structure_table",
        "name": "foo:baz"
    }]
}
```

#### Functions

Additional functions can be used to modify structure parameters for `structure` entries. Allowed functions are `square`, `set_rotation`, `set_mirror`, `set_height`, `set_integrity` and `announce_in_chat`.

* `square` randomises the horizontal position of the structure within the chunk.

* `set_rotation` sets the rotation of the structure. Can be "NONE", "CLOCKWISE_90", "CLOCKWISE_180", "COUNTERCLOCKWISE_90" or "RANDOM". Defaults to "RANDOM".

* `set_mirror` defines how the structure is mirrored. Can be "NONE", "LEFT_RIGHT", "FRONT_BACK" or "RANDOM". Defaults to "RANDOM".

* `set_height` determines the height where the structure block is placed. The optional boolean parameter `heightmap` can be used to define height relatively to different height maps: can be "ABSOLUTE" (y=0), "SURFACE" (highest solid block, not including vegetation) or "DEEPEST" (deepest air/void air block above a solid block). Defaults to "ABSOLUTE". The optional boolean parameter `include_liquids` determines whether the surface should be above water (`0b`) or underwater (`1b`) if there is water at the surface. Defaults to `0b`.

* `set_integrity` defines the integrity of the structure (between `0.0f` and `1.0f`). Defaults to `1.0f`.

* `announce_in_chat` displays a message in chat when the structure loads. If `message` is not specified, defaults to the structure's ID and position.

```json
{
    "type": "minecraft:structure",
    "name": "foo:bar",
    "functions": [
        {
            "type": "mineraft:square"
        },
        {
            "type": "minecraft:set_rotation",
            "rotation": "CLOCKWISE_180"
        },
        {
            "type": "minecraft:set_mirror",
            "mirror": "FRONT_BACK"
        },
        {
            "type": "minecraft:set_height",
            "height": {
                "min": 7,
                "max": 13
            },
            "heightmap": "SURFACE"
        },
        {
            "type": "minecraft:set_integrity",
            "integrity": 0.7
        },
        {
            "type": "minecraft:announce_in_chat",
            "message": {
                "text": "Loaded!",
                "color": "gold"
            }
        }
    ]
}
```

#### Predicates

Pools, conditions and functions can have predicates like in loot tables. However, Aetlas recognises only a handful of predicates: `alternative`, `inverted`, `location_check`, `weather_check`, `time_check` and `random_chance`.

* `location_check` only supports `biome`, `dimension`, `feature`, `light` and `position` sub-predicates. Additionally, `biome` does not support custom biomes.

* `random_chance` uses a PRNG that depends on the seed and the current position

* `weather_check` and `time_check` depend on the time the chunk generates, thus potentially breaking structure consistency between worlds with identical seeds.

```json
{
    "condition": "minecraft:alternative",
    "terms": [
        {
            "condition": "minecraft:inverted",
            "term": {
                "condition": "minecraft:location_check",
                "predicate": {
                    "dimension": "minecraft:overworld",
                    "light": {
                        "min": 7,
                        "max": 11
                    }
                }
            }
        },
        {
            "condition": "minecraft:random_chance",
            "chance": 0.1
        }
    ]
}
```

#### Number providers

Number provider types supported by Aetlas are `constant`, `uniform` and `binomial`. Like in loot tables, specifying the provider type is not for constants and uniforms. Here are multiple examples of valid number providers:

```json
"rolls": 1
```

```json
"rolls": {
    "min": 0,
    "max": 2
}
```

```json
"rolls": {
    "type": "minecraft:binomial",
    "n": 4,
    "p": 0.3
}
```

## Adding Aetlas to your own pack

You can add Aetlas to your project simply by dragging the `data/aetlas` folder in your data pack and merging `minecraft` function tags. Note that Aetlas does not have versioning, so if multiple packs use different versions of Aetlas, they might clash with each other. If you want to modify Aetlas for your data pack, it is recommended to change the `aetlas` namespace to something else.

## Crediting and licensing

Aetlas is licensed under 0BSD, meaning that you can freely use Aetlas in your projects for any purpose without attribution.
However, crediting is always welcome. If you want to credit me, you can use the following information:

```txt
Uses Aetlas by Aeldrion
https://www.github.com/Aeldrion/Aetlas
https://www.twitter.com/Aeldrion
```
