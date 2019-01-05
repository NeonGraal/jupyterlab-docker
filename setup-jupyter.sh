chown -R $NB_USER:users /home/$NB_USER/.jupyter

python3 -m pip install -U pip setuptools wheel

pip3 install jupyterlab widgetsnbextension

jupyter serverextension enable --py jupyterlab --sys-prefix