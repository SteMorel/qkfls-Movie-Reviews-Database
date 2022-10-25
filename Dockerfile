FROM node:12-alpine

COPY views /app/views
COPY package.json /app
COPY server.js /app
COPY .env /app


RUN cd /app; npm install

ENV NODE_ENV production
ENV PORT 8080
EXPOSE 8080

WORKDIR /app
CMD [ "npm", "start" ]
