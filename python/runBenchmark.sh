#!/bin/bash

# Download the requirements
pip3 download -r requirements.txt -d ./downloads/

# Install the requirements from the download (Timed portion)
{ time pip3 install --no-index --find-links ./downloads -r requirements.txt ; } 2> testResults.txt

# Remove downloaded components (clean up)
pip3 uninstall -r requirements.txt -y
