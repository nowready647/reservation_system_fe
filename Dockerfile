FROM node:latest as build

WORKDIR /app

COPY package*.json ./

RUN #npm install

COPY . .

RUN npm run build

FROM nginx:latest

COPY --from=build app/dist/reservation_system_fe/* /usr/share/nginx/html/

COPY nginx.conf /etc/nginx/conf.d/default.conf

EXPOSE 80
