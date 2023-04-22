#!/bin/bash

username=danterolle

# Clone the two repositories
cp -r packages-filter .
cp -r packages-api .

# Source folder
src_folder="packages-filter/json"

# Destination folder
dest_folder="packages-api/"

cd packages-filter/ && go run ./main.go

cd ..

# Check if source folder exists
if [ -d "$src_folder" ]; then
  # Move source folder to the destination folder
  mv "$src_folder" "$dest_folder"
  echo "The folder '$src_folder' has been moved to '$dest_folder'."
else
  echo "The folder '$src_folder' does not exist."
fi

cd packages-api/ && go run ./main.go
