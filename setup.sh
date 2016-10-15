REPO=http://cdn-fastly.deb.debian.org

# install deps

echo "deb $REPO/debian jessie main\ndeb $REPO/debian-security jessie/updates main" > /etc/apt/sources.list \

apt-get update
apt-get -yq dist-upgrade
apt-get install -yq --no-install-recommends \
    wget \
    bzip2 \
    ca-certificates \
    sudo \
    locales \
    git \
    python-pip python3 python3-pip python-dev \
    build-essential \
    libzmq3 libzmq3-dev
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

# set locale
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen && \
    locale-gen

# Install Tini
wget --quiet https://github.com/krallin/tini/releases/download/v0.10.0/tini && \
    echo "1361527f39190a7338a0b434bd8c88ff7233ce7b9a4876f3315c22fce7eca1b0 *tini" | sha256sum -c - && \
    mv tini /usr/local/bin/tini && \
    chmod +x /usr/local/bin/tini




# Create jovyan user with UID=1000 and in the 'users' group
useradd -m -s /bin/bash -N -u $NB_UID $NB_USER && \
    mkdir -p $PY_DIR && \
    chown $NB_USER $PY_DIR





# install jupyterlab
pip install jupyterlab widgetsnbextension
jupyter serverextension enable --py jupyterlab --sys-prefix




# # install jupyter
# pip install notebook

# git clone https://github.com/jupyterlab/jupyterlab.git
# cd jupyterlab
# npm install
# pip install -e . # will take a long time to build everything
# jupyter serverextension enable --py jupyterlab
