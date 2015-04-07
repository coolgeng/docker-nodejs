# VERSION 0.2
# DOCKER-VERSION 0.3.4
# To build:
# 1. Install docker (http://docker.io)
# 2. Checkout source: git@github.com:coolgeng/docker-nodejs.git
# 3. Build container: docker build .

FROM    ubuntu:latest

# Install Node.js and npm
RUN    apt-get -y update
RUN    apt-get -y install nodejs
RUN    apt-get -y install npm


# Bundle app source
ADD . /src
# Install app dependencies
RUN cd /src; npm install

EXPOSE  8080
CMD ["nodejs", "/src/index.js"]