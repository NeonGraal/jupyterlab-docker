apt-get update
apt-get install -yq --no-install-recommends \
    software-properties-common curl

add-apt-repository ppa:chronitis/jupyter
echo "deb http://ppa.launchpad.net/chronitis/jupyter/ubuntu artful main" >> /etc/apt/sources.list.d/chronitis-ubuntu-jupyter-bionic.list
echo "deb http://ppa.launchpad.net/chronitis/jupyter/ubuntu xenial main" >> /etc/apt/sources.list.d/chronitis-ubuntu-jupyter-bionic.list

curl -sL https://deb.nodesource.com/setup_11.x | bash -

apt-get install -yq --no-install-recommends \
    nodejs npm \
    irkernel \
    iruby

npm install -g ijavascript
ijsinstall
