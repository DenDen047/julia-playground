#!/bin/bash

CURRENT_PATH=$(pwd)
IMAGE_NAME="denden047/julia_gpu"

docker build -t ${IMAGE_NAME} . && \
docker run -it --rm \
    --gpus 1 \
    -p 1234:1234 \
    -v $(pwd):/workdir \
    -w /workdir \
    ${IMAGE_NAME} \
    /usr/local/bin/julia -e 'using Pluto; Pluto.run(host="0.0.0.0")'
