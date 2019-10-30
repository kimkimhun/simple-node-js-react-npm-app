#!/bin/bash
set -e

TAG=$(git describe --tags --always )
docker build -t veckenz/simple-react:$TAG .
docker push veckenz/simple-react:$TAG
docker rmi veckenz/simple-react:$TAG