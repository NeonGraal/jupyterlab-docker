FROM: phusion/baseimage:0.9.18

MAINTAINER Marco Zocca, zocca.marco gmail

COPY setup.sh ${SWDIR}/
WORKDIR ${SWDIR}

RUN ./setup.sh

EXPOSE 8888
    
    
