FROM node:18 as dev

WORKDIR /app

COPY package*.json ./

RUN npm install

ADD . .

EXPOSE 3000

CMD ["npm", "run", "start:dev"]

FROM node:18 as testing

WORKDIR /app

COPY package*.json ./

RUN npm install

ADD . .

EXPOSE 3000

CMD ["npm", "run", "test"]