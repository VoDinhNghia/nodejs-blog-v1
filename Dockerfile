FROM node:12.19.0
WORKDIR /usr/src/app
COPY packge*.json ./
RUN npm install
COPY . .
EXPOSE 8888
CMD [ "node", "index.js" ]