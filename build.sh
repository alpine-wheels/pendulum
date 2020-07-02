PENDULUM_VERSION="$(/usr/bin/awk -F '==' '/pendulum/ { print $2 }' requirements.txt)"
/usr/bin/git clone --branch "${PENDULUM_VERSION}" --depth 1 https://github.com/sdispater/pendulum.git
/usr/bin/curl --location https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py --output /root/get-poetry.py
/usr/local/bin/python /root/get-poetry.py
cd pendulum || exit
/root/.poetry/bin/poetry build
