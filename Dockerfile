FROM nvidia/cuda:9.0-cudnn7-runtime-ubuntu16.04

RUN apt-get update && apt-get install -y \
	wget \
	vim \
	bzip2

#Install MINICONDA
RUN wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh && \
	/bin/bash Miniconda.sh -b -p /opt/conda && \
	rm Miniconda.sh

ENV PATH /opt/conda/bin:$PATH

#Install ANACONDA Environment
RUN conda create -y -n jupyter_env python=3.6 anaconda && \
	/opt/conda/envs/jupyter_env/bin/pip install tensorflow-gpu keras jupyter-tensorboard

#Launch JUPYTER COMMAND
CMD /opt/conda/envs/jupyter_env/bin/jupyter notebook --ip=* --no-browser --allow-root --notebook-dir=/tmp


#How to launch: nvidia-docker run -ti --entrypoint /bin/bash nvidia-anaconda-docker
#Notebook dir in in /tmp, map it with host notebook_dir
