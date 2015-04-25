FROM ubuntu:14.04

# NZBGET version
ENV VERSION 14.2

# Enabled restricted packages
RUN sed -i 's/restricted$/restricted multiverse/' /etc/apt/sources.list

# System packages
RUN apt-get update
RUN apt-get install -y nzbget wget unrar unzip p7zip

# # Download and unpack NZBGET
# ADD http://downloads.sourceforge.net/project/nzbget/nzbget-stable/$VERSION/nzbget-$VERSION.tar.gz /tmp/nzbget.tar.gz
# RUN tar xf /tmp/nzbget.tar.gz
# # Configure and install NZBGET
# RUN cd /nzbget-$VERSION && \
#     ./configure --with-tlslib=OpenSSL && \
#     make && \
#     make install
# # Remove install files
# RUN rm -rf /nzbget-$VERSION && \
#     rm /tmp/nzbget.tar.gz

# Expose the port for NZBGET
EXPOSE 6789

# Add start.sh
ADD start.sh /start.sh
RUN chmod +x /start.sh

# Expose start command
CMD ["/start.sh"]