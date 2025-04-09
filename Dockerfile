FROM node:20

WORKDIR /app

COPY package*.json ./

RUN npm install -g pm2
RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "run", "start"]

