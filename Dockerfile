# syntax=docker/dockerfile:1

FROM node:14-slim
ENV NODE_ENV=production

WORKDIR /app

COPY ["package*.json", "./"]

RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]