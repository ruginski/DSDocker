#!/usr/bin/bash
echo "Building new image"

docker build -t ds-notebook .

echo "List of images"
docker images
