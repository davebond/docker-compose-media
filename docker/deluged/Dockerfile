FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y software-properties-common	
RUN add-apt-repository ppa:deluge-team/ppa
RUN apt-get update
RUN apt-get install -y deluge deluged deluge-webui

CMD deluge --ui=web