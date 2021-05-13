> Note: this file only explains a part of the code structure behind Aetlas. Nothing explained here is necessary to use Aetlas in a data pack. This is only directed to those who are looking through the functions that make Aetlas work, want to edit them or to understand them in order to reuse some techniques in their own data packs.

# An explanation behind the "traceback" storage

Parsing a structure table is a complex operation. An entry can be a reference to another entry (`aetlas:alternatives`, `aetlas:group`, `aetlas:sequence`) or to another structure table (`aetlas:structure_table`). This can cause a function used in parsing the structure table to ultimately trigger itself. Each of these functions rely on storage tags, and sometimes on scores. The issue is that during the execution of a function, there is no way to be sure the values of the storage tags or scores 
