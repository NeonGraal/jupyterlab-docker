# install deps
apt-get update
apt-get install -y --no-install-recommends git python-pip python3 python3-pip python-dev build-essential

pip install --upgrade pip 


# clean up install cache
apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install jupyter
pip install notebook

git clone https://github.com/jupyterlab/jupyterlab.git
cd jupyterlab
npm install
pip install -e . # will take a long time to build everything
jupyter serverextension enable --py jupyterlab
