# install deps
apt-get update
apt-get install -y git python-pip python3 python3-pip python-dev build-essential libzmq3 libzmq3-dev

# pip install --upgrade pip

# TINI (Jupyter dep)
ENV TINI_VER v0.9.0
ENV TINI_SHA faafbfb5b079303691a939a747d7f60591f2143164093727e870b289a44d9872

wget --quiet https://github.com/krallin/tini/releases/download/${TINI_VER}/tini && \
    echo "${TINI_SHA} *tini" | sha256sum -c - && \
    mv tini /usr/local/bin/tini && \
    chmod +x /usr/local/bin/tini


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
