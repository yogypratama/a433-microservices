# Menggunakan base image Node.js versi 14-alpine
FROM node:14-alpine
# Menentukan bahwa working directory untuk container adalah /app
WORKDIR /app
# Menyalin seluruh source code ke working directory di container
COPY . .
# Menginstal dependencies
RUN npm install
# Environment variable untuk rabbitmq
ENV AMQP_URL="amqp://rabbitmq:5672"
# Mengekspos atau membuka port pada container
EXPOSE 3001
# Mengeksekusi perintah untuk menjalankan aplikasi web (node dan index.js)
CMD ["node", "index.js"]