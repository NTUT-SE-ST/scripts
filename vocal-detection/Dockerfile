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
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

ENV CODE_DIR /root/code
ENV VENV /root/venv

COPY ./definitions.py /root/code/env/definitions.py
RUN \
    pip install virtualenv && \
    virtualenv $VENV --python=python3 && \
    . $VENV/bin/activate && \
    pip install --upgrade pip && \
    pip install tensorflow-gpu==1.14.0 && \
    pip install keras && \
    python && \
    import sys && \
    sys.path.append('/root/code/env/') && \
    exit() && \
    rm -rf $HOME/.cache/pip

ENV PATH=$VENV/bin:$PATH

CMD /bin/bash
