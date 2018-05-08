# Install Ubuntu 14.04 with CUDA 8
FROM kaixhin/cuda-caffe:8.0

# Install miniconda3
FROM continuumio/miniconda3

RUN apt-get update && apt-get install -y sudo

# Install pip, python, nano and all Ubuntu requirements
RUN sudo apt-get update && sudo apt-get -y upgrade
RUN sudo apt-get install -y python-pip \
    nano \
    unzip \
    build-essential cmake pkg-config \
    libx11-dev libatlas-base-dev \
    libboost-all-dev

# Add fast-style-transfer to image
RUN cd /root/ && mkdir fast-style-transfer
COPY ./ /root/fast-style-transfer

# Set working directory to fast-style-transfer
WORKDIR /root/fast-style-transfer

# Install virtualenv
RUN pip install virtualenv
RUN virtualenv env
RUN /bin/bash -c "source env/bin/activate \
    && pip install -r requirements.txt"
# Run setup if you want to train models
# RUN ./setup.sh