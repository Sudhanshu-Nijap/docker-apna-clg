FROM node

WORKDIR /testapp

ENV MONGO_DB_USERNAME=admin \
    MONGO_DB_PASSWORD=sudhu

COPY package*.json ./
RUN npm install

COPY . .

CMD ["node", "server.js"]