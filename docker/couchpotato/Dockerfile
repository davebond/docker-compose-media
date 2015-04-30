FROM ubuntu:14.04

# Enabled restricted packages
RUN sed -i 's/restricted$/restricted multiverse/' /etc/apt/sources.list

# System packages
RUN apt-get update
RUN apt-get install -y git-core python2.7 unrar

# Clone couchpotato
RUN git clone -b yify-provider https://github.com/davebond/CouchPotatoServer.git /couchpotato

# Add start.sh
ADD start.sh /start.sh
RUN chmod +x /start.sh

# Expose port
EXPOSE 5050

# Start command
CMD ["/start.sh"]