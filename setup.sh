# install deps
apt-get update
apt-get -yq dist-upgrade
apt-get install -yq --no-install-recommends \
    wget \
    bzip2 \
    ca-certificates \
    sudo \
    git \
    python3-dev python3-pip \
    build-essential \
    libzmq5 libzmq5-dev \
    unzip \
    libsm6 \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-extra \
    texlive-fonts-recommended \
    texlive-generic-recommended \
    libxrender1 \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*


# Install Tini
wget --quiet https://github.com/krallin/tini/releases/download/v0.10.0/tini && \
    echo "1361527f39190a7338a0b434bd8c88ff7233ce7b9a4876f3315c22fce7eca1b0 *tini" | sha256sum -c - && \
    mv tini /usr/local/bin/tini && \
    chmod +x /usr/local/bin/tini


# Create lab user with UID=1000 and in the 'users' group
useradd -m -s /bin/bash -N -u $NB_UID $NB_USER && \
    mkdir -p $PY_DIR && \
    chown $NB_USER $PY_DIR
