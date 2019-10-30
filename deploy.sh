#!/bin/bash
set -e

TAG=$(git describe --tags --always )
export TAG=$TAG
docker-compose down
docker-compose up -d