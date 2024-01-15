FROM debian:12-slim

ARG DEBIAN_USER
ARG USER_ID
ARG GROUP_ID

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    git \
    python3 \
    python3-venv \
    g++ \
    libgl1 \
    libglib2.0-0 \
    google-perftools \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -g ${GROUP_ID} ai && \
    useradd ${DEBIAN_USER} -u ${USER_ID} -g ${GROUP_ID} -ms /bin/bash

USER ${DEBIAN_USER}

RUN mkdir ~/.cache
