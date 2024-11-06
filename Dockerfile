FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME Cluster0
ENV MONGODB_CLUSTER_ADDRESS cluster0.nd8bo.mongodb.net
ENV MONGODB_USERNAME aymen
ENV MONGODB_PASSWORD nU3EsPQX6sSOzQhs

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]