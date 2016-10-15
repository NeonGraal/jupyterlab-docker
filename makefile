ACCOUNT = "ocramz"
PROJECT = "jupyterlab-docker"
TAG = ${ACCOUNT}/${PROJECT}

.DEFAULT_GOAL := help

help:
	@echo "Use \`make <target>' where <target> is one of"
	@echo "  help     to display this help message"
	@echo "  build    to build the docker image"
	@echo "  pull     to retrieve the image from the docker registry" 


pull:
	docker pull ${TAG}


build:
	docker build -t ${TAG} .

# nb:
# 	docker run --rm -it -p 8888:8888 ${TAG} 
