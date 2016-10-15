FROM: phusion/baseimage:0.9.18

MAINTAINER Marco Zocca, zocca.marco gmail

ENV SWDIR=/opt

COPY setup.sh ${SWDIR}/
WORKDIR ${SWDIR}

RUN ./setup.sh



EXPOSE 8888
    


RUN jupyter lab
