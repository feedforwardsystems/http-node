FROM node:alpine as base
WORKDIR /app

COPY package.json package-lock.json ./
RUN rm -rf node_modules && npm install --force
COPY . .
RUN npm run build

CMD ["node", "./dist/index.js"]