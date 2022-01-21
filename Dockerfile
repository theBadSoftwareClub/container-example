FROM node:current-slim
#RUN mkdir -p /usr/src/app
EXPOSE 3000
COPY ./game /usr/src/app/game
WORKDIR /usr/src/app
COPY ./server/package.json /usr/src/app
RUN npm install
COPY ./server .
CMD npm run start