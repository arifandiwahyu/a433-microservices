#Mengambil base image Node.js 21 berbasis alpine linux
FROM node:18-alpine

#Menentukan direktori kerja dari container pada /app
WORKDIR /app

#Menyalin source code ke direktori kerja di container
COPY package*.json ./

#Menginstall bash
RUN apk add --no-cache bash

#Mengunduh file wait-for-it.sh dan menyimpannya pada folder /bin
RUN wget -O /bin/wait-for-it.sh https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh

#Mengubah hak akses wait-for-it.sh agar dapat dieksekusi
#Shell script wait-for-it.sh berfungsi untuk memastikan RabbitMQ server telah berjalan terlebih dahulu
RUN chmod +x /bin/wait-for-it.sh

#Menginstal dependencies
RUN npm ci

#Menyalin file js ke direktori kerja
COPY ./*.js ./

#Menetapkan variabel MQRabbit
ENV AMQP_URL="amqp://rabbitmq:5672"

#Mengekspos port yang digunakan aplikasi yaitu 3001
EXPOSE 3001

#Menjalankan server saat container diluncurkan
CMD ["node", "index.js"]