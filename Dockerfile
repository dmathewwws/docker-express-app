FROM node:4.2.6-wheezy

RUN apt-get update

ADD package.json /tmp/package.json
RUN cd /tmp && npm install
RUN mkdir -p /express-server && cp -a /tmp/node_modules /express-server/

ADD . /express-server

# Expose running port
EXPOSE 3000

WORKDIR /express-server

CMD ["npm", "start"]
