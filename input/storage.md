# Private use only

## aetlas:private
General purpose NBT storage used behind the scenes by Aetlas.

## aetlas:traceback
NBT arrays for function context that doesn't break as soon as recursion is involved.
Used behind the scenes by Aetlas.


# Input

## aetlas:input
Everything that can be modified by other data packs.
- <aetlas:input Root> is the root structure table used in every chunk of every dimension. Pools can be appended (see adding pools to the root structure table).
- <aetlas:input Tables> is a list of named structure tables for reference in `structure_table` entries.
- <aetlas:input Functions> is a list of named functions for reference in `reference` functions.
- <aetlas:input Conditions> is a list of named conditions for reference in `reference` conditions.
- <aetlas:input Structures> is a list of structure objects for reference in `structure_reference` entries.