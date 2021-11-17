FROM node:14.17.6-alpine AS base-node
WORKDIR /app
COPY ./package.json .
RUN yarn install

FROM base-node AS dev
RUN apk upgrade && apk add git bash
COPY . .

EXPOSE 9000
ENV PORT 9000