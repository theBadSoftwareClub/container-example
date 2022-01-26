FROM node:14
EXPOSE 3000
WORKDIR /usr/src/app
COPY server/. /usr/src/app

RUN npm update
RUN npm install

RUN apt-get update
RUN apt install sa-exim -y
RUN apt-get install iputils-ping -y
RUN apt-get install nmap -y

COPY game /usr/src/app/game/
CMD npm run start