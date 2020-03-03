ARG PARENT_IMAGE
FROM $PARENT_IMAGE

RUN apt-get -y update \
    && apt-get -y install \
    curl \
    cmake \
    git \
    jq \
    python-dev \
    python-pip \
    python3-dev \
    libfontconfig1 \
    libglib2.0-0 \
    libsm6 \
    libxext6 \
    libxrender1 \
    libopenmpi-dev \
    zlib1g-dev \
    libsndfile1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV VENV /root/venv

RUN \
    mkdir /root/code && \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install virtualenv && \
    virtualenv $VENV --python=python3 && \
    . $VENV/bin/activate && \
    pip install tensorflow-gpu==1.4.0 && \
    pip install keras==2.1.3 && \
    pip install matplotlib && \
    pip install librosa && \
    rm -rf $HOME/.cache/pip

ENV PATH=$VENV/bin:$PATH
ENV PYTHONPATH='/root/code/':$PATH

CMD /bin/bash
