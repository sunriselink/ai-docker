#!/bin/bash

target=webui
version=v1.10.1

if ! [[ -d ${target} ]]; then
    git clone --branch ${version} https://github.com/AUTOMATIC1111/stable-diffusion-webui ${target}
fi
