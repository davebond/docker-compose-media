FROM ubuntu:14.04

# System packages
RUN apt-get update
RUN apt-get install -y curl

# Download and install plex
RUN curl -o /tmp/plex.deb https://downloads.plex.tv/plex-media-server/0.9.11.16.958-80f1748/plexmediaserver_0.9.11.16.958-80f1748_amd64.deb
RUN dpkg -i /tmp/plex.deb
# Remove install files
RUN rm /tmp/plex.deb

# Expose port
EXPOSE 32400

# Set ENV, remove PID and run
ENV HOME /config
CMD rm -f $HOME/Library/Application\ Support/Plex\ Media\ Server/plexmediaserver.pid && /usr/sbin/start_pms