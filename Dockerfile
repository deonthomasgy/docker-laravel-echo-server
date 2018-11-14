FROM node:8.12.0-jessie

WORKDIR /app
COPY package.json /app
RUN npm install
EXPOSE 6001

ENTRYPOINT ["/app/node_modules/.bin/laravel-echo-server"]
