#!/bin/bash

# Navigate to the folder of this script.
cd "$(dirname "$0")"

# Checks if "scripts" folder exists.
if [ -d "./scripts/" ]; then 
    # Deletes the "scripts" folder with all its contents.
    rm -r ./scripts/
fi
# Creates a new empty "scripts" folder.
mkdir ./scripts/

# Executes the file "projectorrays" for the "files" folder and exports all results in the "scripts" folder.
./projectorrays decompile ./files/ --dump-scripts -o ./scripts/

# Checks if "src" folder exists.
if [ -d "./src/" ]; then
    # Deletes the "src" folder with all its contents.
    rm -r ./src/
fi
# Creates a new empty "src" folder.
mkdir ./src/

# Checks if "src" folder exists.
mv ./scripts/*.* ./src/
