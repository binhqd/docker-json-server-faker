FROM node:latest
MAINTAINER REANTO IVANCIC <renato.ivancic@gmail.com>

# install npm packages
RUN npm install -g json-server
RUN npm install -g faker
RUN npm install -g lodash

# set environmental property for node modules 
ENV NODE_PATH /usr/local/lib/node_modules/

# set working path
WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
