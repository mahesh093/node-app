FROM node:18.16.0-alpine3.17
RUN mkdir -p /Users/mlekhwa/Desktop/node/dockerNodeApp
WORKDIR /Users/mlekhwa/Desktop/node/dockerNodeApp
COPY src/package.json src/package-lock.json .
RUN npm install
COPY src/ .
EXPOSE 3000
CMD [ "node", "app"]