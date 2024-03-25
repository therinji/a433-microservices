# Menggunakan base image Node.js versi 14-alpine
FROM node:14-alpine
# Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app
# Menyalin seluruh source code ke working directory di container
COPY . .
# Menentukan environment variable
ENV PORT=3001 AMQP_URL="amqp://localhost:5672"
# Menginstal dependencies untuk production dan kemudian build aplikasi
RUN npm i
# Ekspos bahwa port yang digunakan oleh aplikasi adalah 3001
EXPOSE 3001
# Saat container diluncurkan, jalankan server dengan perintah "npm start"
CMD [ "node", "index.js"]