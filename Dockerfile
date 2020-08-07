FROM node:10

# Create app directory
WORKDIR /app

COPY package.json /app
COPY package-lock.json /app

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

COPY ./src  /app

EXPOSE 3000
CMD [ "node", "app.js" ]