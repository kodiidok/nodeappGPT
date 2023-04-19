FROM node:latest
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
RUN npm test
ENV PORT=3000
EXPOSE 3000
CMD [ "node", "server/demo.js" ]