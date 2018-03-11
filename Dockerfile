FROM node:carbon-slim

LABEL author="Joseph Niel Tuazon"

WORKDIR /app
COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 8080
CMD [ "npm", "start" ]
