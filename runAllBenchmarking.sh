#!/bin/bash

# Run python tests
cd python
./runBenchmark.sh
cd ..

# Run git
cd git
./runBenchmark.sh
cd ..

# Run npm
cd node
./runBenchmark.sh
cd ..

# Run dbench tests
cd dbench
./runBenchmark.sh
cd ..
