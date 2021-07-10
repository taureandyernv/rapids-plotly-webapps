#!/usr/bin/env bash

RAPIDS_IMAGE='rapidsai/rapidsai-dev:21.06-cuda11.2-devel-ubuntu20.04-py3.8'
CODE_PATH="$(pwd)"


function version {
    echo "$@" | awk -F. '{ printf("%03d%03d%03d\n", $1,$2,$3); }';
}


PARAM_RUNTIME="--runtime=nvidia"
DOCKER_VERSION_WITH_GPU_SUPPORT="19.03.0"
if [ -x "$(command -v docker)" ]; then
    DOCKER_VERSION=$(docker version | grep -i version | head -1 | awk '{print $2'})
    if [ "$(version "$DOCKER_VERSION_WITH_GPU_SUPPORT")" -gt "$(version "$DOCKER_VERSION")" ]; then
        PARAM_RUNTIME="--gpus all"
    fi
else
    echo 'Please install docker'
    exit 1
fi

DOCKER_CMD="docker run \
    --rm \
    --network host \
    ${PARAM_RUNTIME} \
    -p ${PLOTLY_PORT}:5000 \
    -v ${CODE_PATH}:/workspace \
    -u $(id -u ${USER}):$(id -g ${USER}) \
    --shm-size=1g \
    --ulimit memlock=-1 \
    --ulimit stack=67108864 \
    -e HOME=/workspace \
    -w /workspace"

${DOCKER_CMD} -it ${RAPIDS_IMAGE} jupyter-lab --no-browser \
    --port=8888 \
    --ip=0.0.0.0 \
    --notebook-dir=/workspace \
    --NotebookApp.password=\"\" \
    --NotebookApp.token=\"\" \
    --NotebookApp.password_required=False
