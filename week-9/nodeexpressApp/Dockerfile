FROM node:14 AS build-stage

WORKDIR /app

COPY package*.json .

RUN npm install express

COPY . .

FROM node:14-alpine AS build-release-stage

WORKDIR /app

COPY --from=build-stage /app .

EXPOSE 7000

CMD ["node", "app.js"]