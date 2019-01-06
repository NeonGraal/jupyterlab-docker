chown -R $NB_USER:users /home/$NB_USER
apt-get install -yq --no-install-recommends -f
apt-get clean
rm -rf /var/lib/apt/lists/*
