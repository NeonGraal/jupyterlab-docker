# install deps
sudo apt-get update
sudo apt-get install -y --no-install-recommends nodejs-legacy npm git python-pip python3 python3-pip python-dev build-essential

sudo pip install --upgrade pip 

npm install npm -g

# clean up install cache
apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# install jupyter
pip install notebook

git clone https://github.com/jupyterlab/jupyterlab.git
cd jupyterlab
npm install
pip install -e . # will take a long time to build everything
jupyter serverextension enable --py jupyterlab
