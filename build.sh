/usr/bin/git clone --branch 2.1.0 --depth 1 https://github.com/sdispater/pendulum.git
/usr/bin/curl --location https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py --output /root/get-poetry.py
/usr/local/bin/python /root/get-poetry.py
cd pendulum
/root/.poetry/bin/poetry build
