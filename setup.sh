# install deps
apt-get update
apt-get install -y git python-pip python3 python3-pip python-dev build-essential libzmq3 libzmq3-dev

# pip install --upgrade pip 


# clean up install cache
apt-get clean && apt-get purge && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


pip install jupyterlab widgetsnbextension
jupyter serverextension enable --py jupyterlab --sys-prefix




# # install jupyter
# pip install notebook

# git clone https://github.com/jupyterlab/jupyterlab.git
# cd jupyterlab
# npm install
# pip install -e . # will take a long time to build everything
# jupyter serverextension enable --py jupyterlab
