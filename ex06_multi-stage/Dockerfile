FROM node:18 AS build

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

#stage 2
FROM node:18-alpine AS run
WORKDIR /app

COPY --from=build /app/node_modules ./node_modules
COPY --from=build /app/server.js ./

EXPOSE 3000
CMD ["node", "server.js"]