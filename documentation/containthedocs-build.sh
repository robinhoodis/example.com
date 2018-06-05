#!/usr/bin/env bash

set -x

COMMAND="make -C docs html"

. ./containthedocs-image

#exec docker run --rm -it \
#  -v "$PWD":"$PWD" --workdir "$PWD" \
#  ${DOCKER_RUN_ARGS} \
#  -e "LOCAL_USER_ID=root" \
#  ${DOC_IMG} ${COMMAND}

exec docker run --rm -it \
  -v "$PWD":"$PWD" --workdir "$PWD" \
  ${DOCKER_RUN_ARGS} \
  -e  LOCAL_USER_ID=0 \
  ${DOC_IMG} ${COMMAND}
