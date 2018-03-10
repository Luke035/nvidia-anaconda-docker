# nvidia-anaconda-docker
Docker container for running JUPYTER Notebook within an ANACONDA nvironment, exploiting NVIDIA-DOCKER for GPUs
The ANACONDA environment is also provided with:
1. tensorflow-gpu (latest version, 1.6.0 when buildt)
2. keras
3. tensorboard jupyter extension

### Requirements
1. NVIDIA driver (cuda-drivers, not whole cuda!) for your GPU
2. nvidia-docker installed
2. DOCKER

### Building Dockerfile
```
docker build -t nvidia-anaconda-docker <PATH_TO_DOCKERFILE_ROOT_PATH>
```

### Running container
```
nvidia-docker run -v <HOST_NOTEBOOK_DIR>:/tmp -p 8888:8888 nvidia-anaconda-docker
```

#### From [Dockerhub image](https://hub.docker.com/r/luke035/nvidia-anaconda-docker/)
```
nvidia-docker run -v <HOST_NOTEBOOK_DIR>:/tmp -p 8888:8888 luke035/nvidia-anaconda-docker
```

### Notes
Buildt image requires approximately 5GB of disk space. 

### Acknowledgments
1. [Nvidia docker](https://github.com/NVIDIA/nvidia-docker)
2. [Tensorflow GPU Docker](https://github.com/tensorflow/tensorflow/tree/master/tensorflow/tools/docker)
3. [Anaconda](https://github.com/ContinuumIO/docker-images)
4. [Jupyter tensorboard](https://github.com/lspvic/jupyter_tensorboard)
