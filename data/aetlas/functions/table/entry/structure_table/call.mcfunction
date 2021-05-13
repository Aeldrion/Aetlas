data modify storage aetlas:stack Table append from storage aetlas:private TargetTable
function aetlas:table/read_structure_table
data remove storage aetlas:stack Table[-1]