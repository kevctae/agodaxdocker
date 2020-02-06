FROM node:12-alpine
WORKDIR /app
COPY package.json /app
RUN yarn
COPY ./public /app/public
COPY ./src /app/src
CMD ["yarn", "start"]