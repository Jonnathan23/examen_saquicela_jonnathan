# Utiliza Debian como base
FROM debian:latest

RUN apt-get update && apt-get install -y nodejs npm

WORKDIR /app

COPY . /app

RUN npm install


RUN npm run build --prod

EXPOSE 80

CMD ["npm", "start"]