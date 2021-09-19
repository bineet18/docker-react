FROM node:alpine

WORKDIR '/app'

EXPOSE 80

COPY package.json .

RUN npm install

COPY . .

RUN ["npm", "run", "start"]