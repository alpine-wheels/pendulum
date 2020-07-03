#!/bin/sh

set -e

# install os dependencies
apk add --no-cache curl git

# find version
PENDULUM_VERSION="$(awk -F '==' '/pendulum/ { print $2 }' requirements.txt)"

# check out source code
rm -rf pendulum
git config --global advice.detachedHead false
git clone --branch "${PENDULUM_VERSION}" --depth 1 https://github.com/sdispater/pendulum.git

# install poetry
curl --location https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py --output /root/get-poetry.py
python /root/get-poetry.py

# build
cd pendulum || exit
/root/.poetry/bin/poetry build
