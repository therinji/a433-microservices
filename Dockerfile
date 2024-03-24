# Menggunakan base image Node.js versi 14
FROM node:14-alpine
# Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app
# Menyalin seluruh source code ke working directory di container
COPY . .
# Menentukan 
ENV PORT=3000 AMQP_URL="amqp://localhost:5672"
# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm i
# Ekspos bahwa port yang digunakan oleh aplikasi adalah 3000
EXPOSE 3000
# Saat container diluncurkan, jalankan server dengan perintah "npm start"
CMD [ "npm", "start" ]