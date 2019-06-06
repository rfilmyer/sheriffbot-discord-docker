# Use an official Node runtime as a parent image
FROM node:12-alpine

RUN apk add --no-cache git

RUN git clone "https://github.com/rfilmyer/sheriffbot-discord.git" /app

WORKDIR /app

RUN npm install

CMD ["node", "./app.js"]
