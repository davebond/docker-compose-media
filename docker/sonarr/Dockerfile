FROM ubuntu:14.04

# Add repo
RUN apt-get update
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys FDA5DFFC
RUN echo "deb http://apt.sonarr.tv/ master main" | sudo tee /etc/apt/sources.list.d/sonarr.list

# System packages
RUN apt-get update
RUN apt-get install -y nzbdrone

# Expose port
EXPOSE 8989

# CMD
CMD mono /opt/NzbDrone/NzbDrone.exe