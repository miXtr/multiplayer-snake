FROM node:latest

COPY package*.json ./

RUN npm install

COPY ./server .
COPY . .

EXPOSE 22222
CMD [ "node", "server.js" ]
