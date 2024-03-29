#!/bin/bash

# Create the offline bundle
cd ./gitRepo
git bundle create offline-master main
cp ./offline-master ../
cd ../

# Git clone the bundle (Timed portion)
{ time git clone -b main offline-master offline-install; } 2> testResults.txt

# Remove the cloned repo (clean up)
rm -rf ./offline-install
rm offline-master
