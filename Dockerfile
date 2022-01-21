FROM node:14
EXPOSE 3000
WORKDIR /usr/src/app
COPY server/. /usr/src/app
RUN npm install
COPY game /usr/src/app/game/
CMD npm run start