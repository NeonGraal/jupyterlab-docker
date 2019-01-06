apt-get update
apt-get install -yq --no-install-recommends \
    python-pip python3.7-dev

echo "Installing python 2.7 kernel"
python2 -m pip install -U pip setuptools wheel
python2 -m pip install ipykernel
python2 -m ipykernel install --user

echo "Installing python 3.7 kernel"
python3.7 -m pip install -U pip setuptools wheel
python3.7 -m pip install ipykernel
python3.7 -m ipykernel install --user --name python3.7 --display-name "Python 3.7"
