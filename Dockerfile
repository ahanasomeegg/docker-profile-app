FROM node:20-alpine

ENV MONGO_USER='admin' \
 MONGO_PASS='secret' \
 MONGO_HOST='localhost' \
 MONGO_PORT=27017 \
 PORT=3000

EXPOSE 3000

RUN mkdir -p /home/app
WORKDIR /home/app

COPY ./app .
RUN npm install

CMD ["node", "server.js"]