ACCOUNT = "neongraal"
PROJECT = "jupyterlab-docker"
TAG = ${ACCOUNT}/${PROJECT}

.DEFAULT_GOAL := help

help:
	@echo "Use \`make <target>' where <target> is one of"
	@echo "  help     to display this help message"
	@echo "  build    to build the docker image"
	@echo "  run      run JupyterLab server"


build:
	docker build -t ${TAG} .


run:
	docker run --rm -it -p 8888:8888 ${TAG}


up:
	docker-compose -p jupyterlab up -d

down:
	docker-compose -p jupyterlab down
