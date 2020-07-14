#!/bin/sh

set -e

# install os dependencies
apk add --no-cache gcc libffi-dev musl-dev openssl-dev

# build
pip install --extra-index-url https://alpine-wheels.github.io/index/ poetry
pip wheel --no-build-isolation --no-deps --requirement requirements.txt
