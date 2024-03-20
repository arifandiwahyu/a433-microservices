#Base image untuk Node.js 14
FROM node:14

#Letak Working directory untuk container
WORKDIR /app

#Mengcopy seluruh source code ke working directory
COPY . .

#Environment variabel untuk production mode dan database host
ENV NODE_ENV=production DB_HOST=item-db

#Menginstal dependencies untuk production dan menjalankan aplikasi
RUN npm install --production --unsafe-perm && npm run build

#Mengekspos port 8080 untuk aplikasi
EXPOSE 8080

#Menjalankan perintah "npm start" ketika container dijalankan.
CMD ["npm", "start"]
