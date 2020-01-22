#!/bin/bash

# Setup the tools and the package
npm install -g npm-bundle
cd gitRepo
BUNDLE_NAME=$(npm-bundle)
mv $BUNDLE_NAME gitRepo.tar.gz
mv gitRepo.tar.gz ../
cd ../
mkdir ./nodeInstalls

# Install offline the versions (Timed portion)
cd ./nodeInstalls
{ time npm install ../gitRepo.tar.gz; } 2> ../testResults.txt
cd ../

# Remove the used files (clean up)
rm -rf ./nodeInstalls
rm gitRepo.tar.gz
