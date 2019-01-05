apt-get update
apt-get install -yq --no-install-recommends \
    python-pip python3.7-dev \
    software-properties-common

echo "Installing python 2.7 kernel"
python2 -m pip install -U pip setuptools wheel
python2 -m pip install ipykernel

echo "Installing python 3.7 kernel"
python3.7 -m pip install -U pip setuptools wheel
python3.7 -m pip install ipykernel
python3.7 -m ipykernel install --user --name python3.7 --display-name "Python 3.7"

chown -R $NB_USER:users /home/$NB_USER/.jupyter /home/$NB_USER/.local
apt-get install -yq --no-install-recommends -f
apt-get clean
rm -rf /var/lib/apt/lists/*
