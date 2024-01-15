#!/bin/bash

export COMPOSE_PROJECT_NAME=stable-diffusion
export DEBIAN_USER=ai-user

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

docker compose -f .docker/docker-compose.yml $@
