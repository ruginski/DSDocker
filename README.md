# DS-Docker

Hello.
Here you can find the custom DS-Notebook dockerfile derived from the original jupyter/base-notebook, minimal-notebook and scipy-notebook, from <a href="https://github.com/jupyter/docker-stacks">jupyter/docker-stacks</a>.
<br>This is a simplified version of the above dockerfiles.

## Build the image
To build the image using this dockerfile, run the following Docker command:

```
docker build -t <repository-name> .
```

Run the bellow command:
```
docker images
```
...and there is your new image:
|REPOSITORY | TAG | IMAGE ID | CREATED | SIZE |
|-----------|-----|----------|---------|------|
|ds-notebook | latest | 97305ea4e656 | 29 minutes ago | 2.68GB |
<br>

## Start the container
After that you can use the Start-Container.sh bash script or the following Docker command to start the container:

```
docker run -d -p 8888:8888 -e JUPYTER_RUNTIME_DIR=/tmp -v "$PWD":/home/jovyan --name <name-your-container> <repository-name>:<tag>
```

Note the use of the "-v "$PWD":/home/jovyan". This will mount the current directory to /home/jovyan. This way, the data saved and changes made to the notebooks will be persisted on your local storage.

Check the runnig images:

```
docker ps --all
```
...and there it is:

| CONTAINER ID | IMAGE | COMMAND | CREATED | STATUS | PORTS | NAMES |
|-|-|-|-|-|-|-|
| a2433c8e9ff9 | ds-notebook:latest | "tini -g -- start-no…" | 4 seconds ago | Up Less than a second | 0.0.0.0:8888->8888/tcp | DS-Notebook