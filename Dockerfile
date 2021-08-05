FROM node:14-alpine

WORKDIR /app
COPY package.json .

RUN npm install

COPY . .

EXPOSE 8082/tcp

CMD ["npm", "start"]
