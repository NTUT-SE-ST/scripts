ARG PARENT_IMAGE
FROM $PARENT_IMAGE
ARG USE_GPU
ARG INSTALL_MPI

RUN apt-get -y update \
    && apt-get -y install \
    curl \
    cmake \
    default-jre \
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

COPY ./setup.py /root/code/setup.py
COPY ./stable_baselines/ /root/code/stable_baselines/
RUN \
    pip install --upgrade pip && \
    pip install --upgrade setuptools && \
    pip install virtualenv && \
    virtualenv $VENV --python=python3 && \
    . $VENV/bin/activate && \
    cd $CODE_DIR && \
    if [ "$USE_GPU" = "True" ]; then \
        TENSORFLOW_PACKAGE="tensorflow-gpu==1.14.0"; \
    else \
        TENSORFLOW_PACKAGE="tensorflow==1.14.0"; \
    fi; \
    pip install ${TENSORFLOW_PACKAGE} && \
    if [ "$INSTALL_MPI" = "True" ]; then \
        EXTRAS_REQUIRE="[mpi,tests]"; \
    else \
        EXTRAS_REQUIRE="[tests]"; \
    fi; \
    pip install -e .${EXTRAS_REQUIRE} && \
    rm -rf $HOME/.cache/pip && \
    rm -rf stable_baselines

RUN \
    pip install pynput && \
    rm -rf $HOME/.cache/pip 

ENV PATH=$VENV/bin:$PATH

CMD /bin/bash
