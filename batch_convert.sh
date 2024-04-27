#!/bin/bash
cd dict
# rename dictionary from *.dz to *.gz
find -type f -name '*.dz' -exec bash -c 'mv "$0" "${0/.dz/.gz}"' {} \;
# extract all *.gz files
find -type f -name '*.gz' -exec gunzip {} \;

# batch convert all dsl to dic
find dict -type f -name '*.dsl' -exec wine converter.exe {} bel  \;
