FROM node:4.2.6-wheezy

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN apt-get update

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

EXPOSE 3000

CMD [ "npm", "start" ]
