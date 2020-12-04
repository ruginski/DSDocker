#!/usr/bin/bash
echo "Starting DS-Notebook container"

docker run -d \
-p 8888:8888 \
-e JUPYTER_RUNTIME_DIR=/tmp \
-v "$PWD":/home/jovyan \
--name DS-Notebook \
DS-Notebook:latest

echo "Running containers at the momment:"

docker ps --all
