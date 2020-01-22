#!/bin/bash

# Run python tests
cd python
./runBenchmark.sh
cd ..

# Run git
cd git
./runBenchmark.sh
cd ..

# Run npm TBD
cd node
./runBenchmark.sh
cd ..
