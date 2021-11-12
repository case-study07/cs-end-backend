FROM node:14.17.6-alpine as base-node
RUN apk upgrade && apk add git bash
WORKDIR /app

FROM base-node
RUN apk add yarn
COPY ./package.json .
RUN yarn install
COPY . .
