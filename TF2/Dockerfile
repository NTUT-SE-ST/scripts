FROM tensorflow/tensorflow:latest-gpu-py3

RUN apt-get -y update && \
    apt-get -y install libsm6 \
    libxrender1 \
    libxext-dev && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

RUN \
    pip install pillow && \
    pip install numpy && \
    pip install opencv-python && \
    rm -rf $HOME/.cache/pip

CMD /bin/bash
