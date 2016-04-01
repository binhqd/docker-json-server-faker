FROM node:latest
MAINTAINER Christian Lück <christian@lueck.tv>

RUN npm install -g json-server
RUN npm install -g faker
RUN npm install -g lodash
RUN export NODE_PATH=/usr/local/lib/node_modules

WORKDIR /data
VOLUME /data

EXPOSE 80
ADD run.sh /run.sh
ENTRYPOINT ["bash", "/run.sh"]
CMD []
