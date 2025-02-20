#!/bin/bash

set -e

export USER_ID=$(id -u)
export GROUP_ID=$(id -g)

docker compose --env-file .env -f .docker/docker-compose.yml $@
