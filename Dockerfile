FROM node:14
EXPOSE 3000
WORKDIR /usr/src/app
COPY server/. /usr/src/app
RUN apt-get update \
    # && apt install nodejs npm -y \
    && apt install sa-exim -y \
    && apt-get install iputils-ping -y \
    && apt-get install nmap -y \
    && npm install
COPY game /usr/src/app/game/
CMD npm run start