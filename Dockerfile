#Mengambil base image Node.js 21 berbasis alpine linux
FROM node:18-alpine

#Menentukan direktori kerja dari container pada /app
WORKDIR /app

#Menyalin source code ke direktori kerja di container
COPY . .

#Menginstal dependencies
RUN npm install

#Menetapkan variabel MQRabbit
ENV AMQP_URL="amqp://rabbitmq:5672"

#Mengekspos port yang digunakan aplikasi yaitu 3000
EXPOSE 3000

#Menjalankan server saat container diluncurkan
CMD ["node", "index.js"]