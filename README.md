# jupyterlab-docker


Travis CI: [![Build Status](https://travis-ci.org/ocramz/jupyterlab-docker.svg?branch=master)](https://travis-ci.org/ocramz/jupyterlab-docker)


Container-based installation of JupyterLab 


## Instructions (setup)


First, note down the IP address of the currently running Docker machine (which is called `dev` in this example) with 

    docker-machine ip dev


1. Build the image :

        make build

   After it completes, you can see the list of locally available Docker images with the command `docker images`



2. Run the image :
  
        make run


3. Point your browser to the IP address of the Docker machine found initially, and port 8888, i.e.

        <docker-machine-ip>:8888

   where `<docker-machine-ip>` usually starts with `192.168.` 

A Jupyter session should appear in the browser at this point. Up and running !