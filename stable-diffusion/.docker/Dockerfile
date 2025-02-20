FROM debian:12-slim
# FROM nvidia/cuda:12.3.1-runtime-ubuntu20.04

ARG USER_ID
ARG GROUP_ID

RUN apt-get update && apt-get install -y --no-install-recommends \
    wget \
    git \
    bc \
    python3 \
    python3-venv \
    g++ \
    libgl1 \
    libglib2.0-0 \
    google-perftools \
    && rm -rf /var/lib/apt/lists/*

RUN groupadd -g ${GROUP_ID} ai && \
    useradd ai-user -u ${USER_ID} -g ${GROUP_ID} -ms /bin/bash

USER ai-user

RUN mkdir ~/.cache
