FROM alpdemo:base AS builder

FROM node:9-alpine

COPY . /usr/src/app

WORKDIR /usr/src/app

RUN apk --no-cache --virtual build-dependencies add \
    python \
    make \
    g++ \
    && npm install \
    && apk del build-dependencies

EXPOSE 3000

USER node

CMD [ "npm", "start" ]
