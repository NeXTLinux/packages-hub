#!/bin/bash

username=danterolle

cp -r packages-filter .
cp -r packages-api .

# Build the Go applications
cd packages-filter/ && go build -o packages-filter
cd ../packages-api/ && go build -o packages-api

# Start docker-compose
docker-compose up
