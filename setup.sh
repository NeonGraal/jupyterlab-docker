sudo apt-get update
sudo apt-get install nodejs-legacy npm git pip3 python3

pip install notebook

git clone https://github.com/jupyterlab/jupyterlab.git
cd jupyterlab
npm install
pip install -e . # will take a long time to build everything
jupyter serverextension enable --py jupyterlab
