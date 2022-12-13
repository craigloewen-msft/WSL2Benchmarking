#!/bin/bash

# Run python tests
echo "----RUNNING PYTHON----"
cd python
./runBenchmark.sh
cd ..

# Run git
echo "----RUNNING GIT----"
cd git
./runBenchmark.sh
cd ..

# Run npm
echo "----RUNNING NPM----"
cd node
./runBenchmark.sh
cd ..

# Run dbench tests
echo "----RUNNING DBENCH----"
cd dbench
./runBenchmark.sh
cd ..
