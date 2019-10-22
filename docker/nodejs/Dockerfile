FROM alpdemo:base AS builder

WORKDIR /usr/src/app

FROM node:9-alpine

# Install deps
COPY ./package* ./
RUN npm install && \
    npm cache clean --force

COPY . .

# Expose ports (for orchestrators and dynamic reverse proxies)
EXPOSE 3000

USER node

# Start the app
CMD npm start
