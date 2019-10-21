FROM applbase:alpine

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json .

RUN apk add nodejs-current npm yarn

EXPOSE 8081
CMD [ "node", "server.js" ]
