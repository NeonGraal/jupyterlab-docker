# Debian Jessie image released 2016 May 03.
FROM ubuntu:18.04

LABEL Author="Struan Judd"

ENV SWDIR=/opt

ENV PY_DIR /opt/python
ENV PATH $PY_DIR/bin:$PATH

ENV SHELL /bin/bash
ENV NB_USER lab
ENV NB_UID 1000
ENV HOME /home/$NB_USER
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

USER root

ENV DEBIAN_FRONTEND noninteractive

WORKDIR ${SWDIR}

COPY setup.sh ${SWDIR}/
RUN ./setup.sh && rm -f setup.sh

USER $NB_USER

# Setup lab home directory
RUN mkdir /home/$NB_USER/work && \
    mkdir /home/$NB_USER/.jupyter && \
    echo "cacert=/etc/ssl/certs/ca-certificates.crt" > /home/$NB_USER/.curlrc

USER root

# install jupyterlab
COPY jupyter_notebook_config.py /home/$NB_USER/.jupyter/
COPY setup-jupyter.sh ${SWDIR}/
RUN ./setup-jupyter.sh && rm -f setup-jupyter.sh

# install kernels
COPY setup-kernels.sh ${SWDIR}/
RUN ./setup-kernels.sh && rm -f setup-kernels.sh

EXPOSE 8888
WORKDIR /home/$NB_USER/work

# Configure container startup
ENTRYPOINT ["tini", "--"]
CMD ["start-notebook.sh"]

# Add local files as late as possible to avoid cache busting
COPY start*.sh /usr/local/bin/

# Switch back to lab to avoid accidental container runs as root
USER $NB_USER
